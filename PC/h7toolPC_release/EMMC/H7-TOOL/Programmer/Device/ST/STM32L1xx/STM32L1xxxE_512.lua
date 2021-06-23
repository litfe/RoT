-------------------------------------------------------
-- �ļ��� : STM32L1xxxE_512.lua
-- ��  �� : V1.0  2020-04-28
-- ˵  �� :
-- Copyright (C), 2020-2030, ���������� www.armfly.com
-------------------------------------------------------

print("load \"STM32L1xxxB_128.lua\" ok")

IncludeList = {
	"0:/H7-TOOL/Programmer/Device/ST/Lib/STM32L1_Lib_E0042000.lua"
}

function config_cpu(void)
	CHIP_TYPE = "SWD"		--ָ�������ӿ�����: "SWD", "SWIM", "SPI", "I2C", "UART"

	AlgoFile_FLASH =  "0:/H7-TOOL/Programmer/Device/ST/STM32L1xx/STM32L1xx_512.FLM"
	AlgoFile_EEPROM = "0:/H7-TOOL/Programmer/Device/ST/STM32L1xx/STM32L1xx_512_EEPROM.FLM"
	AlgoFile_OTP   = ""
	AlgoFile_OPT   = "0:/H7-TOOL/Programmer/Device/ST/STM32L1xx/STM32L1xx_512_OPT.FLM"
	AlgoFile_QSPI  = ""

	FLASH_ADDRESS = 0x08000000		--CPU�ڲ�FLASH��ʼ��ַ
	FLASH_SIZE = 512 * 1024			--оƬʵ��Flash SizeС��FLM�еĶ����size

	EEPROM_ADDRESS = 0x08080000
	EEPROM_SIZE = 16 * 1024			--оƬʵ��Flash SizeС��FLM�еĶ����size

	RAM_ADDRESS = 0x20000000		--CPU�ڲ�RAM��ʼ��ַ

	--Flash�㷨�ļ������ڴ��ַ�ʹ�С
	AlgoRamAddr = 0x20000000
	AlgoRamSize = 2 * 1024

	MCU_ID = 0x2BA01477

	UID_ADDR = 0x1FF80050	   	--UID��ַ����ͬ��CPU��ͬ
	UID_BYTES = 12

	--ȱʡУ��ģʽ
	VERIFY_MODE = 0				-- 0:����У��, 1:����CRC32У��, ����:��չӲ��CRC(��Ҫ��Ƭ��֧�֣�

	ERASE_CHIP_TIME = 3000		--ȫƬ����ʱ��ms�������ڽ���ָʾ)

	--��ַ���е�FFFFFFFF��ʾԭʼ�����в����ϸ��ֽڵķ��� FFFFFFFE��ʾԭʼ�����в���ǰ2���ֽڵķ���
	OB_ADDRESS     = "1FF80000 1FF80001 FFFFFFFE FFFFFFFE 1FF80004 1FF80005 FFFFFFFE FFFFFFFE "
				   .."1FF80008 1FF80009 FFFFFFFE FFFFFFFE 1FF8000C 1FF8000D FFFFFFFE FFFFFFFE "
 				   .."1FF80010 1FF80011 FFFFFFFE FFFFFFFE 1FF80014 1FF80015 FFFFFFFE FFFFFFFE "
				   .."1FF80018 1FF80019 FFFFFFFE FFFFFFFE 1FF8001C 1FF8001D FFFFFFFE FFFFFFFE "
				   .."1FF80080 1FF80081 FFFFFFFE FFFFFFFE 1FF80084 1FF80085 FFFFFFFE FFFFFFFE "

	OB_SECURE_OFF  = "AA 00 00 00 00 00 00 00 "	--SECURE_ENABLE = 0ʱ�������Ϻ�д���ֵ (���������ֽڣ�
				   .."00 00 00 00 00 00 00 00 00 00 00 00"
	OB_SECURE_ON   = "00 00 00 00 00 00 00 00 "	--SECURE_ENABLE = 1ʱ�������Ϻ�д���ֵ
				   .."00 00 00 00 00 00 00 00 00 00 00 00"
	OB_WRP_ADDRESS   = {0x1FF80000,
						0x1FF80008, 0x1FF80009, 0x1FF8000C, 0x1FF8000D, 0x1FF80010, 0x1FF80011, 0x1FF80014, 0x1FF80015,
						0x1FF80018, 0x1FF80019, 0x1FF8001C, 0x1FF8001D, 0x1FF80080, 0x1FF80081, 0x1FF80084, 0x1FF80085} 	--�ڴ��ַ

	OB_WRP_MASK  	 = {0xFF,
						0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
						0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF}		--�����������������
	OB_WRP_VALUE 	 = {0xAA,
						0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
						0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}		--�����������Ƚϣ���ȱ�ʾû�б���
end

--����PC����, ����ȱʡ���ò���
function pc_default(void)
	TVCC_VOLT = 3.3			--����CPU�����ѹTVCC
	
	VERIFY_MODE = 0			--У��ģʽ: 0:�Զ�(FLM�ṩУ�麯�������) 1:����  2:����CRC32  3:STM32Ӳ��CRC32

	REMOVE_RDP_POWEROFF = 1 --д��OB����Ҫ�ϵ�
	POWEROFF_TIME1 = 0   	--д��OB�ӳ�ʱ��ms
	POWEROFF_TIME2 = 100   	--�ϵ�ʱ��ms
	POWEROFF_TIME3 = 20   	--�ϵ��ȴ�ʱ��ms

	SWD_CLOCK_DELAY_0 = 0 	--��·��¼ʱ��ʱ���ӳ�
	SWD_CLOCK_DELAY_1 = 0 	--��·��¼ʱ��ʱ���ӳ�
	
	AUTO_REMOVE_PROTECT = 1 --�Զ����������

	NOTE_PC = ""	
end

---------------------------����-----------------------------------