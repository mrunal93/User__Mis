USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFellowshipCandate]    Script Date: 14-10-2020 06:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_UpdateFellowshipCandate](
@firstName varchar (100),
@middleName varchar (100),
@lastName varchar (100),
@email varchar (100),
@mobileNumber varchar(20),
@hiredCity varchar(50),
@hireddate datetime,
@permanent_pincode int,
@Attitude varchar (100),
@communication varchar (100),
@knowledge varchar (15),
@datebirth datetime,
@localAcddress varchar (100),
@permanentAddress varchar (100),
@joining datetime,
@status varchar (20)
)
as
begin
	update tb_FellowshipCandidates 
	set FirstName=@firstName,MiddleName=@middleName,LastName=@lastName,MobileNumber=@mobileNumber,HiredCity=@hiredCity,
	HiredDate=@hireddate,PermanentAddress=@permanentAddress,PermanentPincode=@permanent_pincode,AttitudeRemark=@Attitude,
	CommunicationRemark=@communication,KnowledgeRemark=@knowledge,BirthDate=@datebirth,LocalAddress=@localAcddress,
	JoiningDate=@joining,CandidateStatus=@status
	where Email=@email
end