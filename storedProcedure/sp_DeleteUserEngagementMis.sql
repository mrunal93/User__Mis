USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUserEngagementMis]    Script Date: 14-10-2020 06:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_DeleteUserEngagementMis] (@id int)
as
begin
delete from tb_UserEngagementMis where id=@id;
end