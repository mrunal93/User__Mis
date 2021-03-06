USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateUserEngagementMis]    Script Date: 14-10-2020 06:58:45 ******/
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
begin

update tb_UserEngagementMis set
candidate_id=@candidateId,date_of_attendancce=@dateOfAttendance,time_of_attendance=@timeOFAttendance
where email_id=@email;
end