USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DateWisePartisionForUserEngagementMis]    Script Date: 14-10-2020 06:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_DateWisePartisionForUserEngagementMis](
@FromDate datetime,
@ToDate datetime
)
as
begin
select * from tb_UserEngagementMis where date_of_attendancce >= @FromDate and date_of_attendancce <= @ToDate;
end