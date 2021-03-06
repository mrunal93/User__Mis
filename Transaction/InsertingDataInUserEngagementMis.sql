USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddUserEngagementMis]    Script Date: 17-10-2020 08:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_AddUserEngagementMis](
@id int,
@candidateId int,
@dateOfAttendance datetime,
@timeOfAttendance datetime,
@emailId varchar(50)
)
as
begin try
begin transaction
insert into tb_UserEngagementMis(id,candidate_id,date_of_attendancce,time_of_attendance,email_id)
values(@id,@candidateId,@dateOfAttendance,@timeOfAttendance,@emailId)
commit transaction
end try
begin catch
rollback transaction
print 'Value was not added'
end catch