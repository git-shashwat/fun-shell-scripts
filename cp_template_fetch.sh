code_file="main.cpp"

if [[ ! -f "$code_file" ]];
then
	template=$(curl https://raw.githubusercontent.com/git-shashwat/Competitive-Programming/master/Template/temp.cpp)
	>"$code_file"
	echo "$template" > "$code_file"
fi

nano "$code_file"
