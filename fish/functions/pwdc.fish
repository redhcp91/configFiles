# Defined in - @ line 0
function pwdc --description 'alias pwdc=pwd | xsel -b'
	pwd | xsel -b $argv;
end
