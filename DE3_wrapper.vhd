--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Apr  9 20:18:03 2022
--Host        : DESKTOP-LOGAN running 64-bit major release  (build 9200)
--Command     : generate_target DE3_wrapper.bd
--Design      : DE3_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DE3_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Add : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Divide : in STD_LOGIC;
    Multiply : in STD_LOGIC;
    Result : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Subtract : in STD_LOGIC
  );
end DE3_wrapper;

architecture STRUCTURE of DE3_wrapper is
  component DE3 is
  port (
    Add : in STD_LOGIC;
    Subtract : in STD_LOGIC;
    Multiply : in STD_LOGIC;
    Divide : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DE3;
begin
DE3_i: component DE3
     port map (
      A(7 downto 0) => A(7 downto 0),
      Add => Add,
      B(7 downto 0) => B(7 downto 0),
      Divide => Divide,
      Multiply => Multiply,
      Result(15 downto 0) => Result(15 downto 0),
      Subtract => Subtract
    );
end STRUCTURE;
