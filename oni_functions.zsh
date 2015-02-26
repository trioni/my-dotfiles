# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* *;
	fi;
}

# Create a new directory and enter it
function mkd() {
        mkdir -p "$@" && cd "$@";
}

# Create a .tar.gz archive, using `zopfli`, `pigz` or `gzip` for compression
function targz() {
	local tmpFile="${@%/}.tar";
	tar -cvf "${tmpFile}" --exclude=".DS_Store" "${@}" || return 1;

	size=$(
		stat -f"%z" "${tmpFile}" 2> /dev/null; # OS X `stat`
		stat -c"%s" "${tmpFile}" 2> /dev/null # GNU `stat`
	);

	local cmd="";
	if (( size < 52428800 )) && hash zopfli 2> /dev/null; then
		# the .tar file is smaller than 50 MB and Zopfli is available; use it
		cmd="zopfli";
	else
		if hash pigz 2> /dev/null; then
			cmd="pigz";
		else
			cmd="gzip";
		fi;
	fi;

	echo "Compressing .tar using \`${cmd}\`…";
	"${cmd}" -v "${tmpFile}" || return 1;
	[ -f "${tmpFile}" ] && rm "${tmpFile}";
	echo "${tmpFile}.gz created successfully.";
}

# Use Git's colored diff when available
hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index --color-words "$@";
	}
fi;

# Create a data URL from a file
function dataurl() {
	local mimeType=$(file -b --mime-type "$1");
	if [[ $mimeType == text/* ]]; then
		mimeType="${mimeType};charset=utf-8";
	fi
	echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')";
}

# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1*c }

# Install a npm package and save the exact version number to the package.json under devDependencies
function npmi() {
    echo -n "Package to install: "
    read text
    echo "Running command: npm install $text --save-dev --save-exact"
    npm install $text --save-dev --save-exact
}

function resize() {
    FILE=$1

    echo -n "Width: "
    read w
    echo -n "Height: "
    read h
    if [ -s "$FILE" ]; then
        echo "Resizing SINGLE image: $FILE"
        if [ $h ]; then
            echo "Resizing to $w x $h"
            sips -Z $w -c $h $w $FILE
        else
            echo "Resizing width to $w"
            sips -Z $w $FILE
        fi
    else
        echo "File $FILE does not exist. Targeting all jpg in current folder..."
        if [ $h ]; then
            echo "Resizing to $w x $h"
            sips -Z $w -c $h $w *.jpg
        else
            echo "Resizing width to $w"
            sips -Z $w *.jpg
        fi
    fi    
}

