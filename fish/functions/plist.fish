# Defined in - @ line 0
function plist --description 'alias plist=exa -d -1 $PWD/*'
	exa -d -1 $PWD/* $argv;
end
