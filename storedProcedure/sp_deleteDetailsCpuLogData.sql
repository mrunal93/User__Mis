USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteDetailsCpuLogData]    Script Date: 14-10-2020 06:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_deleteDetailsCpuLogData](
@dateTime datetime2 )
as
begin
delete from CpuLogData2019 where DateTime=@dateTime
end
