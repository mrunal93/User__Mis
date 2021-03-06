USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateUserEngagementMis]    Script Date: 17-10-2020 08:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_UpdateUserEngagementMis](
@candidateId int,
@dateOfAttendance datetime,
@timeOFAttendance datetime,
@email varchar(50)
)
as
begin try
begin transaction 
update tb_UserEngagementMis set
candidate_id=@candidateId,date_of_attendancce=@dateOfAttendance,time_of_attendance=@timeOFAttendance
where email_id=@email;
commit transaction
end try
begin catch
rollback transaction
end catch