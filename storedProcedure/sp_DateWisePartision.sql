USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DateWisePartision]    Script Date: 14-10-2020 06:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_DateWisePartision](
@FromDate datetime,
@ToDate datetime
)
as
begin
select * from CpuLogData2019 where DateTime >= @FromDate and DateTime <= @ToDate;
end