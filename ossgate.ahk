IfExist , D:\tmp\newsslline.txt
{
    MsgBox , 4, , D:\tmp\newsslline.txt already exists. Overwrite the existing file?
    IfMsgBox , No
	{
        return
	}
	FileDelete , D:\tmp\newsslline.txt
}

user=9115
ll=0

Loop 1024
{	
    v := SubStr("0000" . ll, -3)
	v2 := SubStr("00" . v, -1)
	ff:=ll//100
	v1 := SubStr("00" . ff, -1 )
	
	FileAppend ,
	(
new $ 0850250%user% ibn CS2KLINE 0 0 0 SSL6 000 0 %v1% %v2% SIP_DATA SIP_PACKAGE turksatdemo SIP_URI +
user%user%@turksat.com SIP_CLIENT_TYPE gcplinev2 SIP_LOCATION other SIP_PASSWD u1234 $ dpl y 10 dgt cwt +
cnd NOAMA ACT $ Y Y
	
	), D:\tmp\newsslline.txt
	
	user++
	ll++
}

MsgBox , Go and check the D:\tmp\newsslline.txt.
return