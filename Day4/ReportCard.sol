pragma solidity ^0.4.17 < 0.6.12; 

contract ReportCard{
    
    string public Name;
    uint public   RollNo ;
    string public Batch;
    uint sub1;
    uint sub2;
    uint sub3;
    uint sub4;
    string public Status;

    function ReportCard(string newName, uint newRollNo, string newBatch,uint newsub1,uint newsub2,uint newsub3,uint newsub4) public{
        Name = newName;
        RollNo = newRollNo;
        Batch = newBatch;
        sub1=newsub1;
        sub2=newsub2;
        sub3=newsub3;
        sub4=newsub4;
      
        (sub1>33&&sub2>33&&sub3>33&&sub4>33) ? Status="Pass" : Status="Fail";
   }
    
    function getDetails() public view returns(string,uint,uint,uint,uint,uint,uint,string){
       
       return(Name,RollNo,Batch,sub1,sub2,sub3,sub4, Status);
    }
    
    
}
