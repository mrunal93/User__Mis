USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFellowShipCabdidates]    Script Date: 14-10-2020 06:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_DeleteFellowShipCabdidates] (@email varchar(100))
as
begin
delete from tb_FellowshipCandidates where Email=@email;
end