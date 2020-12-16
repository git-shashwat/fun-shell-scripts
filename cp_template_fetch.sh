function gocp() {
	cd ~/Desktop/cp
}

function createFolder() {
	problem_code="$1"
	
	[ ! -d "$problem_code" ] && mkdir $problem_code
		
	cd $problem_code
	
	createFile
}


function createFile() {
	code_file="main.cpp"

	if [ ! -f "$code_file" ];
	then
		template=$(curl https://raw.githubusercontent.com/git-shashwat/Competitive-Programming/master/Template/temp.cpp)
#		>"$code_file"
		echo "$template" > "$code_file"
	fi
	
	nohup gedit "$code_file" >/dev/null &
}

gocp
createFolder $1
