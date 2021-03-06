USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddFelloshipCandidates]    Script Date: 14-10-2020 06:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[sp_AddFelloshipCandidates](
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
)as begin 
insert into tb_FellowshipCandidates(FirstName,MiddleName,LastName,Email,MobileNumber,HiredCity,HiredDate
			,PermanentPincode,AttitudeRemark,CommunicationRemark,KnowledgeRemark,BirthDate,LocalAddress,PermanentAddress,JoiningDate,CandidateStatus)
	values (@firstName,@middleName,@lastName,@email,@mobileNumber,@hiredCity,@hireddate,@permanent_pincode,@Attitude,@communication,
	@knowledge,@datebirth,@localAcddress,@permanentAddress,@joining,@status)
end 



