USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateDetailsCpuLogData]    Script Date: 14-10-2020 06:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_UpdateDetailsCpuLogData](
@Date_Time  DATE ,
@Cpu_Count int,
@Cpu_Working_Time float ,
@Cpu_idle_Time float,
@cpu_percent float,
@Usage_cpu_count int,
@number_of_software_interrupts_since_boot float,
@number_of_system_calls_since_boot int,
@number_of_interrupts_since_boot int,
@boot_time varchar(100) ,
@user_name varchar(50) ,
@keyboard int,
@mouse int,
@technology varchar(100),
@files_changed int
)as
begin
 update CpuLogData2019 
 set DateTime=@Date_Time,Cpu_Count=@Cpu_Count,Cpu_Working_Time=@Cpu_Working_Time,Cpu_idle_Time=@Cpu_idle_Time,
 cpu_percent=@cpu_percent,Usage_Cpu_Count=@Usage_cpu_count,@number_of_software_interrupts_since_boot=@number_of_software_interrupts_since_boot,
 number_of_system_calls_since_boot=@number_of_system_calls_since_boot,number_of_interrupts_since_boot=@number_of_interrupts_since_boot,
 boot_time=@boot_time,keyboard=@keyboard,mouse=@mouse,technology=@technology,files_changed=@files_changed
 where user_name=@user_name
 end