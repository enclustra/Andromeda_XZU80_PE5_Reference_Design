# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2025 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------

set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------

# DIP Switches
set_property -dict {PACKAGE_PIN P15   IOSTANDARD LVCMOS18  } [get_ports {DIP1_N_DP_AUX_P}]
set_property -dict {PACKAGE_PIN P14   IOSTANDARD LVCMOS18  } [get_ports {DIP2_N_DP_AUX_N}]

# User Led
set_property -dict {PACKAGE_PIN AB14  IOSTANDARD LVCMOS18  } [get_ports {LED2_N_DIP0_N}]
set_property -dict {PACKAGE_PIN AB13  IOSTANDARD LVCMOS18  } [get_ports {LED3_N_PWR_SYNC}]

# USER INPUT Buttons
set_property -dict {PACKAGE_PIN R14   IOSTANDARD LVCMOS18  } [get_ports {BTN0_N}]
set_property -dict {PACKAGE_PIN R13   IOSTANDARD LVCMOS18  } [get_ports {BTN1_N}]

# Clock Generator 1 C2M RefClk
set_property -dict {PACKAGE_PIN U14   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG1_C2M_N}]
set_property -dict {PACKAGE_PIN V14   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG1_C2M_P}]

# Clock Generator 1 M2C input clock 1
set_property -dict {PACKAGE_PIN U12   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG1_M2C_N}]
set_property -dict {PACKAGE_PIN V12   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG1_M2C_P}]

# Clock Generator C2M RefClk
set_property -dict {PACKAGE_PIN U13   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG2_C2M_N}]
set_property -dict {PACKAGE_PIN V13   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG2_C2M_P}]

# Clock Generator 2 M2C input clock 1
set_property -dict {PACKAGE_PIN T12   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG2_M2C_N}]
set_property -dict {PACKAGE_PIN T13   IOSTANDARD DIFF_HSTL_I_18} [get_ports {CLK_CG2_M2C_P}]

# Digital IO In
set_property -dict {PACKAGE_PIN AA13  IOSTANDARD LVCMOS18  } [get_ports {DII_N}]

# Digital IO Out
set_property -dict {PACKAGE_PIN Y13   IOSTANDARD LVCMOS18  } [get_ports {DIO_N}]

# FMC Connector 0
set_property -dict {PACKAGE_PIN G39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA02_E3B0_N}]
set_property -dict {PACKAGE_PIN H39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA02_E3B0_P}]
set_property -dict {PACKAGE_PIN F38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA03_E3B1_N}]
set_property -dict {PACKAGE_PIN G38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA03_E3B1_P}]
set_property -dict {PACKAGE_PIN E37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA04_E3B2_N}]
set_property -dict {PACKAGE_PIN F37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA04_E3B2_P}]
set_property -dict {PACKAGE_PIN E35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA05_E3B3_N}]
set_property -dict {PACKAGE_PIN E34   IOSTANDARD LVCMOS18  } [get_ports {F0_HA05_E3B3_P}]
set_property -dict {PACKAGE_PIN B36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA06_E3AS_N}]
set_property -dict {PACKAGE_PIN C36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA06_E3AS_P}]
set_property -dict {PACKAGE_PIN D36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA07_E3A0_N}]
set_property -dict {PACKAGE_PIN D35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA07_E3A0_P}]
set_property -dict {PACKAGE_PIN A38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA08_E3A1_N}]
set_property -dict {PACKAGE_PIN B38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA08_E3A1_P}]
set_property -dict {PACKAGE_PIN C39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA09_E3A2_N}]
set_property -dict {PACKAGE_PIN D39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA09_E3A2_P}]
set_property -dict {PACKAGE_PIN C37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA10_E3A3_N}]
set_property -dict {PACKAGE_PIN D37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA10_E3A3_P}]
set_property -dict {PACKAGE_PIN E39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA11_E3AC_N}]
set_property -dict {PACKAGE_PIN E38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA11_E3AC_P}]
set_property -dict {PACKAGE_PIN J39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA12_E4AS_N}]
set_property -dict {PACKAGE_PIN K39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA12_E4AS_P}]
set_property -dict {PACKAGE_PIN L36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA13_E4A0_N}]
set_property -dict {PACKAGE_PIN M36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA13_E4A0_P}]
set_property -dict {PACKAGE_PIN H38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA14_E4A1_N}]
set_property -dict {PACKAGE_PIN H37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA14_E4A1_P}]
set_property -dict {PACKAGE_PIN K38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA15_E4A2_N}]
set_property -dict {PACKAGE_PIN K37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA15_E4A2_P}]
set_property -dict {PACKAGE_PIN L38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA16_E4A3_N}]
set_property -dict {PACKAGE_PIN L37   IOSTANDARD LVCMOS18  } [get_ports {F0_HA16_E4A3_P}]
set_property -dict {PACKAGE_PIN M35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA18_E4B0_N}]
set_property -dict {PACKAGE_PIN M34   IOSTANDARD LVCMOS18  } [get_ports {F0_HA18_E4B0_P}]
set_property -dict {PACKAGE_PIN K33   IOSTANDARD LVCMOS18  } [get_ports {F0_HA19_E4B1_N}]
set_property -dict {PACKAGE_PIN L33   IOSTANDARD LVCMOS18  } [get_ports {F0_HA19_E4B1_P}]
set_property -dict {PACKAGE_PIN K35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA20_E4B2_N}]
set_property -dict {PACKAGE_PIN L35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA20_E4B2_P}]
set_property -dict {PACKAGE_PIN J35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA21_E4B3_N}]
set_property -dict {PACKAGE_PIN J34   IOSTANDARD LVCMOS18  } [get_ports {F0_HA21_E4B3_P}]
set_property -dict {PACKAGE_PIN H36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA22_E4BC_N}]
set_property -dict {PACKAGE_PIN J36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA22_E4BC_P}]
set_property -dict {PACKAGE_PIN M39   IOSTANDARD LVCMOS18  } [get_ports {F0_HA23_E4AC_N}]
set_property -dict {PACKAGE_PIN M38   IOSTANDARD LVCMOS18  } [get_ports {F0_HA23_E4AC_P}]
set_property -dict {PACKAGE_PIN AK6   IOSTANDARD LVCMOS18  } [get_ports {F0_LA02_E0B0_N}]
set_property -dict {PACKAGE_PIN AK7   IOSTANDARD LVCMOS18  } [get_ports {F0_LA02_E0B0_P}]
set_property -dict {PACKAGE_PIN AN9   IOSTANDARD LVCMOS18  } [get_ports {F0_LA03_E0B1_N}]
set_property -dict {PACKAGE_PIN AM9   IOSTANDARD LVCMOS18  } [get_ports {F0_LA03_E0B1_P}]
set_property -dict {PACKAGE_PIN AK8   IOSTANDARD LVCMOS18  } [get_ports {F0_LA04_E0B2_N}]
set_property -dict {PACKAGE_PIN AK9   IOSTANDARD LVCMOS18  } [get_ports {F0_LA04_E0B2_P}]
set_property -dict {PACKAGE_PIN AP9   IOSTANDARD LVCMOS18  } [get_ports {F0_LA05_E0B3_N}]
set_property -dict {PACKAGE_PIN AP10  IOSTANDARD LVCMOS18  } [get_ports {F0_LA05_E0B3_P}]
set_property -dict {PACKAGE_PIN AM11  IOSTANDARD LVCMOS18  } [get_ports {F0_LA06_E0AS_N}]
set_property -dict {PACKAGE_PIN AL11  IOSTANDARD LVCMOS18  } [get_ports {F0_LA06_E0AS_P}]
set_property -dict {PACKAGE_PIN AL12  IOSTANDARD LVCMOS18  } [get_ports {F0_LA07_E0A0_N}]
set_property -dict {PACKAGE_PIN AK12  IOSTANDARD LVCMOS18  } [get_ports {F0_LA07_E0A0_P}]
set_property -dict {PACKAGE_PIN AN13  IOSTANDARD LVCMOS18  } [get_ports {F0_LA08_E0A1_N}]
set_property -dict {PACKAGE_PIN AM13  IOSTANDARD LVCMOS18  } [get_ports {F0_LA08_E0A1_P}]
set_property -dict {PACKAGE_PIN AN11  IOSTANDARD LVCMOS18  } [get_ports {F0_LA09_E0A2_N}]
set_property -dict {PACKAGE_PIN AN12  IOSTANDARD LVCMOS18  } [get_ports {F0_LA09_E0A2_P}]
set_property -dict {PACKAGE_PIN AJ10  IOSTANDARD LVCMOS18  } [get_ports {F0_LA10_E0A3_N}]
set_property -dict {PACKAGE_PIN AJ11  IOSTANDARD LVCMOS18  } [get_ports {F0_LA10_E0A3_P}]
set_property -dict {PACKAGE_PIN AL10  IOSTANDARD LVCMOS18  } [get_ports {F0_LA11_E0AC_N}]
set_property -dict {PACKAGE_PIN AK10  IOSTANDARD LVCMOS18  } [get_ports {F0_LA11_E0AC_P}]
set_property -dict {PACKAGE_PIN AP4   IOSTANDARD LVCMOS18  } [get_ports {F0_LA12_E1B0_N}]
set_property -dict {PACKAGE_PIN AP5   IOSTANDARD LVCMOS18  } [get_ports {F0_LA12_E1B0_P}]
set_property -dict {PACKAGE_PIN AK3   IOSTANDARD LVCMOS18  } [get_ports {F0_LA13_E1B1_N}]
set_property -dict {PACKAGE_PIN AK4   IOSTANDARD LVCMOS18  } [get_ports {F0_LA13_E1B1_P}]
set_property -dict {PACKAGE_PIN AP6   IOSTANDARD LVCMOS18  } [get_ports {F0_LA14_E1B2_N}]
set_property -dict {PACKAGE_PIN AP7   IOSTANDARD LVCMOS18  } [get_ports {F0_LA14_E1B2_P}]
set_property -dict {PACKAGE_PIN AM5   IOSTANDARD LVCMOS18  } [get_ports {F0_LA15_E1B3_N}]
set_property -dict {PACKAGE_PIN AL6   IOSTANDARD LVCMOS18  } [get_ports {F0_LA15_E1B3_P}]
set_property -dict {PACKAGE_PIN AL1   IOSTANDARD LVCMOS18  } [get_ports {F0_LA16_E1AC_N}]
set_property -dict {PACKAGE_PIN AK1   IOSTANDARD LVCMOS18  } [get_ports {F0_LA16_E1AC_P}]
set_property -dict {PACKAGE_PIN AN16  IOSTANDARD LVCMOS18  } [get_ports {F0_LA19_E2B0_N}]
set_property -dict {PACKAGE_PIN AN17  IOSTANDARD LVCMOS18  } [get_ports {F0_LA19_E2B0_P}]
set_property -dict {PACKAGE_PIN AM18  IOSTANDARD LVCMOS18  } [get_ports {F0_LA20_E2B1_N}]
set_property -dict {PACKAGE_PIN AM19  IOSTANDARD LVCMOS18  } [get_ports {F0_LA20_E2B1_P}]
set_property -dict {PACKAGE_PIN AP14  IOSTANDARD LVCMOS18  } [get_ports {F0_LA21_E2B2_N}]
set_property -dict {PACKAGE_PIN AN14  IOSTANDARD LVCMOS18  } [get_ports {F0_LA21_E2B2_P}]
set_property -dict {PACKAGE_PIN AR15  IOSTANDARD LVCMOS18  } [get_ports {F0_LA22_E2B3_N}]
set_property -dict {PACKAGE_PIN AP15  IOSTANDARD LVCMOS18  } [get_ports {F0_LA22_E2B3_P}]
set_property -dict {PACKAGE_PIN AN1   IOSTANDARD LVCMOS18  } [get_ports {F0_LA23_E1AS_N}]
set_property -dict {PACKAGE_PIN AN2   IOSTANDARD LVCMOS18  } [get_ports {F0_LA23_E1AS_P}]
set_property -dict {PACKAGE_PIN AM3   IOSTANDARD LVCMOS18  } [get_ports {F0_LA24_E1A0_N}]
set_property -dict {PACKAGE_PIN AL3   IOSTANDARD LVCMOS18  } [get_ports {F0_LA24_E1A0_P}]
set_property -dict {PACKAGE_PIN AN3   IOSTANDARD LVCMOS18  } [get_ports {F0_LA25_E1A1_N}]
set_property -dict {PACKAGE_PIN AN4   IOSTANDARD LVCMOS18  } [get_ports {F0_LA25_E1A1_P}]
set_property -dict {PACKAGE_PIN AP1   IOSTANDARD LVCMOS18  } [get_ports {F0_LA26_E1A2_N}]
set_property -dict {PACKAGE_PIN AP2   IOSTANDARD LVCMOS18  } [get_ports {F0_LA26_E1A2_P}]
set_property -dict {PACKAGE_PIN AL2   IOSTANDARD LVCMOS18  } [get_ports {F0_LA27_E1A3_N}]
set_property -dict {PACKAGE_PIN AK2   IOSTANDARD LVCMOS18  } [get_ports {F0_LA27_E1A3_P}]
set_property -dict {PACKAGE_PIN AL18  IOSTANDARD LVCMOS18  } [get_ports {F0_LA28_E2AS_N}]
set_property -dict {PACKAGE_PIN AK18  IOSTANDARD LVCMOS18  } [get_ports {F0_LA28_E2AS_P}]
set_property -dict {PACKAGE_PIN AJ16  IOSTANDARD LVCMOS18  } [get_ports {F0_LA29_E2A0_N}]
set_property -dict {PACKAGE_PIN AJ17  IOSTANDARD LVCMOS18  } [get_ports {F0_LA29_E2A0_P}]
set_property -dict {PACKAGE_PIN AM14  IOSTANDARD LVCMOS18  } [get_ports {F0_LA30_E2A1_N}]
set_property -dict {PACKAGE_PIN AM15  IOSTANDARD LVCMOS18  } [get_ports {F0_LA30_E2A1_P}]
set_property -dict {PACKAGE_PIN AK19  IOSTANDARD LVCMOS18  } [get_ports {F0_LA31_E2A2_N}]
set_property -dict {PACKAGE_PIN AJ19  IOSTANDARD LVCMOS18  } [get_ports {F0_LA31_E2A2_P}]
set_property -dict {PACKAGE_PIN AL15  IOSTANDARD LVCMOS18  } [get_ports {F0_LA32_E2A3_N}]
set_property -dict {PACKAGE_PIN AL16  IOSTANDARD LVCMOS18  } [get_ports {F0_LA32_E2A3_P}]
set_property -dict {PACKAGE_PIN AL17  IOSTANDARD LVCMOS18  } [get_ports {F0_LA33_E2AC_N}]
set_property -dict {PACKAGE_PIN AK17  IOSTANDARD LVCMOS18  } [get_ports {F0_LA33_E2AC_P}]
set_property -dict {PACKAGE_PIN AU10  IOSTANDARD LVCMOS18  } [get_ports {F0_DP0_C2M_N}]
set_property -dict {PACKAGE_PIN AT10  IOSTANDARD LVCMOS18  } [get_ports {F0_DP0_C2M_P}]
set_property -dict {PACKAGE_PIN AR12  IOSTANDARD LVCMOS18  } [get_ports {F0_DP0_M2C_N}]
set_property -dict {PACKAGE_PIN AR13  IOSTANDARD LVCMOS18  } [get_ports {F0_DP0_M2C_P}]
set_property -dict {PACKAGE_PIN AW10  IOSTANDARD LVCMOS18  } [get_ports {F0_DP1_C2M_N}]
set_property -dict {PACKAGE_PIN AW11  IOSTANDARD LVCMOS18  } [get_ports {F0_DP1_C2M_P}]
set_property -dict {PACKAGE_PIN AV11  IOSTANDARD LVCMOS18  } [get_ports {F0_DP1_M2C_N}]
set_property -dict {PACKAGE_PIN AU11  IOSTANDARD LVCMOS18  } [get_ports {F0_DP1_M2C_P}]
set_property -dict {PACKAGE_PIN AR8   IOSTANDARD LVCMOS18  } [get_ports {F0_DP2_C2M_N}]
set_property -dict {PACKAGE_PIN AR9   IOSTANDARD LVCMOS18  } [get_ports {F0_DP2_C2M_P}]
set_property -dict {PACKAGE_PIN AV13  IOSTANDARD LVCMOS18  } [get_ports {F0_DP2_M2C_N}]
set_property -dict {PACKAGE_PIN AU13  IOSTANDARD LVCMOS18  } [get_ports {F0_DP2_M2C_P}]
set_property -dict {PACKAGE_PIN AW9   IOSTANDARD LVCMOS18  } [get_ports {F0_DP3_C2M_N}]
set_property -dict {PACKAGE_PIN AV9   IOSTANDARD LVCMOS18  } [get_ports {F0_DP3_C2M_P}]
set_property -dict {PACKAGE_PIN AR10  IOSTANDARD LVCMOS18  } [get_ports {F0_DP3_M2C_N}]
set_property -dict {PACKAGE_PIN AP11  IOSTANDARD LVCMOS18  } [get_ports {F0_DP3_M2C_P}]
set_property -dict {PACKAGE_PIN AW6   IOSTANDARD LVCMOS18  } [get_ports {F0_DP4_C2M_N}]
set_property -dict {PACKAGE_PIN AW7   IOSTANDARD LVCMOS18  } [get_ports {F0_DP4_C2M_P}]
set_property -dict {PACKAGE_PIN AW3   IOSTANDARD LVCMOS18  } [get_ports {F0_DP4_M2C_N}]
set_property -dict {PACKAGE_PIN AV3   IOSTANDARD LVCMOS18  } [get_ports {F0_DP4_M2C_P}]
set_property -dict {PACKAGE_PIN AR4   IOSTANDARD LVCMOS18  } [get_ports {F0_DP5_C2M_N}]
set_property -dict {PACKAGE_PIN AR5   IOSTANDARD LVCMOS18  } [get_ports {F0_DP5_C2M_P}]
set_property -dict {PACKAGE_PIN AV4   IOSTANDARD LVCMOS18  } [get_ports {F0_DP5_M2C_N}]
set_property -dict {PACKAGE_PIN AU4   IOSTANDARD LVCMOS18  } [get_ports {F0_DP5_M2C_P}]
set_property -dict {PACKAGE_PIN AW5   IOSTANDARD LVCMOS18  } [get_ports {F0_DP6_C2M_N}]
set_property -dict {PACKAGE_PIN AV6   IOSTANDARD LVCMOS18  } [get_ports {F0_DP6_C2M_P}]
set_property -dict {PACKAGE_PIN AT2   IOSTANDARD LVCMOS18  } [get_ports {F0_DP6_M2C_N}]
set_property -dict {PACKAGE_PIN AR2   IOSTANDARD LVCMOS18  } [get_ports {F0_DP6_M2C_P}]
set_property -dict {PACKAGE_PIN AU5   IOSTANDARD LVCMOS18  } [get_ports {F0_DP7_C2M_N}]
set_property -dict {PACKAGE_PIN AU6   IOSTANDARD LVCMOS18  } [get_ports {F0_DP7_C2M_P}]
set_property -dict {PACKAGE_PIN AV2   IOSTANDARD LVCMOS18  } [get_ports {F0_DP7_M2C_N}]
set_property -dict {PACKAGE_PIN AU2   IOSTANDARD LVCMOS18  } [get_ports {F0_DP7_M2C_P}]
set_property -dict {PACKAGE_PIN G36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA00_E3BS_CC_N}]
set_property -dict {PACKAGE_PIN G35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA00_E3BS_CC_P}]
set_property -dict {PACKAGE_PIN F36   IOSTANDARD LVCMOS18  } [get_ports {F0_HA01_E3BC_CC_N}]
set_property -dict {PACKAGE_PIN F35   IOSTANDARD LVCMOS18  } [get_ports {F0_HA01_E3BC_CC_P}]
set_property -dict {PACKAGE_PIN H34   IOSTANDARD LVCMOS18  } [get_ports {F0_HA17_E4BS_CC_N}]
set_property -dict {PACKAGE_PIN H33   IOSTANDARD LVCMOS18  } [get_ports {F0_HA17_E4BS_CC_P}]
set_property -dict {PACKAGE_PIN AL7   IOSTANDARD LVCMOS18  } [get_ports {F0_LA00_E0BS_CC_N}]
set_property -dict {PACKAGE_PIN AL8   IOSTANDARD LVCMOS18  } [get_ports {F0_LA00_E0BS_CC_P}]
set_property -dict {PACKAGE_PIN AN7   IOSTANDARD LVCMOS18  } [get_ports {F0_LA01_E0BC_CC_N}]
set_property -dict {PACKAGE_PIN AN8   IOSTANDARD LVCMOS18  } [get_ports {F0_LA01_E0BC_CC_P}]
set_property -dict {PACKAGE_PIN AN18  IOSTANDARD LVCMOS18  } [get_ports {F0_LA17_E2BS_CC_N}]
set_property -dict {PACKAGE_PIN AN19  IOSTANDARD LVCMOS18  } [get_ports {F0_LA17_E2BS_CC_P}]
set_property -dict {PACKAGE_PIN AP16  IOSTANDARD LVCMOS18  } [get_ports {F0_LA18_E2BC_CC_N}]
set_property -dict {PACKAGE_PIN AP17  IOSTANDARD LVCMOS18  } [get_ports {F0_LA18_E2BC_CC_P}]
set_property -dict {PACKAGE_PIN AN6   IOSTANDARD LVCMOS18  } [get_ports {F0_CLK0_E1BC_N}]
set_property -dict {PACKAGE_PIN AM6   IOSTANDARD LVCMOS18  } [get_ports {F0_CLK0_E1BC_P}]
set_property -dict {PACKAGE_PIN AL5   IOSTANDARD LVCMOS18  } [get_ports {F0_CLK1_E1BS_N}]
set_property -dict {PACKAGE_PIN AK5   IOSTANDARD LVCMOS18  } [get_ports {F0_CLK1_E1BS_P}]
set_property -dict {PACKAGE_PIN AW12  IOSTANDARD LVCMOS18  } [get_ports {F0_GBTCLK0_M2C_N}]
set_property -dict {PACKAGE_PIN AV12  IOSTANDARD LVCMOS18  } [get_ports {F0_GBTCLK0_M2C_P}]
set_property -dict {PACKAGE_PIN AT3   IOSTANDARD LVCMOS18  } [get_ports {F0_GBTCLK1_M2C_N}]
set_property -dict {PACKAGE_PIN AR3   IOSTANDARD LVCMOS18  } [get_ports {F0_GBTCLK1_M2C_P}]

# FMC Connector 1
set_property -dict {PACKAGE_PIN D32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA02_E3B0_N}]
set_property -dict {PACKAGE_PIN E32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA02_E3B0_P}]
set_property -dict {PACKAGE_PIN B31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA03_E3B1_N}]
set_property -dict {PACKAGE_PIN B30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA03_E3B1_P}]
set_property -dict {PACKAGE_PIN C32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA04_E3B2_N}]
set_property -dict {PACKAGE_PIN C31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA04_E3B2_P}]
set_property -dict {PACKAGE_PIN A31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA05_E3B3_N}]
set_property -dict {PACKAGE_PIN A30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA05_E3B3_P}]
set_property -dict {PACKAGE_PIN A37   IOSTANDARD LVCMOS18  } [get_ports {F1_HA06_E3AS_N}]
set_property -dict {PACKAGE_PIN A36   IOSTANDARD LVCMOS18  } [get_ports {F1_HA06_E3AS_P}]
set_property -dict {PACKAGE_PIN B33   IOSTANDARD LVCMOS18  } [get_ports {F1_HA07_E3A0_N}]
set_property -dict {PACKAGE_PIN C33   IOSTANDARD LVCMOS18  } [get_ports {F1_HA07_E3A0_P}]
set_property -dict {PACKAGE_PIN A33   IOSTANDARD LVCMOS18  } [get_ports {F1_HA08_E3A1_N}]
set_property -dict {PACKAGE_PIN A32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA08_E3A1_P}]
set_property -dict {PACKAGE_PIN B35   IOSTANDARD LVCMOS18  } [get_ports {F1_HA09_E3A2_N}]
set_property -dict {PACKAGE_PIN B34   IOSTANDARD LVCMOS18  } [get_ports {F1_HA09_E3A2_P}]
set_property -dict {PACKAGE_PIN C34   IOSTANDARD LVCMOS18  } [get_ports {F1_HA10_E3A3_N}]
set_property -dict {PACKAGE_PIN D34   IOSTANDARD LVCMOS18  } [get_ports {F1_HA10_E3A3_P}]
set_property -dict {PACKAGE_PIN E33   IOSTANDARD LVCMOS18  } [get_ports {F1_HA11_E3AC_N}]
set_property -dict {PACKAGE_PIN F33   IOSTANDARD LVCMOS18  } [get_ports {F1_HA11_E3AC_P}]
set_property -dict {PACKAGE_PIN L30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA12_E4AS_N}]
set_property -dict {PACKAGE_PIN M29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA12_E4AS_P}]
set_property -dict {PACKAGE_PIN K32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA13_E4A0_N}]
set_property -dict {PACKAGE_PIN L32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA13_E4A0_P}]
set_property -dict {PACKAGE_PIN K30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA14_E4A1_N}]
set_property -dict {PACKAGE_PIN K29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA14_E4A1_P}]
set_property -dict {PACKAGE_PIN N29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA15_E4A2_N}]
set_property -dict {PACKAGE_PIN N28   IOSTANDARD LVCMOS18  } [get_ports {F1_HA15_E4A2_P}]
set_property -dict {PACKAGE_PIN N32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA16_E4A3_N}]
set_property -dict {PACKAGE_PIN N31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA16_E4A3_P}]
set_property -dict {PACKAGE_PIN J30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA18_E4B0_N}]
set_property -dict {PACKAGE_PIN J29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA18_E4B0_P}]
set_property -dict {PACKAGE_PIN G33   IOSTANDARD LVCMOS18  } [get_ports {F1_HA19_E4B1_N}]
set_property -dict {PACKAGE_PIN H32   IOSTANDARD LVCMOS18  } [get_ports {F1_HA19_E4B1_P}]
set_property -dict {PACKAGE_PIN H31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA20_E4B2_N}]
set_property -dict {PACKAGE_PIN J31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA20_E4B2_P}]
set_property -dict {PACKAGE_PIN G31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA21_E4B3_N}]
set_property -dict {PACKAGE_PIN G30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA21_E4B3_P}]
set_property -dict {PACKAGE_PIN F31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA22_E4BC_N}]
set_property -dict {PACKAGE_PIN F30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA22_E4BC_P}]
set_property -dict {PACKAGE_PIN L31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA23_E4AC_N}]
set_property -dict {PACKAGE_PIN M31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA23_E4AC_P}]
set_property -dict {PACKAGE_PIN P32   IOSTANDARD LVCMOS18  } [get_ports {F1_LA02_E0B0_N}]
set_property -dict {PACKAGE_PIN P31   IOSTANDARD LVCMOS18  } [get_ports {F1_LA02_E0B0_P}]
set_property -dict {PACKAGE_PIN U31   IOSTANDARD LVCMOS18  } [get_ports {F1_LA03_E0B1_N}]
set_property -dict {PACKAGE_PIN U30   IOSTANDARD LVCMOS18  } [get_ports {F1_LA03_E0B1_P}]
set_property -dict {PACKAGE_PIN R30   IOSTANDARD LVCMOS18  } [get_ports {F1_LA04_E0B2_N}]
set_property -dict {PACKAGE_PIN T30   IOSTANDARD LVCMOS18  } [get_ports {F1_LA04_E0B2_P}]
set_property -dict {PACKAGE_PIN T32   IOSTANDARD LVCMOS18  } [get_ports {F1_LA05_E0B3_N}]
set_property -dict {PACKAGE_PIN T31   IOSTANDARD LVCMOS18  } [get_ports {F1_LA05_E0B3_P}]
set_property -dict {PACKAGE_PIN V29   IOSTANDARD LVCMOS18  } [get_ports {F1_LA06_E0AS_N}]
set_property -dict {PACKAGE_PIN V28   IOSTANDARD LVCMOS18  } [get_ports {F1_LA06_E0AS_P}]
set_property -dict {PACKAGE_PIN R27   IOSTANDARD LVCMOS18  } [get_ports {F1_LA07_E0A0_N}]
set_property -dict {PACKAGE_PIN T26   IOSTANDARD LVCMOS18  } [get_ports {F1_LA07_E0A0_P}]
set_property -dict {PACKAGE_PIN U29   IOSTANDARD LVCMOS18  } [get_ports {F1_LA08_E0A1_N}]
set_property -dict {PACKAGE_PIN U28   IOSTANDARD LVCMOS18  } [get_ports {F1_LA08_E0A1_P}]
set_property -dict {PACKAGE_PIN V27   IOSTANDARD LVCMOS18  } [get_ports {F1_LA09_E0A2_N}]
set_property -dict {PACKAGE_PIN V26   IOSTANDARD LVCMOS18  } [get_ports {F1_LA09_E0A2_P}]
set_property -dict {PACKAGE_PIN T28   IOSTANDARD LVCMOS18  } [get_ports {F1_LA10_E0A3_N}]
set_property -dict {PACKAGE_PIN T27   IOSTANDARD LVCMOS18  } [get_ports {F1_LA10_E0A3_P}]
set_property -dict {PACKAGE_PIN P29   IOSTANDARD LVCMOS18  } [get_ports {F1_LA11_E0AC_N}]
set_property -dict {PACKAGE_PIN R29   IOSTANDARD LVCMOS18  } [get_ports {F1_LA11_E0AC_P}]
set_property -dict {PACKAGE_PIN N36   IOSTANDARD LVCMOS18  } [get_ports {F1_LA12_E1B0_N}]
set_property -dict {PACKAGE_PIN P36   IOSTANDARD LVCMOS18  } [get_ports {F1_LA12_E1B0_P}]
set_property -dict {PACKAGE_PIN T36   IOSTANDARD LVCMOS18  } [get_ports {F1_LA13_E1B1_N}]
set_property -dict {PACKAGE_PIN U36   IOSTANDARD LVCMOS18  } [get_ports {F1_LA13_E1B1_P}]
set_property -dict {PACKAGE_PIN N34   IOSTANDARD LVCMOS18  } [get_ports {F1_LA14_E1B2_N}]
set_property -dict {PACKAGE_PIN N33   IOSTANDARD LVCMOS18  } [get_ports {F1_LA14_E1B2_P}]
set_property -dict {PACKAGE_PIN P35   IOSTANDARD LVCMOS18  } [get_ports {F1_LA15_E1B3_N}]
set_property -dict {PACKAGE_PIN P34   IOSTANDARD LVCMOS18  } [get_ports {F1_LA15_E1B3_P}]
set_property -dict {PACKAGE_PIN P39   IOSTANDARD LVCMOS18  } [get_ports {F1_LA16_E1AC_N}]
set_property -dict {PACKAGE_PIN R39   IOSTANDARD LVCMOS18  } [get_ports {F1_LA16_E1AC_P}]
set_property -dict {PACKAGE_PIN AU15  IOSTANDARD LVCMOS18  } [get_ports {F1_LA19_E2B0_N}]
set_property -dict {PACKAGE_PIN AT15  IOSTANDARD LVCMOS18  } [get_ports {F1_LA19_E2B0_P}]
set_property -dict {PACKAGE_PIN AT18  IOSTANDARD LVCMOS18  } [get_ports {F1_LA20_E2B1_N}]
set_property -dict {PACKAGE_PIN AR19  IOSTANDARD LVCMOS18  } [get_ports {F1_LA20_E2B1_P}]
set_property -dict {PACKAGE_PIN AU18  IOSTANDARD LVCMOS18  } [get_ports {F1_LA21_E2B2_N}]
set_property -dict {PACKAGE_PIN AU19  IOSTANDARD LVCMOS18  } [get_ports {F1_LA21_E2B2_P}]
set_property -dict {PACKAGE_PIN AU20  IOSTANDARD LVCMOS18  } [get_ports {F1_LA22_E2B3_N}]
set_property -dict {PACKAGE_PIN AT20  IOSTANDARD LVCMOS18  } [get_ports {F1_LA22_E2B3_P}]
set_property -dict {PACKAGE_PIN T38   IOSTANDARD LVCMOS18  } [get_ports {F1_LA23_E1AS_N}]
set_property -dict {PACKAGE_PIN U38   IOSTANDARD LVCMOS18  } [get_ports {F1_LA23_E1AS_P}]
set_property -dict {PACKAGE_PIN P37   IOSTANDARD LVCMOS18  } [get_ports {F1_LA24_E1A0_N}]
set_property -dict {PACKAGE_PIN R37   IOSTANDARD LVCMOS18  } [get_ports {F1_LA24_E1A0_P}]
set_property -dict {PACKAGE_PIN R38   IOSTANDARD LVCMOS18  } [get_ports {F1_LA25_E1A1_N}]
set_property -dict {PACKAGE_PIN T37   IOSTANDARD LVCMOS18  } [get_ports {F1_LA25_E1A1_P}]
set_property -dict {PACKAGE_PIN U39   IOSTANDARD LVCMOS18  } [get_ports {F1_LA26_E1A2_N}]
set_property -dict {PACKAGE_PIN V39   IOSTANDARD LVCMOS18  } [get_ports {F1_LA26_E1A2_P}]
set_property -dict {PACKAGE_PIN N39   IOSTANDARD LVCMOS18  } [get_ports {F1_LA27_E1A3_N}]
set_property -dict {PACKAGE_PIN N38   IOSTANDARD LVCMOS18  } [get_ports {F1_LA27_E1A3_P}]
set_property -dict {PACKAGE_PIN AV18  IOSTANDARD LVCMOS18  } [get_ports {F1_LA28_E2AS_N}]
set_property -dict {PACKAGE_PIN AV19  IOSTANDARD LVCMOS18  } [get_ports {F1_LA28_E2AS_P}]
set_property -dict {PACKAGE_PIN AW16  IOSTANDARD LVCMOS18  } [get_ports {F1_LA29_E2A0_N}]
set_property -dict {PACKAGE_PIN AW17  IOSTANDARD LVCMOS18  } [get_ports {F1_LA29_E2A0_P}]
set_property -dict {PACKAGE_PIN AW19  IOSTANDARD LVCMOS18  } [get_ports {F1_LA30_E2A1_N}]
set_property -dict {PACKAGE_PIN AW20  IOSTANDARD LVCMOS18  } [get_ports {F1_LA30_E2A1_P}]
set_property -dict {PACKAGE_PIN AV16  IOSTANDARD LVCMOS18  } [get_ports {F1_LA31_E2A2_N}]
set_property -dict {PACKAGE_PIN AU16  IOSTANDARD LVCMOS18  } [get_ports {F1_LA31_E2A2_P}]
set_property -dict {PACKAGE_PIN AW14  IOSTANDARD LVCMOS18  } [get_ports {F1_LA32_E2A3_N}]
set_property -dict {PACKAGE_PIN AW15  IOSTANDARD LVCMOS18  } [get_ports {F1_LA32_E2A3_P}]
set_property -dict {PACKAGE_PIN AV14  IOSTANDARD LVCMOS18  } [get_ports {F1_LA33_E2AC_N}]
set_property -dict {PACKAGE_PIN AU14  IOSTANDARD LVCMOS18  } [get_ports {F1_LA33_E2AC_P}]
set_property -dict {PACKAGE_PIN N16   IOSTANDARD LVCMOS18  } [get_ports {F1_DP4_C2M_N}]
set_property -dict {PACKAGE_PIN P16   IOSTANDARD LVCMOS18  } [get_ports {F1_DP4_C2M_P}]
set_property -dict {PACKAGE_PIN J14   IOSTANDARD LVCMOS18  } [get_ports {F1_DP4_M2C_N}]
set_property -dict {PACKAGE_PIN K14   IOSTANDARD LVCMOS18  } [get_ports {F1_DP4_M2C_P}]
set_property -dict {PACKAGE_PIN L16   IOSTANDARD LVCMOS18  } [get_ports {F1_DP5_C2M_N}]
set_property -dict {PACKAGE_PIN M16   IOSTANDARD LVCMOS18  } [get_ports {F1_DP5_C2M_P}]
set_property -dict {PACKAGE_PIN G13   IOSTANDARD LVCMOS18  } [get_ports {F1_DP5_M2C_N}]
set_property -dict {PACKAGE_PIN H13   IOSTANDARD LVCMOS18  } [get_ports {F1_DP5_M2C_P}]
set_property -dict {PACKAGE_PIN M14   IOSTANDARD LVCMOS18  } [get_ports {F1_DP6_C2M_N}]
set_property -dict {PACKAGE_PIN N14   IOSTANDARD LVCMOS18  } [get_ports {F1_DP6_C2M_P}]
set_property -dict {PACKAGE_PIN G14   IOSTANDARD LVCMOS18  } [get_ports {F1_DP6_M2C_N}]
set_property -dict {PACKAGE_PIN H14   IOSTANDARD LVCMOS18  } [get_ports {F1_DP6_M2C_P}]
set_property -dict {PACKAGE_PIN L15   IOSTANDARD LVCMOS18  } [get_ports {F1_DP7_C2M_N}]
set_property -dict {PACKAGE_PIN M15   IOSTANDARD LVCMOS18  } [get_ports {F1_DP7_C2M_P}]
set_property -dict {PACKAGE_PIN J15   IOSTANDARD LVCMOS18  } [get_ports {F1_DP7_M2C_N}]
set_property -dict {PACKAGE_PIN K15   IOSTANDARD LVCMOS18  } [get_ports {F1_DP7_M2C_P}]
set_property -dict {PACKAGE_PIN E30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA00_E3BS_CC_N}]
set_property -dict {PACKAGE_PIN E29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA00_E3BS_CC_P}]
set_property -dict {PACKAGE_PIN D31   IOSTANDARD LVCMOS18  } [get_ports {F1_HA01_E3BC_CC_N}]
set_property -dict {PACKAGE_PIN D30   IOSTANDARD LVCMOS18  } [get_ports {F1_HA01_E3BC_CC_P}]
set_property -dict {PACKAGE_PIN G29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA17_E4BS_CC_N}]
set_property -dict {PACKAGE_PIN H29   IOSTANDARD LVCMOS18  } [get_ports {F1_HA17_E4BS_CC_P}]
set_property -dict {PACKAGE_PIN R33   IOSTANDARD LVCMOS18  } [get_ports {F1_LA00_E0BS_CC_N}]
set_property -dict {PACKAGE_PIN R32   IOSTANDARD LVCMOS18  } [get_ports {F1_LA00_E0BS_CC_P}]
set_property -dict {PACKAGE_PIN T33   IOSTANDARD LVCMOS18  } [get_ports {F1_LA01_E0BC_CC_N}]
set_property -dict {PACKAGE_PIN U33   IOSTANDARD LVCMOS18  } [get_ports {F1_LA01_E0BC_CC_P}]
set_property -dict {PACKAGE_PIN AT16  IOSTANDARD LVCMOS18  } [get_ports {F1_LA17_E2BS_CC_N}]
set_property -dict {PACKAGE_PIN AT17  IOSTANDARD LVCMOS18  } [get_ports {F1_LA17_E2BS_CC_P}]
set_property -dict {PACKAGE_PIN AR17  IOSTANDARD LVCMOS18  } [get_ports {F1_LA18_E2BC_CC_N}]
set_property -dict {PACKAGE_PIN AR18  IOSTANDARD LVCMOS18  } [get_ports {F1_LA18_E2BC_CC_P}]
set_property -dict {PACKAGE_PIN R35   IOSTANDARD LVCMOS18  } [get_ports {F1_CLK0_E1BC_N}]
set_property -dict {PACKAGE_PIN R34   IOSTANDARD LVCMOS18  } [get_ports {F1_CLK0_E1BC_P}]
set_property -dict {PACKAGE_PIN U35   IOSTANDARD LVCMOS18  } [get_ports {F1_CLK1_E1BS_N}]
set_property -dict {PACKAGE_PIN U34   IOSTANDARD LVCMOS18  } [get_ports {F1_CLK1_E1BS_P}]
set_property -dict {PACKAGE_PIN M12   IOSTANDARD LVCMOS18  } [get_ports {F1_GBTCLK1_M2C_N}]
set_property -dict {PACKAGE_PIN M13   IOSTANDARD LVCMOS18  } [get_ports {F1_GBTCLK1_M2C_P}]

# IO Connector
set_property -dict {PACKAGE_PIN AB12  IOSTANDARD LVCMOS18  } [get_ports {X3_D0}]
set_property -dict {PACKAGE_PIN AA12  IOSTANDARD LVCMOS18  } [get_ports {X3_D1}]
set_property -dict {PACKAGE_PIN Y12   IOSTANDARD LVCMOS18  } [get_ports {X3_D2}]
set_property -dict {PACKAGE_PIN W12   IOSTANDARD LVCMOS18  } [get_ports {X3_D3}]

# Clock Generator MGT V3 RefClk 1
set_property -dict {PACKAGE_PIN K12   IOSTANDARD LVCMOS18  } [get_ports {MGT_V3_CLK1_N}]
set_property -dict {PACKAGE_PIN K13   IOSTANDARD LVCMOS18  } [get_ports {MGT_V3_CLK1_P}]

# Clock Generator MGT Y0 RefClk 1
set_property -dict {PACKAGE_PIN AU8   IOSTANDARD LVCMOS18  } [get_ports {MGT_Y0_CLK1_N}]
set_property -dict {PACKAGE_PIN AT8   IOSTANDARD LVCMOS18  } [get_ports {MGT_Y0_CLK1_P}]

# Clock Generator MGT Y1 RefClk 1
set_property -dict {PACKAGE_PIN AT7   IOSTANDARD LVCMOS18  } [get_ports {MGT_Y1_CLK1_N}]
set_property -dict {PACKAGE_PIN AR7   IOSTANDARD LVCMOS18  } [get_ports {MGT_Y1_CLK1_P}]

# Clock Generator MGT Y2 RefClk 1
# set_property PACKAGE_PIN AA9   [get_ports {MGT_Y2_CLK1_N}] # GTH
# set_property PACKAGE_PIN AA10  [get_ports {MGT_Y2_CLK1_P}] # GTH

# Clock Generator MGT Y3 RefClk 0
# set_property PACKAGE_PIN AG9   [get_ports {MGT_Y3_CLK0_N}] # GTH
# set_property PACKAGE_PIN AG10  [get_ports {MGT_Y3_CLK0_P}] # GTH

# Clock Generator MGT Y3 RefClk 1
# set_property PACKAGE_PIN AE9   [get_ports {MGT_Y3_CLK1_N}] # GTH
# set_property PACKAGE_PIN AE10  [get_ports {MGT_Y3_CLK1_P}] # GTH

# PCIe Edge Connector
# set_property PACKAGE_PIN AA1   [get_ports {PCIE_RX0_N}] # GTH
# set_property PACKAGE_PIN AA2   [get_ports {PCIE_RX0_P}] # GTH
# set_property PACKAGE_PIN AB3   [get_ports {PCIE_RX1_N}] # GTH
# set_property PACKAGE_PIN AB4   [get_ports {PCIE_RX1_P}] # GTH
# set_property PACKAGE_PIN AC1   [get_ports {PCIE_RX2_N}] # GTH
# set_property PACKAGE_PIN AC2   [get_ports {PCIE_RX2_P}] # GTH
# set_property PACKAGE_PIN AD3   [get_ports {PCIE_RX3_N}] # GTH
# set_property PACKAGE_PIN AD4   [get_ports {PCIE_RX3_P}] # GTH
# set_property PACKAGE_PIN AE1   [get_ports {PCIE_RX4_N}] # GTH
# set_property PACKAGE_PIN AE2   [get_ports {PCIE_RX4_P}] # GTH
# set_property PACKAGE_PIN AF3   [get_ports {PCIE_RX5_N}] # GTH
# set_property PACKAGE_PIN AF4   [get_ports {PCIE_RX5_P}] # GTH
# set_property PACKAGE_PIN AG1   [get_ports {PCIE_RX6_N}] # GTH
# set_property PACKAGE_PIN AG2   [get_ports {PCIE_RX6_P}] # GTH
# set_property PACKAGE_PIN AH3   [get_ports {PCIE_RX7_N}] # GTH
# set_property PACKAGE_PIN AH4   [get_ports {PCIE_RX7_P}] # GTH
# set_property PACKAGE_PIN AA5   [get_ports {PCIE_TX0_N}] # GTH
# set_property PACKAGE_PIN AA6   [get_ports {PCIE_TX0_P}] # GTH
# set_property PACKAGE_PIN AB7   [get_ports {PCIE_TX1_N}] # GTH
# set_property PACKAGE_PIN AB8   [get_ports {PCIE_TX1_P}] # GTH
# set_property PACKAGE_PIN AC5   [get_ports {PCIE_TX2_N}] # GTH
# set_property PACKAGE_PIN AC6   [get_ports {PCIE_TX2_P}] # GTH
# set_property PACKAGE_PIN AD7   [get_ports {PCIE_TX3_N}] # GTH
# set_property PACKAGE_PIN AD8   [get_ports {PCIE_TX3_P}] # GTH
# set_property PACKAGE_PIN AE5   [get_ports {PCIE_TX4_N}] # GTH
# set_property PACKAGE_PIN AE6   [get_ports {PCIE_TX4_P}] # GTH
# set_property PACKAGE_PIN AF7   [get_ports {PCIE_TX5_N}] # GTH
# set_property PACKAGE_PIN AF8   [get_ports {PCIE_TX5_P}] # GTH
# set_property PACKAGE_PIN AG5   [get_ports {PCIE_TX6_N}] # GTH
# set_property PACKAGE_PIN AG6   [get_ports {PCIE_TX6_P}] # GTH
# set_property PACKAGE_PIN AH7   [get_ports {PCIE_TX7_N}] # GTH
# set_property PACKAGE_PIN AH8   [get_ports {PCIE_TX7_P}] # GTH

# Clock Generator PCIE RefClk
# set_property PACKAGE_PIN AC9   [get_ports {PCIE_REFCLK_N}] # GTH
# set_property PACKAGE_PIN AC10  [get_ports {PCIE_REFCLK_P}] # GTH

# PL0 DDR4 Memory
set_property INTERNAL_VREF 0.600 [get_iobanks 70]
set_property -dict {PACKAGE_PIN E24   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_BA[0]}]
set_property -dict {PACKAGE_PIN D24   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_BA[1]}]
set_property -dict {PACKAGE_PIN F22   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_BG[0]}]
set_property -dict {PACKAGE_PIN N22   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_CKE[0]}]
set_property -dict {PACKAGE_PIN N27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[0]}]
set_property -dict {PACKAGE_PIN P27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[1]}]
set_property -dict {PACKAGE_PIN L28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[2]}]
set_property -dict {PACKAGE_PIN P26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[3]}]
set_property -dict {PACKAGE_PIN N26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[4]}]
set_property -dict {PACKAGE_PIN M26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[5]}]
set_property -dict {PACKAGE_PIN M28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[6]}]
set_property -dict {PACKAGE_PIN L26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[7]}]
set_property -dict {PACKAGE_PIN K24   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[8]}]
set_property -dict {PACKAGE_PIN H28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[9]}]
set_property -dict {PACKAGE_PIN G23   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_ODT[0]}]
set_property -dict {PACKAGE_PIN E23   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[0]}]
set_property -dict {PACKAGE_PIN D21   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[1]}]
set_property -dict {PACKAGE_PIN D22   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[2]}]
set_property -dict {PACKAGE_PIN E20   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[3]}]
set_property -dict {PACKAGE_PIN C24   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[4]}]
set_property -dict {PACKAGE_PIN B24   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[5]}]
set_property -dict {PACKAGE_PIN C21   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[6]}]
set_property -dict {PACKAGE_PIN C22   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[7]}]
set_property -dict {PACKAGE_PIN C23   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[8]}]
set_property -dict {PACKAGE_PIN B23   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[9]}]
set_property -dict {PACKAGE_PIN G21   IOSTANDARD DIFF_SSTL12_DCI} [get_ports {DDR4PL0_CK_N[0]}]
set_property -dict {PACKAGE_PIN G20   IOSTANDARD DIFF_SSTL12_DCI} [get_ports {DDR4PL0_CK_P[0]}]
set_property -dict {PACKAGE_PIN J20   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_CS_N[0]}]
set_property -dict {PACKAGE_PIN J24   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[10]}]
set_property -dict {PACKAGE_PIN K28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[11]}]
set_property -dict {PACKAGE_PIN H26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[12]}]
set_property -dict {PACKAGE_PIN K27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[13]}]
set_property -dict {PACKAGE_PIN H27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[14]}]
set_property -dict {PACKAGE_PIN J27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[15]}]
set_property -dict {PACKAGE_PIN D26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[16]}]
set_property -dict {PACKAGE_PIN F26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[17]}]
set_property -dict {PACKAGE_PIN D25   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[18]}]
set_property -dict {PACKAGE_PIN E28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[19]}]
set_property -dict {PACKAGE_PIN E27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[20]}]
set_property -dict {PACKAGE_PIN G24   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[21]}]
set_property -dict {PACKAGE_PIN G26   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[22]}]
set_property -dict {PACKAGE_PIN G25   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[23]}]
set_property -dict {PACKAGE_PIN A27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[24]}]
set_property -dict {PACKAGE_PIN A28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[25]}]
set_property -dict {PACKAGE_PIN B28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[26]}]
set_property -dict {PACKAGE_PIN C29   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[27]}]
set_property -dict {PACKAGE_PIN C28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[28]}]
set_property -dict {PACKAGE_PIN B29   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[29]}]
set_property -dict {PACKAGE_PIN B25   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[30]}]
set_property -dict {PACKAGE_PIN A25   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[31]}]
set_property -dict {PACKAGE_PIN M23   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[32]}]
set_property -dict {PACKAGE_PIN L22   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[33]}]
set_property -dict {PACKAGE_PIN N23   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[34]}]
set_property -dict {PACKAGE_PIN M21   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[35]}]
set_property -dict {PACKAGE_PIN N24   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[36]}]
set_property -dict {PACKAGE_PIN M20   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[37]}]
set_property -dict {PACKAGE_PIN P24   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[38]}]
set_property -dict {PACKAGE_PIN L23   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[39]}]
set_property -dict {PACKAGE_PIN H21   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[40]}]
set_property -dict {PACKAGE_PIN K23   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[41]}]
set_property -dict {PACKAGE_PIN J22   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[42]}]
set_property -dict {PACKAGE_PIN G19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[43]}]
set_property -dict {PACKAGE_PIN J21   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[44]}]
set_property -dict {PACKAGE_PIN K22   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[45]}]
set_property -dict {PACKAGE_PIN H22   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[46]}]
set_property -dict {PACKAGE_PIN H19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[47]}]
set_property -dict {PACKAGE_PIN B14   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[48]}]
set_property -dict {PACKAGE_PIN A15   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[49]}]
set_property -dict {PACKAGE_PIN E13   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[50]}]
set_property -dict {PACKAGE_PIN E14   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[51]}]
set_property -dict {PACKAGE_PIN B15   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[52]}]
set_property -dict {PACKAGE_PIN D14   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[53]}]
set_property -dict {PACKAGE_PIN A16   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[54]}]
set_property -dict {PACKAGE_PIN D15   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[55]}]
set_property -dict {PACKAGE_PIN B19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[56]}]
set_property -dict {PACKAGE_PIN C17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[57]}]
set_property -dict {PACKAGE_PIN E19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[58]}]
set_property -dict {PACKAGE_PIN B18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[59]}]
set_property -dict {PACKAGE_PIN D17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[60]}]
set_property -dict {PACKAGE_PIN C16   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[61]}]
set_property -dict {PACKAGE_PIN D16   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[62]}]
set_property -dict {PACKAGE_PIN D19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DQ[63]}]
set_property -dict {PACKAGE_PIN E22   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_ACT_N}]
set_property -dict {PACKAGE_PIN B21   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[10]}]
set_property -dict {PACKAGE_PIN A21   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[11]}]
set_property -dict {PACKAGE_PIN A22   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[12]}]
set_property -dict {PACKAGE_PIN A23   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[13]}]
set_property -dict {PACKAGE_PIN B20   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[14]}]
set_property -dict {PACKAGE_PIN A20   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[15]}]
set_property -dict {PACKAGE_PIN D20   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL0_A[16]}]
set_property -dict {PACKAGE_PIN R25   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[0]}]
set_property -dict {PACKAGE_PIN L25   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[1]}]
set_property -dict {PACKAGE_PIN G28   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[2]}]
set_property -dict {PACKAGE_PIN D27   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[3]}]
set_property -dict {PACKAGE_PIN N21   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[4]}]
set_property -dict {PACKAGE_PIN H23   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[5]}]
set_property -dict {PACKAGE_PIN C14   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[6]}]
set_property -dict {PACKAGE_PIN C19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL0_DM[7]}]
set_property -dict {PACKAGE_PIN M24   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[0]}]
set_property -dict {PACKAGE_PIN J25   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[1]}]
set_property -dict {PACKAGE_PIN F25   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[2]}]
set_property -dict {PACKAGE_PIN B26   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[3]}]
set_property -dict {PACKAGE_PIN P20   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[4]}]
set_property -dict {PACKAGE_PIN L20   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[5]}]
set_property -dict {PACKAGE_PIN B13   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[6]}]
set_property -dict {PACKAGE_PIN A18   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_P[7]}]
set_property -dict {PACKAGE_PIN M25   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[0]}]
set_property -dict {PACKAGE_PIN J26   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[1]}]
set_property -dict {PACKAGE_PIN E25   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[2]}]
set_property -dict {PACKAGE_PIN A26   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[3]}]
set_property -dict {PACKAGE_PIN P21   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[4]}]
set_property -dict {PACKAGE_PIN K20   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[5]}]
set_property -dict {PACKAGE_PIN A13   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[6]}]
set_property -dict {PACKAGE_PIN A17   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL0_DQS_N[7]}]
set_property -dict {PACKAGE_PIN F28   IOSTANDARD LVCMOS12  } [get_ports {DDR4PL0_RESET_N}]

# PL 100 MHz Oscillator
set_property -dict {PACKAGE_PIN J4    IOSTANDARD DIFF_SSTL12} [get_ports {CLK100_PL1_N}]
set_property -dict {PACKAGE_PIN J5    IOSTANDARD DIFF_SSTL12} [get_ports {CLK100_PL1_P}]

# PL1 DDR4 Memory
set_property INTERNAL_VREF 0.600 [get_iobanks 72]
set_property -dict {PACKAGE_PIN K3    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_BA[0]}]
set_property -dict {PACKAGE_PIN K2    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_BA[1]}]
set_property -dict {PACKAGE_PIN L5    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_BG[0]}]
set_property -dict {PACKAGE_PIN K9    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_CKE[0]}]
set_property -dict {PACKAGE_PIN F11   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[0]}]
set_property -dict {PACKAGE_PIN D10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[1]}]
set_property -dict {PACKAGE_PIN E8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[2]}]
set_property -dict {PACKAGE_PIN D11   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[3]}]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[4]}]
set_property -dict {PACKAGE_PIN F8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[5]}]
set_property -dict {PACKAGE_PIN E9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[6]}]
set_property -dict {PACKAGE_PIN F7    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[7]}]
set_property -dict {PACKAGE_PIN B11   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[8]}]
set_property -dict {PACKAGE_PIN B8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[9]}]
set_property -dict {PACKAGE_PIN H7    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_ODT[0]}]
set_property -dict {PACKAGE_PIN J1    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[0]}]
set_property -dict {PACKAGE_PIN L3    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[1]}]
set_property -dict {PACKAGE_PIN L2    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[2]}]
set_property -dict {PACKAGE_PIN L1    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[3]}]
set_property -dict {PACKAGE_PIN F6    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[4]}]
set_property -dict {PACKAGE_PIN F5    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[5]}]
set_property -dict {PACKAGE_PIN G5    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[6]}]
set_property -dict {PACKAGE_PIN G4    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[7]}]
set_property -dict {PACKAGE_PIN G3    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[8]}]
set_property -dict {PACKAGE_PIN F3    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[9]}]
set_property -dict {PACKAGE_PIN K4    IOSTANDARD DIFF_SSTL12_DCI} [get_ports {DDR4PL1_CK_N[0]}]
set_property -dict {PACKAGE_PIN K5    IOSTANDARD DIFF_SSTL12_DCI} [get_ports {DDR4PL1_CK_P[0]}]
set_property -dict {PACKAGE_PIN L6    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_CS_N[0]}]
set_property -dict {PACKAGE_PIN A10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[10]}]
set_property -dict {PACKAGE_PIN B9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[11]}]
set_property -dict {PACKAGE_PIN D9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[12]}]
set_property -dict {PACKAGE_PIN B10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[13]}]
set_property -dict {PACKAGE_PIN C9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[14]}]
set_property -dict {PACKAGE_PIN C8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[15]}]
set_property -dict {PACKAGE_PIN D4    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[16]}]
set_property -dict {PACKAGE_PIN D6    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[17]}]
set_property -dict {PACKAGE_PIN E4    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[18]}]
set_property -dict {PACKAGE_PIN B5    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[19]}]
set_property -dict {PACKAGE_PIN B6    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[20]}]
set_property -dict {PACKAGE_PIN A7    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[21]}]
set_property -dict {PACKAGE_PIN D7    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[22]}]
set_property -dict {PACKAGE_PIN A6    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[23]}]
set_property -dict {PACKAGE_PIN C3    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[24]}]
set_property -dict {PACKAGE_PIN C2    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[25]}]
set_property -dict {PACKAGE_PIN A3    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[26]}]
set_property -dict {PACKAGE_PIN B1    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[27]}]
set_property -dict {PACKAGE_PIN C1    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[28]}]
set_property -dict {PACKAGE_PIN A2    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[29]}]
set_property -dict {PACKAGE_PIN D2    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[30]}]
set_property -dict {PACKAGE_PIN D1    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[31]}]
set_property -dict {PACKAGE_PIN J10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[32]}]
set_property -dict {PACKAGE_PIN G11   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[33]}]
set_property -dict {PACKAGE_PIN K10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[34]}]
set_property -dict {PACKAGE_PIN H9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[35]}]
set_property -dict {PACKAGE_PIN J11   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[36]}]
set_property -dict {PACKAGE_PIN J9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[37]}]
set_property -dict {PACKAGE_PIN J12   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[38]}]
set_property -dict {PACKAGE_PIN G10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[39]}]
set_property -dict {PACKAGE_PIN J7    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[40]}]
set_property -dict {PACKAGE_PIN K8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[41]}]
set_property -dict {PACKAGE_PIN G6    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[42]}]
set_property -dict {PACKAGE_PIN G8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[43]}]
set_property -dict {PACKAGE_PIN H6    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[44]}]
set_property -dict {PACKAGE_PIN L8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[45]}]
set_property -dict {PACKAGE_PIN J6    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[46]}]
set_property -dict {PACKAGE_PIN G9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[47]}]
set_property -dict {PACKAGE_PIN G15   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[48]}]
set_property -dict {PACKAGE_PIN E17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[49]}]
set_property -dict {PACKAGE_PIN H17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[50]}]
set_property -dict {PACKAGE_PIN H18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[51]}]
set_property -dict {PACKAGE_PIN G16   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[52]}]
set_property -dict {PACKAGE_PIN H16   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[53]}]
set_property -dict {PACKAGE_PIN E18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[54]}]
set_property -dict {PACKAGE_PIN J16   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[55]}]
set_property -dict {PACKAGE_PIN L18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[56]}]
set_property -dict {PACKAGE_PIN N18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[57]}]
set_property -dict {PACKAGE_PIN M18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[58]}]
set_property -dict {PACKAGE_PIN K18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[59]}]
set_property -dict {PACKAGE_PIN K19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[60]}]
set_property -dict {PACKAGE_PIN N17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[61]}]
set_property -dict {PACKAGE_PIN J19   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[62]}]
set_property -dict {PACKAGE_PIN L17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DQ[63]}]
set_property -dict {PACKAGE_PIN J2    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_ACT_N}]
set_property -dict {PACKAGE_PIN H4    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[10]}]
set_property -dict {PACKAGE_PIN H3    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[11]}]
set_property -dict {PACKAGE_PIN F2    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[12]}]
set_property -dict {PACKAGE_PIN F1    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[13]}]
set_property -dict {PACKAGE_PIN H2    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[14]}]
set_property -dict {PACKAGE_PIN H1    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[15]}]
set_property -dict {PACKAGE_PIN G1    IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL1_A[16]}]
set_property -dict {PACKAGE_PIN E12   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[0]}]
set_property -dict {PACKAGE_PIN C12   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[1]}]
set_property -dict {PACKAGE_PIN C7    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[2]}]
set_property -dict {PACKAGE_PIN B4    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[3]}]
set_property -dict {PACKAGE_PIN L9    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[4]}]
set_property -dict {PACKAGE_PIN H8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[5]}]
set_property -dict {PACKAGE_PIN F18   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[6]}]
set_property -dict {PACKAGE_PIN K17   IOSTANDARD POD12_DCI } [get_ports {DDR4PL1_DM[7]}]
set_property -dict {PACKAGE_PIN F10   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[0]}]
set_property -dict {PACKAGE_PIN A12   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[1]}]
set_property -dict {PACKAGE_PIN E5    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[2]}]
set_property -dict {PACKAGE_PIN E3    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[3]}]
set_property -dict {PACKAGE_PIN L11   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[4]}]
set_property -dict {PACKAGE_PIN L7    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[5]}]
set_property -dict {PACKAGE_PIN F16   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[6]}]
set_property -dict {PACKAGE_PIN N19   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_P[7]}]
set_property -dict {PACKAGE_PIN E10   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[0]}]
set_property -dict {PACKAGE_PIN A11   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[1]}]
set_property -dict {PACKAGE_PIN D5    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[2]}]
set_property -dict {PACKAGE_PIN E2    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[3]}]
set_property -dict {PACKAGE_PIN L10   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[4]}]
set_property -dict {PACKAGE_PIN K7    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[5]}]
set_property -dict {PACKAGE_PIN F15   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[6]}]
set_property -dict {PACKAGE_PIN M19   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL1_DQS_N[7]}]
set_property -dict {PACKAGE_PIN C6    IOSTANDARD LVCMOS12  } [get_ports {DDR4PL1_RESET_N}]

# PL 100 MHz Oscillator
set_property -dict {PACKAGE_PIN F21   IOSTANDARD DIFF_SSTL12} [get_ports {CLK100_PL0_N}]
set_property -dict {PACKAGE_PIN F20   IOSTANDARD DIFF_SSTL12} [get_ports {CLK100_PL0_P}]

# PL Gigabit Ethernet
set_property SLEW FAST [get_ports {ETH1_TXD[0]}]
set_property SLEW FAST [get_ports {ETH1_TXD[1]}]
set_property SLEW FAST [get_ports {ETH1_TXD[2]}]
set_property SLEW FAST [get_ports {ETH1_TXD[3]}]
set_property SLEW FAST [get_ports {ETH1_TXCTL}]
set_property SLEW FAST [get_ports {ETH1_TXCLK}]
set_property -dict {PACKAGE_PIN AG15  IOSTANDARD LVCMOS18  } [get_ports {ETH1_MDC}]
set_property -dict {PACKAGE_PIN AD14  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[0]}]
set_property -dict {PACKAGE_PIN AE14  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[1]}]
set_property -dict {PACKAGE_PIN AC14  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[2]}]
set_property -dict {PACKAGE_PIN AC13  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[3]}]
set_property -dict {PACKAGE_PIN AG13  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXCLK}]
set_property -dict {PACKAGE_PIN AJ14  IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[0]}]
set_property -dict {PACKAGE_PIN AK13  IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[1]}]
set_property -dict {PACKAGE_PIN AH12  IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[2]}]
set_property -dict {PACKAGE_PIN AJ12  IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[3]}]
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXCLK}]
set_property -dict {PACKAGE_PIN AG14  IOSTANDARD LVCMOS18  } [get_ports {ETH1_MDIO}]
set_property -dict {PACKAGE_PIN AK14  IOSTANDARD LVCMOS18  } [get_ports {I2C_PL_INT_N}]
set_property -dict {PACKAGE_PIN AF12  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RESET_N}]
set_property -dict {PACKAGE_PIN AG12  IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXCTL}]
set_property -dict {PACKAGE_PIN AD12  IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXCTL}]

# PL SYSMON
set_property -dict {PACKAGE_PIN AA19  IOSTANDARD ANALOG    } [get_ports {SYSMON_VN}]
set_property -dict {PACKAGE_PIN Y20   IOSTANDARD ANALOG    } [get_ports {SYSMON_VP}]
set_property -dict {PACKAGE_PIN AH14  IOSTANDARD LVCMOS18  } [get_ports {VMON_A0}]
set_property -dict {PACKAGE_PIN AH13  IOSTANDARD LVCMOS18  } [get_ports {VMON_A1}]

# QSFP28 Connector
# set_property PACKAGE_PIN T3    [get_ports {QSFP_RX1_N}] # GTH
# set_property PACKAGE_PIN T4    [get_ports {QSFP_RX1_P}] # GTH
# set_property PACKAGE_PIN P3    [get_ports {QSFP_RX2_N}] # GTH
# set_property PACKAGE_PIN P4    [get_ports {QSFP_RX2_P}] # GTH
# set_property PACKAGE_PIN R1    [get_ports {QSFP_RX3_N}] # GTH
# set_property PACKAGE_PIN R2    [get_ports {QSFP_RX3_P}] # GTH
# set_property PACKAGE_PIN N1    [get_ports {QSFP_RX4_N}] # GTH
# set_property PACKAGE_PIN N2    [get_ports {QSFP_RX4_P}] # GTH
# set_property PACKAGE_PIN T7    [get_ports {QSFP_TX1_N}] # GTH
# set_property PACKAGE_PIN T8    [get_ports {QSFP_TX1_P}] # GTH
# set_property PACKAGE_PIN P7    [get_ports {QSFP_TX2_N}] # GTH
# set_property PACKAGE_PIN P8    [get_ports {QSFP_TX2_P}] # GTH
# set_property PACKAGE_PIN R5    [get_ports {QSFP_TX3_N}] # GTH
# set_property PACKAGE_PIN R6    [get_ports {QSFP_TX3_P}] # GTH
# set_property PACKAGE_PIN N5    [get_ports {QSFP_TX4_N}] # GTH
# set_property PACKAGE_PIN N6    [get_ports {QSFP_TX4_P}] # GTH

# Clock Generator QSFP RefClk 0
# set_property PACKAGE_PIN R9    [get_ports {QSFP_CLK0_N}] # GTH
# set_property PACKAGE_PIN R10   [get_ports {QSFP_CLK0_P}] # GTH

# SDI0 RX
# set_property PACKAGE_PIN V3    [get_ports {SDI0_RX_N}] # GTH
# set_property PACKAGE_PIN V4    [get_ports {SDI0_RX_P}] # GTH

# SDI0 TX
# set_property PACKAGE_PIN V7    [get_ports {SDI0_TX_N}] # GTH
# set_property PACKAGE_PIN V8    [get_ports {SDI0_TX_P}] # GTH

# SDI1 RX
# set_property PACKAGE_PIN U1    [get_ports {SDI1_RX_N}] # GTH
# set_property PACKAGE_PIN U2    [get_ports {SDI1_RX_P}] # GTH

# SDI1 TX
# set_property PACKAGE_PIN U5    [get_ports {SDI1_TX_N}] # GTH
# set_property PACKAGE_PIN U6    [get_ports {SDI1_TX_P}] # GTH

# SFP SDI Clock 1
# set_property PACKAGE_PIN U9    [get_ports {SFP_SDI_CLK1_N}] # GTH
# set_property PACKAGE_PIN U10   [get_ports {SFP_SDI_CLK1_P}] # GTH

# QSFP Clock 1
# set_property PACKAGE_PIN N9    [get_ports {QSFP_CLK1_N}] # GTH
# set_property PACKAGE_PIN N10   [get_ports {QSFP_CLK1_P}] # GTH

# Clock Generator SFP SDI RefClk 0
# set_property PACKAGE_PIN W9    [get_ports {SFP_SDI_CLK0_N}] # GTH
# set_property PACKAGE_PIN W10   [get_ports {SFP_SDI_CLK0_P}] # GTH

# LED
set_property -dict {PACKAGE_PIN R26   IOSTANDARD LVCMOS12  } [get_ports {XZU80_LED0_N}]
set_property -dict {PACKAGE_PIN K25   IOSTANDARD LVCMOS12  } [get_ports {XZU80_LED1_N}]
set_property -dict {PACKAGE_PIN C27   IOSTANDARD LVCMOS12  } [get_ports {XZU80_LED2_N}]
set_property -dict {PACKAGE_PIN C26   IOSTANDARD LVCMOS12  } [get_ports {XZU80_LED3_N}]
