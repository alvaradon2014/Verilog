## This file is a general .xdc for the Nexys4 rev C board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
### Switches
##Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
#set_property PACKAGE_PIN J15 [get_ports {SW[0]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]
##Bank = 34, Pin name = IO_25_34,							Sch name = SW1
#set_property PACKAGE_PIN L16 [get_ports {SW[1]}]	
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]
##Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = SW2
#set_property PACKAGE_PIN M13 [get_ports {SW[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]
##Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
#set_property PACKAGE_PIN R15 [get_ports {SW[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]
##Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
#set_property PACKAGE_PIN R17 [get_ports {SW[4]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[4]}]
##Bank = 34, Pin name = IO_L20P_T3_34,						Sch name = SW5
#set_property PACKAGE_PIN T18 [get_ports {SW[5]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[5]}]
##Bank = 34, Pin name = IO_L20N_T3_34,						Sch name = SW6
#set_property PACKAGE_PIN U18 [get_ports {SW[6]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[6]}]
##Bank = 34, Pin name = IO_L10P_T1_34,						Sch name = SW7
#set_property PACKAGE_PIN R13 [get_ports {SW[7]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {SW[7]}]
##Bank = 34, Pin name = IO_L8P_T1-34,						Sch name = SW8
set_property PACKAGE_PIN T8 [get_ports {load[0]}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {load[0]}]
##Bank = 34, Pin name = IO_L9N_T1_DQS_34,						Sch name = SW9
set_property PACKAGE_PIN U8 [get_ports {load[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[1]}]
##Bank = 34, Pin name = IO_L9P_T1_DQS_34,						Sch name = SW10
set_property PACKAGE_PIN R16 [get_ports {load[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[2]}]
##Bank = 34, Pin name = IO_L11N_T1_MRCC_34,					Sch name = SW11
set_property PACKAGE_PIN T13 [get_ports {load[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[3]}]
##Bank = 34, Pin name = IO_L17N_T2_34,						Sch name = SW12
set_property PACKAGE_PIN H6 [get_ports {load[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[4]}]
##Bank = 34, Pin name = IO_L11P_T1_SRCC_34,					Sch name = SW13
set_property PACKAGE_PIN U12 [get_ports {load[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[5]}]
##Bank = 34, Pin name = IO_L14N_T2_SRCC_34,					Sch name = SW14
set_property PACKAGE_PIN U11 [get_ports {load[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[6]}]
##Bank = 34, Pin name = IO_L14P_T2_SRCC_34,					Sch name = SW15
set_property PACKAGE_PIN V10 [get_ports {load[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load[7]}]
 

### LEDs
##Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN H17 [get_ports {LED[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
##Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
set_property PACKAGE_PIN K15 [get_ports {LED[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
##Bank = 34, Pin name = IO_L24P_T3_34,						Sch name = LED2
set_property PACKAGE_PIN J13 [get_ports {LED[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
##Bank = 34, Pin name = IO_L23N_T3_34,						Sch name = LED3
set_property PACKAGE_PIN N14 [get_ports {LED[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
##Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
set_property PACKAGE_PIN R18 [get_ports {LED[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]
##Bank = 34, Pin name = IO_L12N_T1_MRCC_34,					Schname = LED5
set_property PACKAGE_PIN V17 [get_ports {LED[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
##Bank = 34, Pin name = IO_L22P_T3_34,						Sch name = LED6
set_property PACKAGE_PIN U17 [get_ports {LED[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
##Bank = 34, Pin name = IO_L22N_T3_34,						Sch name = LED7
set_property PACKAGE_PIN U16 [get_ports {LED[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]
##Bank = 34, Pin name = IO_L10N_T1_34,						Sch name = LED8
set_property PACKAGE_PIN V16 [get_ports {LED[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]
##Bank = 34, Pin name = IO_L8N_T1_34,						Sch name = LED9
set_property PACKAGE_PIN T15 [get_ports {LED[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]
##Bank = 34, Pin name = IO_L7N_T1_34,						Sch name = LED10
set_property PACKAGE_PIN U14 [get_ports {LED[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[10]}]
##Bank = 34, Pin name = IO_L17P_T2_34,						Sch name = LED11
set_property PACKAGE_PIN T16 [get_ports {LED[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[11]}]
##Bank = 34, Pin name = IO_L13N_T2_MRCC_34,					Sch name = LED12
set_property PACKAGE_PIN V15 [get_ports {LED[12]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[12]}]
##Bank = 34, Pin name = IO_L7P_T1_34,						Sch name = LED13
set_property PACKAGE_PIN V14 [get_ports {LED[13]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]
##Bank = 34, Pin name = IO_L15N_T2_DQS_34,					Sch name = LED14
set_property PACKAGE_PIN V12 [get_ports {LED[14]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[14]}]
##Bank = 34, Pin name = IO_L15P_T2_DQS_34,					Sch name = LED15
set_property PACKAGE_PIN V11 [get_ports {LED[15]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]







###Buttons
###Bank = 15, Pin name = IO_L3P_T0_DQS_AD1P_15,					Sch name = CPU_RESET
##set_property PACKAGE_PIN C12 [get_ports btnCpuReset]				
#	set_property IOSTANDARD LVCMOS33 [get_ports btnCpuReset]
##Bank = 15, Pin name = IO_L11N_T1_SRCC_15,					Sch name = BTNC
#set_property PACKAGE_PIN N17 [get_ports {ceN}]						
#	set_property IOSTANDARD LVCMOS33 [get_ports {ceN}]
##Bank = 15, Pin name = IO_L14P_T2_SRCC_15,					Sch name = BTNU
set_property PACKAGE_PIN M18 [get_ports {up}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {up}]
##Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,			Sch name = BTNL
set_property PACKAGE_PIN P17 [get_ports {plN}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {plN}]
##Bank = 14, Pin name = IO_25_14,							Sch name = BTNR
set_property PACKAGE_PIN M17 [get_ports {rstN}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {rstN}]
##Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
set_property PACKAGE_PIN P18 [get_ports {down}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {down}]
 


