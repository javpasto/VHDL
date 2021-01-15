-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Nov 22 10:45:02 2020
-- Host        : DESKTOP-76SO0TG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/hlocal/TOC_PR3/TOC_PR3.sim/sim_1/synth/func/xsim/tb_mult8_func_synth.vhd
-- Design      : mult8b
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult8b is
  port (
    X : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Z : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult8b : entity is true;
end mult8b;

architecture STRUCTURE of mult8b is
  signal X_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Y_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Z_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Z_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Z_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Z_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Z_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \a__0\ : STD_LOGIC_VECTOR ( 6 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Z_OBUF[0]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Z_OBUF[1]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Z_OBUF[4]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Z_OBUF[7]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Z_OBUF[7]_inst_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Z_OBUF[7]_inst_i_4\ : label is "soft_lutpair1";
begin
\X_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(0),
      O => X_IBUF(0)
    );
\X_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(1),
      O => X_IBUF(1)
    );
\X_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(2),
      O => X_IBUF(2)
    );
\X_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(3),
      O => X_IBUF(3)
    );
\Y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(0),
      O => Y_IBUF(0)
    );
\Y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(1),
      O => Y_IBUF(1)
    );
\Y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(2),
      O => Y_IBUF(2)
    );
\Y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(3),
      O => Y_IBUF(3)
    );
\Z_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(0),
      O => Z(0)
    );
\Z_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Y_IBUF(0),
      I1 => X_IBUF(0),
      O => Z_OBUF(0)
    );
\Z_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(1),
      O => Z(1)
    );
\Z_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => X_IBUF(1),
      I1 => Y_IBUF(0),
      I2 => X_IBUF(0),
      I3 => Y_IBUF(1),
      O => Z_OBUF(1)
    );
\Z_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(2),
      O => Z(2)
    );
\Z_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47777888B8887888"
    )
        port map (
      I0 => X_IBUF(2),
      I1 => Y_IBUF(0),
      I2 => X_IBUF(1),
      I3 => Y_IBUF(1),
      I4 => X_IBUF(0),
      I5 => Y_IBUF(2),
      O => Z_OBUF(2)
    );
\Z_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(3),
      O => Z(3)
    );
\Z_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => a(3),
      I1 => X_IBUF(1),
      I2 => Y_IBUF(2),
      I3 => \Z_OBUF[3]_inst_i_3_n_0\,
      I4 => X_IBUF(0),
      I5 => Y_IBUF(3),
      O => Z_OBUF(3)
    );
\Z_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF7FF0003080F000"
    )
        port map (
      I0 => X_IBUF(0),
      I1 => X_IBUF(1),
      I2 => Y_IBUF(1),
      I3 => X_IBUF(2),
      I4 => Y_IBUF(0),
      I5 => X_IBUF(3),
      O => a(3)
    );
\Z_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80808000000000"
    )
        port map (
      I0 => Y_IBUF(2),
      I1 => X_IBUF(2),
      I2 => Y_IBUF(0),
      I3 => X_IBUF(1),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(0),
      O => \Z_OBUF[3]_inst_i_3_n_0\
    );
\Z_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(4),
      O => Z(4)
    );
\Z_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \Z_OBUF[4]_inst_i_2_n_0\,
      I1 => Y_IBUF(3),
      I2 => X_IBUF(1),
      I3 => \a__0\(4),
      O => Z_OBUF(4)
    );
\Z_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008080808808080"
    )
        port map (
      I0 => X_IBUF(0),
      I1 => Y_IBUF(3),
      I2 => a(3),
      I3 => X_IBUF(1),
      I4 => Y_IBUF(2),
      I5 => \Z_OBUF[3]_inst_i_3_n_0\,
      O => \Z_OBUF[4]_inst_i_2_n_0\
    );
\Z_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E87717771788E888"
    )
        port map (
      I0 => \Z_OBUF[3]_inst_i_3_n_0\,
      I1 => a(3),
      I2 => X_IBUF(1),
      I3 => Y_IBUF(2),
      I4 => X_IBUF(2),
      I5 => a(4),
      O => \a__0\(4)
    );
\Z_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F7FA00000000000"
    )
        port map (
      I0 => X_IBUF(1),
      I1 => X_IBUF(0),
      I2 => Y_IBUF(0),
      I3 => X_IBUF(2),
      I4 => X_IBUF(3),
      I5 => Y_IBUF(1),
      O => a(4)
    );
\Z_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(5),
      O => Z(5)
    );
\Z_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \Z_OBUF[7]_inst_i_3_n_0\,
      I1 => Y_IBUF(3),
      I2 => X_IBUF(2),
      I3 => \a__0\(5),
      O => Z_OBUF(5)
    );
\Z_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(6),
      O => Z(6)
    );
\Z_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E87717771788E888"
    )
        port map (
      I0 => \Z_OBUF[7]_inst_i_3_n_0\,
      I1 => \a__0\(5),
      I2 => X_IBUF(2),
      I3 => Y_IBUF(3),
      I4 => X_IBUF(3),
      I5 => \a__0\(6),
      O => Z_OBUF(6)
    );
\Z_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(7),
      O => Z(7)
    );
\Z_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8C880F8808080"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => Y_IBUF(3),
      I2 => \a__0\(6),
      I3 => \Z_OBUF[7]_inst_i_3_n_0\,
      I4 => \a__0\(5),
      I5 => X_IBUF(2),
      O => Z_OBUF(7)
    );
\Z_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => Y_IBUF(2),
      I2 => a(5),
      I3 => \Z_OBUF[7]_inst_i_6_n_0\,
      O => \a__0\(6)
    );
\Z_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => X_IBUF(1),
      I1 => Y_IBUF(3),
      I2 => \a__0\(4),
      I3 => \Z_OBUF[4]_inst_i_2_n_0\,
      O => \Z_OBUF[7]_inst_i_3_n_0\
    );
\Z_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \Z_OBUF[7]_inst_i_6_n_0\,
      I1 => Y_IBUF(2),
      I2 => X_IBUF(3),
      I3 => a(5),
      O => \a__0\(5)
    );
\Z_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000080000000"
    )
        port map (
      I0 => X_IBUF(1),
      I1 => X_IBUF(0),
      I2 => Y_IBUF(0),
      I3 => X_IBUF(3),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(2),
      O => a(5)
    );
\Z_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8C880F8808080"
    )
        port map (
      I0 => X_IBUF(2),
      I1 => Y_IBUF(2),
      I2 => a(4),
      I3 => \Z_OBUF[3]_inst_i_3_n_0\,
      I4 => a(3),
      I5 => X_IBUF(1),
      O => \Z_OBUF[7]_inst_i_6_n_0\
    );
end STRUCTURE;
