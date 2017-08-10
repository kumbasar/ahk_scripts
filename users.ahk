IfExist , D:\tmp\user1_reg.csv
{
    MsgBox , 4, , D:\tmp\user1_reg.csv already exists. Overwrite the existing file?
    IfMsgBox , No
	{
        return
	}  
	FileDelete , D:\tmp\user1_reg.csv
	FileDelete , D:\tmp\user2_reg.csv
}

user=4000000 ; caller 


Loop 24500    
{	 

    ll := user+1
	
	FileAppend ,
	(
turksat.com;%user%;turksat.com;850%ll%;

	), D:\tmp\user1_reg.csv
	
  FileAppend ,
	(
turksat.com;%ll%;turksat.com;

	), D:\tmp\user2_reg.csv
	
	user := user + 2
}

MsgBox , Go and check the D:\tmp\user1_reg.csv and D:\tmp\user2_reg.csv
return