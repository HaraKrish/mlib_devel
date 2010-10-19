set output_file [open "mem_tester_sim/ddr2_controller_v1_00_a/hdl/vhdl/ddr2_transfer_done.vhd" w ]
set line_num 1; puts $output_file "library ieee;"
set line_num 2; puts $output_file "use ieee.std_logic_1164.all;"
set line_num 3; puts $output_file "use ieee.std_logic_unsigned.all;"
set line_num 4; puts $output_file "--library synplify; "
set line_num 5; puts $output_file "--use synplify.attributes.all; "
set line_num 6; puts $output_file ""
set line_num 7; puts $output_file "-- pragma translate_off"
set line_num 8; puts $output_file "library UNISIM;"
set line_num 9; puts $output_file "use UNISIM.VCOMPONENTS.ALL;"
set line_num 10; puts $output_file "-- pragma translate_on"
set line_num 11; puts $output_file ""
set line_num 12; puts $output_file "entity ddr2_transfer_done is"
set line_num 13; puts $output_file "  port ("
set line_num 14; puts $output_file "        clk0            : in std_logic;"
set line_num 15; puts $output_file "        clk90           : in std_logic;             "
set line_num 16; puts $output_file "        reset           : in std_logic;"
set line_num 17; puts $output_file "        reset90         : in std_logic;"
set line_num 18; puts $output_file "        reset180        : in std_logic;"
set line_num 19; puts $output_file "        reset270        : in std_logic;"
set line_num 20; puts $output_file "        dqs_div         : in std_logic;"
set line_num 21; puts $output_file "        transfer_done0  : out std_logic;"
set line_num 22; puts $output_file "        transfer_done1  : out std_logic;"
set line_num 23; puts $output_file "        transfer_done2  : out std_logic;"
set line_num 24; puts $output_file "        transfer_done3  : out std_logic"
set line_num 25; puts $output_file "       );"
set line_num 26; puts $output_file "end ddr2_transfer_done;"
set line_num 27; puts $output_file ""
set line_num 28; puts $output_file "architecture ddr2_transfer_done_arch of ddr2_transfer_done is"
set line_num 29; puts $output_file ""
set line_num 30; puts $output_file "attribute syn_keep: boolean;"
set line_num 31; puts $output_file ""
set line_num 32; puts $output_file "  component FD"
set line_num 33; puts $output_file "    port("
set line_num 34; puts $output_file "      Q                              :	out   STD_ULOGIC;"
set line_num 35; puts $output_file "      C                              :	in    STD_ULOGIC;"
set line_num 36; puts $output_file "      D                              :	in    STD_ULOGIC"
set line_num 37; puts $output_file "      );"
set line_num 38; puts $output_file "  end component;"
set line_num 39; puts $output_file ""
set line_num 40; puts $output_file "  component FDR"
set line_num 41; puts $output_file "    port("
set line_num 42; puts $output_file "      Q                              :	out   STD_ULOGIC;"
set line_num 43; puts $output_file "      C                              :	in    STD_ULOGIC;"
set line_num 44; puts $output_file "      D                              :	in    STD_ULOGIC;"
set line_num 45; puts $output_file "      R                              :	in    STD_ULOGIC"
set line_num 46; puts $output_file "      );"
set line_num 47; puts $output_file "  end component; "
set line_num 48; puts $output_file "  "
set line_num 49; puts $output_file "component LUT2"
set line_num 50; puts $output_file "   generic("
set line_num 51; puts $output_file "      INIT                           :  bit_vector(3 downto 0) := x\"0\");"
set line_num 52; puts $output_file "   port("
set line_num 53; puts $output_file "      O                              :	out   STD_ULOGIC;"
set line_num 54; puts $output_file "      I0                             :	in    STD_ULOGIC;"
set line_num 55; puts $output_file "      I1                             :	in    STD_ULOGIC"
set line_num 56; puts $output_file "      );"
set line_num 57; puts $output_file "end component;   "
set line_num 58; puts $output_file "  "
set line_num 59; puts $output_file "component LUT3"
set line_num 60; puts $output_file "   generic("
set line_num 61; puts $output_file "      INIT                           :  bit_vector(7 downto 0) := x\"00\" );"
set line_num 62; puts $output_file "   port("
set line_num 63; puts $output_file "      O                              :	out   STD_ULOGIC;"
set line_num 64; puts $output_file "      I0                             :	in    STD_ULOGIC;"
set line_num 65; puts $output_file "      I1                             :	in    STD_ULOGIC;"
set line_num 66; puts $output_file "      I2                             :	in    STD_ULOGIC"
set line_num 67; puts $output_file "      );"
set line_num 68; puts $output_file "end component;"
set line_num 69; puts $output_file ""
set line_num 70; puts $output_file ""
set line_num 71; puts $output_file "signal transfer_done_int      : std_logic_vector(3 downto 0);"
set line_num 72; puts $output_file "signal transfer_done0_clk0    : std_logic;"
set line_num 73; puts $output_file "signal transfer_done0_clk90   : std_logic;"
set line_num 74; puts $output_file "signal transfer_done0_clk180  : std_logic;"
set line_num 75; puts $output_file "signal transfer_done0_clk270  : std_logic;"
set line_num 76; puts $output_file "signal transfer_done1_clk90   : std_logic;"
set line_num 77; puts $output_file "signal transfer_done1_clk270  : std_logic;"
set line_num 78; puts $output_file "signal transfer_done2_clk90   : std_logic;"
set line_num 79; puts $output_file "signal transfer_done2_clk270  : std_logic;"
set line_num 80; puts $output_file "signal transfer_done3_clk90   : std_logic;"
set line_num 81; puts $output_file "signal transfer_done3_clk270  : std_logic;"
set line_num 82; puts $output_file "signal sync_rst_xdone0_ck0    : std_logic;"
set line_num 83; puts $output_file "signal sync_rst_xdone0_ck180  : std_logic;"
set line_num 84; puts $output_file "signal sync_rst_clk90         : std_logic;"
set line_num 85; puts $output_file "signal sync_rst_clk270        : std_logic;"
set line_num 86; puts $output_file ""
set line_num 87; puts $output_file "  signal clk180                 : std_logic;"
set line_num 88; puts $output_file "  signal clk270                 : std_logic;"
set line_num 89; puts $output_file ""
set line_num 90; puts $output_file "  attribute syn_keep of clk270 : signal is true;"
set line_num 91; puts $output_file "  attribute syn_keep of clk180 : signal is true;"
set line_num 92; puts $output_file ""
set line_num 93; puts $output_file "attribute syn_replicate : boolean;"
set line_num 94; puts $output_file "attribute syn_replicate of transfer_done0_clk270 : signal is false;"
set line_num 95; puts $output_file "begin"
set line_num 96; puts $output_file ""
set line_num 97; puts $output_file "  clk180 <= not clk0;"
set line_num 98; puts $output_file "  clk270 <= not clk90;"
set line_num 99; puts $output_file ""
set line_num 100; puts $output_file "sync_rst_xdone0_ck0   <= reset or transfer_done0_clk0; "
set line_num 101; puts $output_file "sync_rst_xdone0_ck180 <= reset180 or transfer_done0_clk180;"
set line_num 102; puts $output_file ""
set line_num 103; puts $output_file "transfer_done0        <= transfer_done_int(0);"
set line_num 104; puts $output_file "transfer_done1        <= transfer_done_int(1);"
set line_num 105; puts $output_file "transfer_done2        <= transfer_done_int(2);"
set line_num 106; puts $output_file "transfer_done3        <= transfer_done_int(3);"
set line_num 107; puts $output_file ""
set line_num 108; puts $output_file "xdone0 : LUT2 generic map (INIT => x\"e\") "
set line_num 109; puts $output_file "port map ("
set line_num 110; puts $output_file "          O  => transfer_done_int(0),"
set line_num 111; puts $output_file "          I0 => transfer_done0_clk90,"
set line_num 112; puts $output_file "          I1 => transfer_done0_clk270"
set line_num 113; puts $output_file "         );"
set line_num 114; puts $output_file ""
set line_num 115; puts $output_file "xdone1 : LUT2 generic map (INIT => x\"e\") "
set line_num 116; puts $output_file "port map ("
set line_num 117; puts $output_file "          O  => transfer_done_int(1),"
set line_num 118; puts $output_file "          I0 => transfer_done1_clk90,"
set line_num 119; puts $output_file "          I1 => transfer_done1_clk270"
set line_num 120; puts $output_file "         );"
set line_num 121; puts $output_file "                      "
set line_num 122; puts $output_file "xdone2 : LUT2 generic map (INIT => x\"e\")  "
set line_num 123; puts $output_file "port map ("
set line_num 124; puts $output_file "          O  => transfer_done_int(2),"
set line_num 125; puts $output_file "          I0 => transfer_done2_clk90,"
set line_num 126; puts $output_file "          I1 => transfer_done2_clk270"
set line_num 127; puts $output_file "         ); "
set line_num 128; puts $output_file "                      "
set line_num 129; puts $output_file "xdone3 : LUT2 generic map (INIT => x\"e\")  "
set line_num 130; puts $output_file "port map ("
set line_num 131; puts $output_file "          O  => transfer_done_int(3),"
set line_num 132; puts $output_file "          I0 => transfer_done3_clk90,"
set line_num 133; puts $output_file "          I1 => transfer_done3_clk270"
set line_num 134; puts $output_file "         );                                           "
set line_num 135; puts $output_file ""
set line_num 136; puts $output_file "xdone0_clk0 : FDR port map ("
set line_num 137; puts $output_file "                             Q   => transfer_done0_clk0,     "
set line_num 138; puts $output_file "                             C   => clk0,"
set line_num 139; puts $output_file "                             R   => sync_rst_xdone0_ck0,"
set line_num 140; puts $output_file "                             D   => dqs_div"
set line_num 141; puts $output_file "                            ); "
set line_num 142; puts $output_file "                            "
set line_num 143; puts $output_file "xdone0_clk90 : FDR port map ("
set line_num 144; puts $output_file "                               Q   => transfer_done0_clk90,     "
set line_num 145; puts $output_file "                               C   => clk90,"
set line_num 146; puts $output_file "                               R   => sync_rst_clk90,"
set line_num 147; puts $output_file "                               D   => transfer_done0_clk0"
set line_num 148; puts $output_file "                              );"
set line_num 149; puts $output_file "                              "
set line_num 150; puts $output_file "xdone0_clk180 : FDR port map ("
set line_num 151; puts $output_file "                              Q   => transfer_done0_clk180,     "
set line_num 152; puts $output_file "                              C   => clk180,"
set line_num 153; puts $output_file "                              R   => sync_rst_xdone0_ck180,"
set line_num 154; puts $output_file "                              D   => dqs_div"
set line_num 155; puts $output_file "                             );  "
set line_num 156; puts $output_file "                             "
set line_num 157; puts $output_file "xdone0_clk270 : FDR  port map ("
set line_num 158; puts $output_file "                               Q   => transfer_done0_clk270,     "
set line_num 159; puts $output_file "                               C   => clk270,"
set line_num 160; puts $output_file "                               R   => sync_rst_clk270,"
set line_num 161; puts $output_file "                               D   => transfer_done0_clk180"
set line_num 162; puts $output_file "                              ); "
set line_num 163; puts $output_file "                              "
set line_num 164; puts $output_file "xdone0_rst90 : LUT3 generic map (INIT => x\"fe\")"
set line_num 165; puts $output_file "                   port map (                      "
set line_num 166; puts $output_file "                             O  => sync_rst_clk90,   "
set line_num 167; puts $output_file "                             I0 => reset90,     "
set line_num 168; puts $output_file "                             I1 => transfer_done0_clk270,"
set line_num 169; puts $output_file "                             I2 => transfer_done0_clk90"
set line_num 170; puts $output_file "                            );"
set line_num 171; puts $output_file "                            "
set line_num 172; puts $output_file "xdone0_rst270 : LUT3 generic map (INIT => x\"fe\")"
set line_num 173; puts $output_file "                   port map (                      "
set line_num 174; puts $output_file "                             O  => sync_rst_clk270,   "
set line_num 175; puts $output_file "                             I0 => reset270,     "
set line_num 176; puts $output_file "                             I1 => transfer_done0_clk270,"
set line_num 177; puts $output_file "                             I2 => transfer_done0_clk90"
set line_num 178; puts $output_file "                            );                                                       "
set line_num 179; puts $output_file "                            "
set line_num 180; puts $output_file "xdone1_clk90 : FD  port map ("
set line_num 181; puts $output_file "                             Q   => transfer_done1_clk90,     "
set line_num 182; puts $output_file "                             C   => clk90,"
set line_num 183; puts $output_file "                             D   => transfer_done0_clk270"
set line_num 184; puts $output_file "                            );"
set line_num 185; puts $output_file "                            "
set line_num 186; puts $output_file "xdone1_clk270 : FD port map ("
set line_num 187; puts $output_file "                             Q   => transfer_done1_clk270,     "
set line_num 188; puts $output_file "                             C   => clk270,"
set line_num 189; puts $output_file "                             D   => transfer_done0_clk90"
set line_num 190; puts $output_file "                            );                            "
set line_num 191; puts $output_file "                            "
set line_num 192; puts $output_file "xdone2_clk90 : FD  port map ("
set line_num 193; puts $output_file "                             Q   => transfer_done2_clk90,     "
set line_num 194; puts $output_file "                             C   => clk90,"
set line_num 195; puts $output_file "                             D   => transfer_done1_clk270"
set line_num 196; puts $output_file "                            );"
set line_num 197; puts $output_file "                            "
set line_num 198; puts $output_file "xdone2_clk270 : FD port map ("
set line_num 199; puts $output_file "                             Q   => transfer_done2_clk270,     "
set line_num 200; puts $output_file "                             C   => clk270,"
set line_num 201; puts $output_file "                             D   => transfer_done1_clk90"
set line_num 202; puts $output_file "                            );                            "
set line_num 203; puts $output_file "                            "
set line_num 204; puts $output_file "xdone3_clk90 : FD port map ("
set line_num 205; puts $output_file "                             Q   => transfer_done3_clk90,     "
set line_num 206; puts $output_file "                             C   => clk90,"
set line_num 207; puts $output_file "                             D   => transfer_done2_clk270"
set line_num 208; puts $output_file "                            ); "
set line_num 209; puts $output_file "                            "
set line_num 210; puts $output_file "xdone3_clk270 : FD port map ("
set line_num 211; puts $output_file "                             Q   => transfer_done3_clk270,     "
set line_num 212; puts $output_file "                             C   => clk270,"
set line_num 213; puts $output_file "                             D   => transfer_done2_clk90"
set line_num 214; puts $output_file "                            );                                                                                   "
set line_num 215; puts $output_file ""
set line_num 216; puts $output_file "end ddr2_transfer_done_arch;"
set line_num 217; puts $output_file ""
close $output_file
