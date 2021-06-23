-------------------------------------------------------
-- 文件名 : STM32H7_Lib_5C001000.lua
-- 版  本 : V1.0  2020-07-18
-- 说  明 : 适用于L5
-------------------------------------------------------

--【H7】复位期间执行的函数. 目的:debug期间冻结看门狗时钟,低功耗模式启动HCLK和FCLK
function InitUnderReset(void)
	local str = "error"

	print("InitUnderReset()")

	--需要开启D1电源才能访问
	if (pg_write32(0x5C001004, 0x00000307) == 0) then
		goto quit_err
	end

	if (pg_write32(0x5C001034, 0x00000040) == 0) then
		goto quit_err
	end

	if (pg_write32(0x5C001054, 0x00040000) == 0) then
		goto quit_err
	end

	if (ReadDeviceID() ~= 0) then
		goto quit_err
	end

::quit_ok::
	str = "OK"

::quit_err::
	print(str)

	return str
end

--读芯片ID
function ReadDeviceID(void)
	local str
	local err = 0
	local j
	local ch_num

	if (MULTI_MODE == 0) then
		ch_num = 1
	else
		ch_num = MULTI_MODE
	end
	
	g_DevID = {pg_read32(0x5C001000)} --全局变量g_DevID[]

	str = "..DeviceID = "
	for j = 1, ch_num, 1 do
		str = str..string.format("%08X ", g_DevID[j])
		if (g_DevID[j] == 0) then
			if (ABORT_ON_ERROR == 1) then
				err = 1
			end
		end
	end

	print(str)
	return err
end

---------------------------结束-----------------------------------
