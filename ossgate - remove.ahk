IfExist , D:\tmp\newsslline.txt
{
    MsgBox , 4, , D:\tmp\newsslline.txt already exists. Overwrite the existing file?
    IfMsgBox , No
	{
        return
	}
	FileDelete , D:\tmp\newsslline.txt
}

user=8504005106
ll=1

Loop 1024
{	
    v := SubStr("0000" . ll, -3)
	v2 := SubStr("00" . v, -1)
	ff:=ll//100
	v1 := SubStr("00" . ff, -1 )
	
	FileAppend ,
	(
	out $ %user% SSL9 000 5 %v1% %v2% bldn y y
	
	), D:\tmp\newsslline.txt
	
	user++
	ll++
}

MsgBox , Go and check the D:\tmp\newsslline.txt.
return