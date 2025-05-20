----------------------------------------------------------------------------------------------------
-- Copyright (c) 2025 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- libraries
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

----------------------------------------------------------------------------------------------------
-- entity declaration
----------------------------------------------------------------------------------------------------
entity Andromeda_XZU80_PE5 is
  generic (
    BG_WIDTH : natural
  );
  
  port (
    
    -- DIP Switches
    DIP1_N_DP_AUX_P                : in      std_logic;
    DIP2_N_DP_AUX_N                : in      std_logic;
    
    -- User Led
    LED2_N_DIP0_N                  : out     std_logic;
    LED3_N_PWR_SYNC                : out     std_logic;
    
    -- USER INPUT Buttons
    BTN0_N                         : in      std_logic;
    BTN1_N                         : in      std_logic;
    
    -- Clock Generator 1 C2M RefClk
    CLK_CG1_C2M_N                  : in      std_logic;
    CLK_CG1_C2M_P                  : in      std_logic;
    
    -- Clock Generator 1 M2C input clock 1
    CLK_CG1_M2C_N                  : out     std_logic;
    CLK_CG1_M2C_P                  : out     std_logic;
    
    -- Clock Generator C2M RefClk
    CLK_CG2_C2M_N                  : in      std_logic;
    CLK_CG2_C2M_P                  : in      std_logic;
    
    -- Clock Generator 2 M2C input clock 1
    CLK_CG2_M2C_N                  : out     std_logic;
    CLK_CG2_M2C_P                  : out     std_logic;
    
    -- Digital IO In
    DII_N                          : in      std_logic;
    
    -- Digital IO Out
    DIO_N                          : out     std_logic;
    
    -- FMC Connector 0
    F0_HA02_E3B0_N                 : inout   std_logic;
    F0_HA02_E3B0_P                 : inout   std_logic;
    F0_HA03_E3B1_N                 : inout   std_logic;
    F0_HA03_E3B1_P                 : inout   std_logic;
    F0_HA04_E3B2_N                 : inout   std_logic;
    F0_HA04_E3B2_P                 : inout   std_logic;
    F0_HA05_E3B3_N                 : inout   std_logic;
    F0_HA05_E3B3_P                 : inout   std_logic;
    F0_HA06_E3AS_N                 : inout   std_logic;
    F0_HA06_E3AS_P                 : inout   std_logic;
    F0_HA07_E3A0_N                 : inout   std_logic;
    F0_HA07_E3A0_P                 : inout   std_logic;
    F0_HA08_E3A1_N                 : inout   std_logic;
    F0_HA08_E3A1_P                 : inout   std_logic;
    F0_HA09_E3A2_N                 : inout   std_logic;
    F0_HA09_E3A2_P                 : inout   std_logic;
    F0_HA10_E3A3_N                 : inout   std_logic;
    F0_HA10_E3A3_P                 : inout   std_logic;
    F0_HA11_E3AC_N                 : inout   std_logic;
    F0_HA11_E3AC_P                 : inout   std_logic;
    F0_HA12_E4AS_N                 : inout   std_logic;
    F0_HA12_E4AS_P                 : inout   std_logic;
    F0_HA13_E4A0_N                 : inout   std_logic;
    F0_HA13_E4A0_P                 : inout   std_logic;
    F0_HA14_E4A1_N                 : inout   std_logic;
    F0_HA14_E4A1_P                 : inout   std_logic;
    F0_HA15_E4A2_N                 : inout   std_logic;
    F0_HA15_E4A2_P                 : inout   std_logic;
    F0_HA16_E4A3_N                 : inout   std_logic;
    F0_HA16_E4A3_P                 : inout   std_logic;
    F0_HA18_E4B0_N                 : inout   std_logic;
    F0_HA18_E4B0_P                 : inout   std_logic;
    F0_HA19_E4B1_N                 : inout   std_logic;
    F0_HA19_E4B1_P                 : inout   std_logic;
    F0_HA20_E4B2_N                 : inout   std_logic;
    F0_HA20_E4B2_P                 : inout   std_logic;
    F0_HA21_E4B3_N                 : inout   std_logic;
    F0_HA21_E4B3_P                 : inout   std_logic;
    F0_HA22_E4BC_N                 : inout   std_logic;
    F0_HA22_E4BC_P                 : inout   std_logic;
    F0_HA23_E4AC_N                 : inout   std_logic;
    F0_HA23_E4AC_P                 : inout   std_logic;
    F0_LA02_E0B0_N                 : inout   std_logic;
    F0_LA02_E0B0_P                 : inout   std_logic;
    F0_LA03_E0B1_N                 : inout   std_logic;
    F0_LA03_E0B1_P                 : inout   std_logic;
    F0_LA04_E0B2_N                 : inout   std_logic;
    F0_LA04_E0B2_P                 : inout   std_logic;
    F0_LA05_E0B3_N                 : inout   std_logic;
    F0_LA05_E0B3_P                 : inout   std_logic;
    F0_LA06_E0AS_N                 : inout   std_logic;
    F0_LA06_E0AS_P                 : inout   std_logic;
    F0_LA07_E0A0_N                 : inout   std_logic;
    F0_LA07_E0A0_P                 : inout   std_logic;
    F0_LA08_E0A1_N                 : inout   std_logic;
    F0_LA08_E0A1_P                 : inout   std_logic;
    F0_LA09_E0A2_N                 : inout   std_logic;
    F0_LA09_E0A2_P                 : inout   std_logic;
    F0_LA10_E0A3_N                 : inout   std_logic;
    F0_LA10_E0A3_P                 : inout   std_logic;
    F0_LA11_E0AC_N                 : inout   std_logic;
    F0_LA11_E0AC_P                 : inout   std_logic;
    F0_LA12_E1B0_N                 : inout   std_logic;
    F0_LA12_E1B0_P                 : inout   std_logic;
    F0_LA13_E1B1_N                 : inout   std_logic;
    F0_LA13_E1B1_P                 : inout   std_logic;
    F0_LA14_E1B2_N                 : inout   std_logic;
    F0_LA14_E1B2_P                 : inout   std_logic;
    F0_LA15_E1B3_N                 : inout   std_logic;
    F0_LA15_E1B3_P                 : inout   std_logic;
    F0_LA16_E1AC_N                 : inout   std_logic;
    F0_LA16_E1AC_P                 : inout   std_logic;
    F0_LA19_E2B0_N                 : inout   std_logic;
    F0_LA19_E2B0_P                 : inout   std_logic;
    F0_LA20_E2B1_N                 : inout   std_logic;
    F0_LA20_E2B1_P                 : inout   std_logic;
    F0_LA21_E2B2_N                 : inout   std_logic;
    F0_LA21_E2B2_P                 : inout   std_logic;
    F0_LA22_E2B3_N                 : inout   std_logic;
    F0_LA22_E2B3_P                 : inout   std_logic;
    F0_LA23_E1AS_N                 : inout   std_logic;
    F0_LA23_E1AS_P                 : inout   std_logic;
    F0_LA24_E1A0_N                 : inout   std_logic;
    F0_LA24_E1A0_P                 : inout   std_logic;
    F0_LA25_E1A1_N                 : inout   std_logic;
    F0_LA25_E1A1_P                 : inout   std_logic;
    F0_LA26_E1A2_N                 : inout   std_logic;
    F0_LA26_E1A2_P                 : inout   std_logic;
    F0_LA27_E1A3_N                 : inout   std_logic;
    F0_LA27_E1A3_P                 : inout   std_logic;
    F0_LA28_E2AS_N                 : inout   std_logic;
    F0_LA28_E2AS_P                 : inout   std_logic;
    F0_LA29_E2A0_N                 : inout   std_logic;
    F0_LA29_E2A0_P                 : inout   std_logic;
    F0_LA30_E2A1_N                 : inout   std_logic;
    F0_LA30_E2A1_P                 : inout   std_logic;
    F0_LA31_E2A2_N                 : inout   std_logic;
    F0_LA31_E2A2_P                 : inout   std_logic;
    F0_LA32_E2A3_N                 : inout   std_logic;
    F0_LA32_E2A3_P                 : inout   std_logic;
    F0_LA33_E2AC_N                 : inout   std_logic;
    F0_LA33_E2AC_P                 : inout   std_logic;
    F0_DP0_C2M_N                   : inout   std_logic;
    F0_DP0_C2M_P                   : inout   std_logic;
    F0_DP0_M2C_N                   : inout   std_logic;
    F0_DP0_M2C_P                   : inout   std_logic;
    F0_DP1_C2M_N                   : inout   std_logic;
    F0_DP1_C2M_P                   : inout   std_logic;
    F0_DP1_M2C_N                   : inout   std_logic;
    F0_DP1_M2C_P                   : inout   std_logic;
    F0_DP2_C2M_N                   : inout   std_logic;
    F0_DP2_C2M_P                   : inout   std_logic;
    F0_DP2_M2C_N                   : inout   std_logic;
    F0_DP2_M2C_P                   : inout   std_logic;
    F0_DP3_C2M_N                   : inout   std_logic;
    F0_DP3_C2M_P                   : inout   std_logic;
    F0_DP3_M2C_N                   : inout   std_logic;
    F0_DP3_M2C_P                   : inout   std_logic;
    F0_DP4_C2M_N                   : inout   std_logic;
    F0_DP4_C2M_P                   : inout   std_logic;
    F0_DP4_M2C_N                   : inout   std_logic;
    F0_DP4_M2C_P                   : inout   std_logic;
    F0_DP5_C2M_N                   : inout   std_logic;
    F0_DP5_C2M_P                   : inout   std_logic;
    F0_DP5_M2C_N                   : inout   std_logic;
    F0_DP5_M2C_P                   : inout   std_logic;
    F0_DP6_C2M_N                   : inout   std_logic;
    F0_DP6_C2M_P                   : inout   std_logic;
    F0_DP6_M2C_N                   : inout   std_logic;
    F0_DP6_M2C_P                   : inout   std_logic;
    F0_DP7_C2M_N                   : inout   std_logic;
    F0_DP7_C2M_P                   : inout   std_logic;
    F0_DP7_M2C_N                   : inout   std_logic;
    F0_DP7_M2C_P                   : inout   std_logic;
    F0_HA00_E3BS_CC_N              : inout   std_logic;
    F0_HA00_E3BS_CC_P              : inout   std_logic;
    F0_HA01_E3BC_CC_N              : inout   std_logic;
    F0_HA01_E3BC_CC_P              : inout   std_logic;
    F0_HA17_E4BS_CC_N              : inout   std_logic;
    F0_HA17_E4BS_CC_P              : inout   std_logic;
    F0_LA00_E0BS_CC_N              : inout   std_logic;
    F0_LA00_E0BS_CC_P              : inout   std_logic;
    F0_LA01_E0BC_CC_N              : inout   std_logic;
    F0_LA01_E0BC_CC_P              : inout   std_logic;
    F0_LA17_E2BS_CC_N              : inout   std_logic;
    F0_LA17_E2BS_CC_P              : inout   std_logic;
    F0_LA18_E2BC_CC_N              : inout   std_logic;
    F0_LA18_E2BC_CC_P              : inout   std_logic;
    F0_CLK0_E1BC_N                 : inout   std_logic;
    F0_CLK0_E1BC_P                 : inout   std_logic;
    F0_CLK1_E1BS_N                 : inout   std_logic;
    F0_CLK1_E1BS_P                 : inout   std_logic;
    F0_GBTCLK0_M2C_N               : inout   std_logic;
    F0_GBTCLK0_M2C_P               : inout   std_logic;
    F0_GBTCLK1_M2C_N               : inout   std_logic;
    F0_GBTCLK1_M2C_P               : inout   std_logic;
    
    -- FMC Connector 1
    F1_HA02_E3B0_N                 : inout   std_logic;
    F1_HA02_E3B0_P                 : inout   std_logic;
    F1_HA03_E3B1_N                 : inout   std_logic;
    F1_HA03_E3B1_P                 : inout   std_logic;
    F1_HA04_E3B2_N                 : inout   std_logic;
    F1_HA04_E3B2_P                 : inout   std_logic;
    F1_HA05_E3B3_N                 : inout   std_logic;
    F1_HA05_E3B3_P                 : inout   std_logic;
    F1_HA06_E3AS_N                 : inout   std_logic;
    F1_HA06_E3AS_P                 : inout   std_logic;
    F1_HA07_E3A0_N                 : inout   std_logic;
    F1_HA07_E3A0_P                 : inout   std_logic;
    F1_HA08_E3A1_N                 : inout   std_logic;
    F1_HA08_E3A1_P                 : inout   std_logic;
    F1_HA09_E3A2_N                 : inout   std_logic;
    F1_HA09_E3A2_P                 : inout   std_logic;
    F1_HA10_E3A3_N                 : inout   std_logic;
    F1_HA10_E3A3_P                 : inout   std_logic;
    F1_HA11_E3AC_N                 : inout   std_logic;
    F1_HA11_E3AC_P                 : inout   std_logic;
    F1_HA12_E4AS_N                 : inout   std_logic;
    F1_HA12_E4AS_P                 : inout   std_logic;
    F1_HA13_E4A0_N                 : inout   std_logic;
    F1_HA13_E4A0_P                 : inout   std_logic;
    F1_HA14_E4A1_N                 : inout   std_logic;
    F1_HA14_E4A1_P                 : inout   std_logic;
    F1_HA15_E4A2_N                 : inout   std_logic;
    F1_HA15_E4A2_P                 : inout   std_logic;
    F1_HA16_E4A3_N                 : inout   std_logic;
    F1_HA16_E4A3_P                 : inout   std_logic;
    F1_HA18_E4B0_N                 : inout   std_logic;
    F1_HA18_E4B0_P                 : inout   std_logic;
    F1_HA19_E4B1_N                 : inout   std_logic;
    F1_HA19_E4B1_P                 : inout   std_logic;
    F1_HA20_E4B2_N                 : inout   std_logic;
    F1_HA20_E4B2_P                 : inout   std_logic;
    F1_HA21_E4B3_N                 : inout   std_logic;
    F1_HA21_E4B3_P                 : inout   std_logic;
    F1_HA22_E4BC_N                 : inout   std_logic;
    F1_HA22_E4BC_P                 : inout   std_logic;
    F1_HA23_E4AC_N                 : inout   std_logic;
    F1_HA23_E4AC_P                 : inout   std_logic;
    F1_LA02_E0B0_N                 : inout   std_logic;
    F1_LA02_E0B0_P                 : inout   std_logic;
    F1_LA03_E0B1_N                 : inout   std_logic;
    F1_LA03_E0B1_P                 : inout   std_logic;
    F1_LA04_E0B2_N                 : inout   std_logic;
    F1_LA04_E0B2_P                 : inout   std_logic;
    F1_LA05_E0B3_N                 : inout   std_logic;
    F1_LA05_E0B3_P                 : inout   std_logic;
    F1_LA06_E0AS_N                 : inout   std_logic;
    F1_LA06_E0AS_P                 : inout   std_logic;
    F1_LA07_E0A0_N                 : inout   std_logic;
    F1_LA07_E0A0_P                 : inout   std_logic;
    F1_LA08_E0A1_N                 : inout   std_logic;
    F1_LA08_E0A1_P                 : inout   std_logic;
    F1_LA09_E0A2_N                 : inout   std_logic;
    F1_LA09_E0A2_P                 : inout   std_logic;
    F1_LA10_E0A3_N                 : inout   std_logic;
    F1_LA10_E0A3_P                 : inout   std_logic;
    F1_LA11_E0AC_N                 : inout   std_logic;
    F1_LA11_E0AC_P                 : inout   std_logic;
    F1_LA12_E1B0_N                 : inout   std_logic;
    F1_LA12_E1B0_P                 : inout   std_logic;
    F1_LA13_E1B1_N                 : inout   std_logic;
    F1_LA13_E1B1_P                 : inout   std_logic;
    F1_LA14_E1B2_N                 : inout   std_logic;
    F1_LA14_E1B2_P                 : inout   std_logic;
    F1_LA15_E1B3_N                 : inout   std_logic;
    F1_LA15_E1B3_P                 : inout   std_logic;
    F1_LA16_E1AC_N                 : inout   std_logic;
    F1_LA16_E1AC_P                 : inout   std_logic;
    F1_LA19_E2B0_N                 : inout   std_logic;
    F1_LA19_E2B0_P                 : inout   std_logic;
    F1_LA20_E2B1_N                 : inout   std_logic;
    F1_LA20_E2B1_P                 : inout   std_logic;
    F1_LA21_E2B2_N                 : inout   std_logic;
    F1_LA21_E2B2_P                 : inout   std_logic;
    F1_LA22_E2B3_N                 : inout   std_logic;
    F1_LA22_E2B3_P                 : inout   std_logic;
    F1_LA23_E1AS_N                 : inout   std_logic;
    F1_LA23_E1AS_P                 : inout   std_logic;
    F1_LA24_E1A0_N                 : inout   std_logic;
    F1_LA24_E1A0_P                 : inout   std_logic;
    F1_LA25_E1A1_N                 : inout   std_logic;
    F1_LA25_E1A1_P                 : inout   std_logic;
    F1_LA26_E1A2_N                 : inout   std_logic;
    F1_LA26_E1A2_P                 : inout   std_logic;
    F1_LA27_E1A3_N                 : inout   std_logic;
    F1_LA27_E1A3_P                 : inout   std_logic;
    F1_LA28_E2AS_N                 : inout   std_logic;
    F1_LA28_E2AS_P                 : inout   std_logic;
    F1_LA29_E2A0_N                 : inout   std_logic;
    F1_LA29_E2A0_P                 : inout   std_logic;
    F1_LA30_E2A1_N                 : inout   std_logic;
    F1_LA30_E2A1_P                 : inout   std_logic;
    F1_LA31_E2A2_N                 : inout   std_logic;
    F1_LA31_E2A2_P                 : inout   std_logic;
    F1_LA32_E2A3_N                 : inout   std_logic;
    F1_LA32_E2A3_P                 : inout   std_logic;
    F1_LA33_E2AC_N                 : inout   std_logic;
    F1_LA33_E2AC_P                 : inout   std_logic;
    F1_DP4_C2M_N                   : inout   std_logic;
    F1_DP4_C2M_P                   : inout   std_logic;
    F1_DP4_M2C_N                   : inout   std_logic;
    F1_DP4_M2C_P                   : inout   std_logic;
    F1_DP5_C2M_N                   : inout   std_logic;
    F1_DP5_C2M_P                   : inout   std_logic;
    F1_DP5_M2C_N                   : inout   std_logic;
    F1_DP5_M2C_P                   : inout   std_logic;
    F1_DP6_C2M_N                   : inout   std_logic;
    F1_DP6_C2M_P                   : inout   std_logic;
    F1_DP6_M2C_N                   : inout   std_logic;
    F1_DP6_M2C_P                   : inout   std_logic;
    F1_DP7_C2M_N                   : inout   std_logic;
    F1_DP7_C2M_P                   : inout   std_logic;
    F1_DP7_M2C_N                   : inout   std_logic;
    F1_DP7_M2C_P                   : inout   std_logic;
    F1_HA00_E3BS_CC_N              : inout   std_logic;
    F1_HA00_E3BS_CC_P              : inout   std_logic;
    F1_HA01_E3BC_CC_N              : inout   std_logic;
    F1_HA01_E3BC_CC_P              : inout   std_logic;
    F1_HA17_E4BS_CC_N              : inout   std_logic;
    F1_HA17_E4BS_CC_P              : inout   std_logic;
    F1_LA00_E0BS_CC_N              : inout   std_logic;
    F1_LA00_E0BS_CC_P              : inout   std_logic;
    F1_LA01_E0BC_CC_N              : inout   std_logic;
    F1_LA01_E0BC_CC_P              : inout   std_logic;
    F1_LA17_E2BS_CC_N              : inout   std_logic;
    F1_LA17_E2BS_CC_P              : inout   std_logic;
    F1_LA18_E2BC_CC_N              : inout   std_logic;
    F1_LA18_E2BC_CC_P              : inout   std_logic;
    F1_CLK0_E1BC_N                 : inout   std_logic;
    F1_CLK0_E1BC_P                 : inout   std_logic;
    F1_CLK1_E1BS_N                 : inout   std_logic;
    F1_CLK1_E1BS_P                 : inout   std_logic;
    F1_GBTCLK1_M2C_N               : inout   std_logic;
    F1_GBTCLK1_M2C_P               : inout   std_logic;
    
    -- IO Connector
    X3_D0                          : inout   std_logic;
    X3_D1                          : inout   std_logic;
    X3_D2                          : inout   std_logic;
    X3_D3                          : inout   std_logic;
    
    -- Clock Generator MGT V3 RefClk 1
    MGT_V3_CLK1_N                  : in      std_logic;
    MGT_V3_CLK1_P                  : in      std_logic;
    
    -- Clock Generator MGT Y0 RefClk 1
    MGT_Y0_CLK1_N                  : in      std_logic;
    MGT_Y0_CLK1_P                  : in      std_logic;
    
    -- Clock Generator MGT Y1 RefClk 1
    MGT_Y1_CLK1_N                  : in      std_logic;
    MGT_Y1_CLK1_P                  : in      std_logic;
    
    -- PL0 DDR4 Memory
    DDR4PL0_ACT_N                  : out     std_logic;
    DDR4PL0_RESET_N                : out     std_logic;
    DDR4PL0_BA                     : out     std_logic_vector(1 downto 0);
    DDR4PL0_BG                     : out     std_logic_vector(0 downto 0);
    DDR4PL0_CKE                    : out     std_logic_vector(0 downto 0);
    DDR4PL0_DQ                     : inout   std_logic_vector(63 downto 0);
    DDR4PL0_ODT                    : out     std_logic_vector(0 downto 0);
    DDR4PL0_A                      : out     std_logic_vector(16 downto 0);
    DDR4PL0_CK_N                   : out     std_logic_vector(0 downto 0);
    DDR4PL0_CK_P                   : out     std_logic_vector(0 downto 0);
    DDR4PL0_CS_N                   : out     std_logic_vector(0 downto 0);
    DDR4PL0_DM                     : inout   std_logic_vector(7 downto 0);
    DDR4PL0_DQS_P                  : inout   std_logic_vector(7 downto 0);
    DDR4PL0_DQS_N                  : inout   std_logic_vector(7 downto 0);
    
    -- PL 100 MHz Oscillator
    CLK100_PL1_N                   : in      std_logic;
    CLK100_PL1_P                   : in      std_logic;
    
    -- PL1 DDR4 Memory
    DDR4PL1_ACT_N                  : out     std_logic;
    DDR4PL1_RESET_N                : out     std_logic;
    DDR4PL1_BA                     : out     std_logic_vector(1 downto 0);
    DDR4PL1_BG                     : out     std_logic_vector(0 downto 0);
    DDR4PL1_CKE                    : out     std_logic_vector(0 downto 0);
    DDR4PL1_DQ                     : inout   std_logic_vector(63 downto 0);
    DDR4PL1_ODT                    : out     std_logic_vector(0 downto 0);
    DDR4PL1_A                      : out     std_logic_vector(16 downto 0);
    DDR4PL1_CK_N                   : out     std_logic_vector(0 downto 0);
    DDR4PL1_CK_P                   : out     std_logic_vector(0 downto 0);
    DDR4PL1_CS_N                   : out     std_logic_vector(0 downto 0);
    DDR4PL1_DM                     : inout   std_logic_vector(7 downto 0);
    DDR4PL1_DQS_P                  : inout   std_logic_vector(7 downto 0);
    DDR4PL1_DQS_N                  : inout   std_logic_vector(7 downto 0);
    
    -- PL 100 MHz Oscillator
    CLK100_PL0_N                   : in      std_logic;
    CLK100_PL0_P                   : in      std_logic;
    
    -- PL Gigabit Ethernet
    ETH1_MDC                       : out     std_logic;
    ETH1_RXCLK                     : in      std_logic;
    ETH1_TXCLK                     : out     std_logic;
    ETH1_MDIO                      : inout   std_logic;
    I2C_PL_INT_N                   : in      std_logic;
    ETH1_RESET_N                   : out     std_logic;
    ETH1_RXCTL                     : in      std_logic;
    ETH1_TXCTL                     : out     std_logic;
    ETH1_RXD                       : in      std_logic_vector(3 downto 0);
    ETH1_TXD                       : out     std_logic_vector(3 downto 0);
    
    -- PL SYSMON
    SYSMON_VN                      : in      std_logic;
    SYSMON_VP                      : in      std_logic;
    VMON_A0                        : out     std_logic;
    VMON_A1                        : out     std_logic;
    
    -- LED
    XZU80_LED0_N                   : out     std_logic;
    XZU80_LED1_N                   : out     std_logic;
    XZU80_LED2_N                   : out     std_logic;
    XZU80_LED3_N                   : out     std_logic
  );
end Andromeda_XZU80_PE5;

architecture rtl of Andromeda_XZU80_PE5 is

  ----------------------------------------------------------------------------------------------------
  -- component declarations
  ----------------------------------------------------------------------------------------------------
  component Andromeda_XZU80 is
    port (
      Clk100              : out    std_logic;
      Clk50               : out    std_logic;
      Rst_N               : out    std_logic;
      SYSMON_vp           : in     std_logic;
      SYSMON_vn           : in     std_logic;
      SYSMON_addr         : out    std_logic_vector(4 downto 0);
      C0_SYS_CLKPL0_clk_n : in     std_logic;
      C0_SYS_CLKPL0_clk_p : in     std_logic;
      C0_DDR4PL0_act_n    : out    std_logic;
      C0_DDR4PL0_reset_n  : out    std_logic;
      C0_DDR4PL0_ba       : out    std_logic_vector(1 downto 0);
      C0_DDR4PL0_bg       : out    std_logic_vector(BG_WIDTH-1 downto 0);
      C0_DDR4PL0_cke      : out    std_logic_vector(0 downto 0);
      C0_DDR4PL0_dq       : inout  std_logic_vector(63 downto 0);
      C0_DDR4PL0_odt      : out    std_logic_vector(0 downto 0);
      C0_DDR4PL0_adr      : out    std_logic_vector(16 downto 0);
      C0_DDR4PL0_ck_c     : out    std_logic_vector(0 downto 0);
      C0_DDR4PL0_ck_t     : out    std_logic_vector(0 downto 0);
      C0_DDR4PL0_cs_n     : out    std_logic_vector(0 downto 0);
      C0_DDR4PL0_dm_n     : inout  std_logic_vector(7 downto 0);
      C0_DDR4PL0_dqs_c    : inout  std_logic_vector(7 downto 0);
      C0_DDR4PL0_dqs_t    : inout  std_logic_vector(7 downto 0);
      C0_SYS_CLKPL1_clk_n : in     std_logic;
      C0_SYS_CLKPL1_clk_p : in     std_logic;
      C0_DDR4PL1_act_n    : out    std_logic;
      C0_DDR4PL1_reset_n  : out    std_logic;
      C0_DDR4PL1_ba       : out    std_logic_vector(1 downto 0);
      C0_DDR4PL1_bg       : out    std_logic_vector(BG_WIDTH-1 downto 0);
      C0_DDR4PL1_cke      : out    std_logic_vector(0 downto 0);
      C0_DDR4PL1_dq       : inout  std_logic_vector(63 downto 0);
      C0_DDR4PL1_odt      : out    std_logic_vector(0 downto 0);
      C0_DDR4PL1_adr      : out    std_logic_vector(16 downto 0);
      C0_DDR4PL1_ck_c     : out    std_logic_vector(0 downto 0);
      C0_DDR4PL1_ck_t     : out    std_logic_vector(0 downto 0);
      C0_DDR4PL1_cs_n     : out    std_logic_vector(0 downto 0);
      C0_DDR4PL1_dm_n     : inout  std_logic_vector(7 downto 0);
      C0_DDR4PL1_dqs_c    : inout  std_logic_vector(7 downto 0);
      C0_DDR4PL1_dqs_t    : inout  std_logic_vector(7 downto 0);
      MDIO_mdc            : out    std_logic;
      MDIO_mdio_i         : in     std_logic;
      MDIO_mdio_o         : out    std_logic;
      MDIO_mdio_t         : out    std_logic;
      ETH_CLK125          : out    std_logic;
      ETH_CLK125_90       : out    std_logic;
      ETH_CLK25           : out    std_logic;
      ETH_CLK10           : out    std_logic;
      ETH_resetn          : out    std_logic;
      GMII_col            : in     std_logic;
      GMII_crs            : in     std_logic;
      GMII_rx_clk         : in     std_logic;
      GMII_rx_dv          : in     std_logic;
      GMII_rx_er          : in     std_logic;
      GMII_rxd            : in     std_logic_vector(7 downto 0);
      GMII_speed_mode     : out    std_logic_vector(2 downto 0);
      GMII_tx_clk         : in     std_logic;
      GMII_tx_en          : out    std_logic;
      GMII_tx_er          : out    std_logic;
      GMII_txd            : out    std_logic_vector(7 downto 0);
      LED_N_PL            : out    std_logic_vector(3 downto 0)
    );
  end component Andromeda_XZU80;
  
  component en_gmii2rgmii is
    port (
      Clk125          : in  std_logic;
      Clk125_90       : in  std_logic;
      Clk25           : in  std_logic;
      Clk10           : in  std_logic;
      Resetn          : in  std_logic;
  
      GMII_col        : out std_logic;
      GMII_crs        : out std_logic;
      GMII_rx_clk     : out std_logic;
      GMII_rx_dv      : out std_logic;
      GMII_rx_er      : out std_logic;
      GMII_rxd        : out std_logic_vector(7 downto 0);
      GMII_speed_mode : in  std_logic_vector(2 downto 0);
      GMII_tx_clk     : out std_logic;
      GMII_tx_en      : in  std_logic;
      GMII_tx_er      : in  std_logic;
      GMII_txd        : in  std_logic_vector(7 downto 0);
  
      RGMII_rxd       : in  std_logic_vector(3 downto 0);
      RGMII_rxclk     : in  std_logic;
      RGMII_rxctl     : in  std_logic;
      RGMII_txd       : out std_logic_vector(3 downto 0);
      RGMII_txclk     : out std_logic;
      RGMII_txctl     : out std_logic;
  
      Speed1000En     : out std_logic;
      Speed100En      : out std_logic;
      Speed10En       : out std_logic
    );
  end component en_gmii2rgmii;

  ----------------------------------------------------------------------------------------------------
  -- signal declarations
  ----------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk50            : std_logic;
  signal Rst_N            : std_logic;
  signal SYSMON_MUXADDR   : std_logic_vector(4 downto 0);
  signal MDIO_mdio_i      : std_logic;
  signal MDIO_mdio_o      : std_logic;
  signal MDIO_mdio_t      : std_logic;
  signal ETH_CLK125       : std_logic;
  signal ETH_CLK125_90    : std_logic;
  signal ETH_CLK25        : std_logic;
  signal ETH_CLK10        : std_logic;
  signal ETH_resetn       : std_logic;
  signal GMII_col         : std_logic;
  signal GMII_crs         : std_logic;
  signal GMII_rx_clk      : std_logic;
  signal GMII_rx_dv       : std_logic;
  signal GMII_rx_er       : std_logic;
  signal GMII_rxd         : std_logic_vector(7 downto 0);
  signal GMII_speed_mode  : std_logic_vector(2 downto 0);
  signal GMII_tx_clk      : std_logic;
  signal GMII_tx_en       : std_logic;
  signal GMII_tx_er       : std_logic;
  signal GMII_txd         : std_logic_vector(7 downto 0);
  signal LED_N_PL         : std_logic_vector(3 downto 0);
  signal LedCount         : unsigned(23 downto 0);
  
  ----------------------------------------------------------------------------------------------------
  -- attribute declarations
  ----------------------------------------------------------------------------------------------------

begin
  
  ----------------------------------------------------------------------------------------------------
  -- processor system instance
  ----------------------------------------------------------------------------------------------------
  Andromeda_XZU80_i: component Andromeda_XZU80
    port map (
      Clk100               => Clk100,
      Clk50                => Clk50,
      Rst_N                => Rst_N,
      SYSMON_vp            => SYSMON_VP,
      SYSMON_vn            => SYSMON_VN,
      SYSMON_addr          => SYSMON_MUXADDR,
      C0_SYS_CLKPL0_clk_n  => CLK100_PL0_N,
      C0_SYS_CLKPL0_clk_p  => CLK100_PL0_P,
      C0_DDR4PL0_act_n     => DDR4PL0_ACT_N,
      C0_DDR4PL0_reset_n   => DDR4PL0_RESET_N,
      C0_DDR4PL0_ba        => DDR4PL0_BA,
      C0_DDR4PL0_bg        => DDR4PL0_BG (BG_WIDTH-1 downto 0),
      C0_DDR4PL0_cke       => DDR4PL0_CKE,
      C0_DDR4PL0_dq        => DDR4PL0_DQ,
      C0_DDR4PL0_odt       => DDR4PL0_ODT,
      C0_DDR4PL0_adr       => DDR4PL0_A,
      C0_DDR4PL0_ck_c      => DDR4PL0_CK_N,
      C0_DDR4PL0_ck_t      => DDR4PL0_CK_P,
      C0_DDR4PL0_cs_n      => DDR4PL0_CS_N,
      C0_DDR4PL0_dm_n      => DDR4PL0_DM,
      C0_DDR4PL0_dqs_c     => DDR4PL0_DQS_N,
      C0_DDR4PL0_dqs_t     => DDR4PL0_DQS_P,
      C0_SYS_CLKPL1_clk_n  => CLK100_PL1_N,
      C0_SYS_CLKPL1_clk_p  => CLK100_PL1_P,
      C0_DDR4PL1_act_n     => DDR4PL1_ACT_N,
      C0_DDR4PL1_reset_n   => DDR4PL1_RESET_N,
      C0_DDR4PL1_ba        => DDR4PL1_BA,
      C0_DDR4PL1_bg        => DDR4PL1_BG (BG_WIDTH-1 downto 0),
      C0_DDR4PL1_cke       => DDR4PL1_CKE,
      C0_DDR4PL1_dq        => DDR4PL1_DQ,
      C0_DDR4PL1_odt       => DDR4PL1_ODT,
      C0_DDR4PL1_adr       => DDR4PL1_A,
      C0_DDR4PL1_ck_c      => DDR4PL1_CK_N,
      C0_DDR4PL1_ck_t      => DDR4PL1_CK_P,
      C0_DDR4PL1_cs_n      => DDR4PL1_CS_N,
      C0_DDR4PL1_dm_n      => DDR4PL1_DM,
      C0_DDR4PL1_dqs_c     => DDR4PL1_DQS_N,
      C0_DDR4PL1_dqs_t     => DDR4PL1_DQS_P,
      MDIO_mdc             => ETH1_MDC,
      MDIO_mdio_i          => MDIO_mdio_i,
      MDIO_mdio_o          => MDIO_mdio_o,
      MDIO_mdio_t          => MDIO_mdio_t,
      ETH_CLK125           => ETH_CLK125,
      ETH_CLK125_90        => ETH_CLK125_90,
      ETH_CLK25            => ETH_CLK25,
      ETH_CLK10            => ETH_CLK10,
      ETH_resetn           => ETH_resetn,
      GMII_col             => GMII_col,
      GMII_crs             => GMII_crs,
      GMII_rx_clk          => GMII_rx_clk,
      GMII_rx_dv           => GMII_rx_dv,
      GMII_rx_er           => GMII_rx_er,
      GMII_rxd             => GMII_rxd,
      GMII_speed_mode      => GMII_speed_mode,
      GMII_tx_clk          => GMII_tx_clk,
      GMII_tx_en           => GMII_tx_en,
      GMII_tx_er           => GMII_tx_er,
      GMII_txd             => GMII_txd,
      LED_N_PL             => LED_N_PL
    );
  
  -- input clock for clock generator 1
  CLK_CG1_M2C_obuf : OBUFTDS
  port map (
     O => CLK_CG1_M2C_P,
     OB => CLK_CG1_M2C_N,
     I => '0',
     T => '1'
  );
  
  -- input clock for clock generator 2
  CLK_CG2_M2C_obuf : OBUFTDS
  port map (
     O => CLK_CG2_M2C_P,
     OB => CLK_CG2_M2C_N,
     I => '0',
     T => '1'
  );
  
  VMON_A0 <= SYSMON_MUXADDR(0);
  VMON_A1 <= SYSMON_MUXADDR(1);
  
  MDIO_mdio_iobuf: component IOBUF
    port map (
      I => MDIO_mdio_o,
      IO => ETH1_MDIO,
      O => MDIO_mdio_i,
      T => MDIO_mdio_t
    );
  
  i_gmii2rgmii : en_gmii2rgmii
    port map (
      Clk125          => ETH_CLK125,
      Clk125_90       => ETH_CLK125_90,
      Clk25           => ETH_Clk25,
      Clk10           => ETH_Clk10,
      Resetn          => ETH_resetn,
  
      GMII_col        => GMII_col,
      GMII_crs        => GMII_crs,
      GMII_rx_clk     => GMII_rx_clk,
      GMII_rx_dv      => GMII_rx_dv,
      GMII_rx_er      => GMII_rx_er,
      GMII_rxd        => GMII_rxd,
      GMII_speed_mode => GMII_speed_mode,
      GMII_tx_clk     => GMII_tx_clk,
      GMII_tx_en      => GMII_tx_en,
      GMII_tx_er      => GMII_tx_er,
      GMII_txd        => GMII_txd,
  
      RGMII_rxd       => ETH1_RXD,
      RGMII_rxclk     => ETH1_RXCLK,
      RGMII_rxctl     => ETH1_RXCTL,
      RGMII_txd       => ETH1_TXD,
      RGMII_txclk     => ETH1_TXCLK,
      RGMII_txctl     => ETH1_TXCTL,
  
      Speed1000En     => open,
      Speed100En      => open,
      Speed10En       => open
    );
  
  ETH1_RESET_N <= ETH_resetn;
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  
  XZU80_LED0_N <= LedCount(LedCount'high);
  XZU80_LED1_N <= LED_N_PL(1);
  XZU80_LED2_N <= LED_N_PL(2);
  XZU80_LED3_N <= LED_N_PL(3);
  
end rtl;
