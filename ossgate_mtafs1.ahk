IfExist , D:\tmp\newsslline.txt
{
    MsgBox , 4, , D:\tmp\newsslline.txt already exists. Overwrite the existing file?
    IfMsgBox , No
	{
        return
	}
	FileDelete , D:\tmp\newsslline.txt
}

user=1027839100
ll=0

Loop 100
{	
    v := SubStr("0000" . ll, -3)
	v2 := SubStr("00" . v, -1)
	ff:=ll//100
	v1 := SubStr("00" . ff, -1 )
	
	FileAppend ,
	(
new $ %user% ibn TATSAUTO 0 0 NILLATA 0 mt1 000 0 %v1% %v2% SIP_DATA SIP_PACKAGE mtafssl SIP_URI +
ssl%user%@co18mtafs1.com SIP_CLIENT_TYPE gcplinev2 SIP_LOCATION other SIP_PASSWD 1234 $ dpl y 10 dgt cwt +
cnd NOAMA 3wc $ Y Y
	
	), D:\tmp\newsslline.txt
	
	user++
	ll++
}

MsgBox , Go and check the D:\tmp\newsslline.txt.
return