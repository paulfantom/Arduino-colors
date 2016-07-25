#!/bin/bash
W="\033[0;97m"
B="\033[1;34m"
R="\033[1;31m"
Y="\033[0;33m"
G="\033[0;32m"
T="\033[0;36m"
P="\033[0;35m"
C="\033[1;90m"
N="\033[0m"


function uno(){
#                               +-----+
#  +----[PWR]-------------------| USB |--+
#  |                            +-----+  |
#  |         GND/RST2  [ ][ ]            |
#  |       MOSI2/SCK2  [ ][ ]  A5/SCL[ ] |   C5 
#  |          5V/MISO2 [ ][ ]  A4/SDA[ ] |   C4 
#  |                             AREF[ ] |
#  |                              GND[ ] |
#  | [ ]N/C                    SCK/13[ ] |   B5
#  | [ ]v.ref                 MISO/12[ ] |   .
#  | [ ]RST                   MOSI/11[ ]~|   .
#  | [ ]3V3    +---+               10[ ]~|   .
#  | [ ]5v     | A |                9[ ]~|   .
#  | [ ]GND   -| R |-               8[ ] |   B0
#  | [ ]GND   -| D |-                    |
#  | [ ]Vin   -| U |-               7[ ] |   D7
#  |          -| I |-               6[ ]~|   .
#  | [ ]A0    -| G |-               5[ ]~|   .
#  | [ ]A1    -| O |-               4[ ] |   .
#  | [ ]A2     +---+           INT1/3[ ]~|   .
#  | [ ]A3                     INT0/2[ ] |   .
#  | [ ]A4/SDA  RST SCK MISO     TX>1[ ] |   .
#  | [ ]A5/SCL  [ ] [ ] [ ]      RX<0[ ] |   D0
#  |            [ ] [ ] [ ]              |
#  |  UNO_R3    GND MOSI 5V  ____________/
#   \_______________________/
echo -e  $B"                              "$G"+-----+"$B""
echo -e  $B" +----"$G"["$R"PWR"$G"]"$B"-------------------"$G"|$R USB $G|$B--+"
echo -e  $B" |                            "$G"+-----+"$B"  |"
echo -e  $B" |         "$C"GND"$G"|"$W"RST2 "$G" [ ][ ]            "$B"|"
echo -e  $B" |       "$W"MOSI2"$G"|"$W"SCK2 "$G" [ ][ ]  "$T"SCL"$G"/"$W"A5"$G"[ ] "$B"|   "$P"C5"
echo -e  $B" |          "$R"5V"$G"|"$W"MISO2"$G" [ ][ ]  "$T"SDA"$G"/"$W"A4"$G"[ ] "$B"|   "$P"C4"
echo -e  $B" |                             "$Y"AREF"$G"[ ] "$B"|"
echo -e  $B" |                              "$C"GND"$G"[ ] "$B"|"
echo -e  $B" | "$G"[ ]"$W"N/C                    "$T"SCK"$G"/"$W"13"$G"[ ] "$B"|   "$P"B5"
echo -e  $B" | "$G"[ ]"$Y"v.ref"$W"                 "$T"MISO"$G"/"$W"12"$G"[ ] "$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"RST                   "$T"MOSI"$G"/"$W"11"$G"[ ]~"$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$Y"3V3"$W"    +---+               10"$G"[ ]~"$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$R"5v"$W"     | A |                9"$G"[ ]~"$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$C"GND"$W"   -| R |-               8"$G"[ ] "$B"|   "$P"B0"
echo -e  $B" | "$G"[ ]"$C"GND"$W"   -| D |-                    "$B"|"
echo -e  $B" | "$G"[ ]"$R"Vin"$W"   -| U |-               7"$G"[ ] "$B"|   "$P"D7"
echo -e  $B" | "$W"         -| I |-               6"$G"[ ]~"$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"A0    -| N |-               5"$G"[ ]~"$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"A1    -| O |-               4"$G"[ ] "$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"A2     +---+           "$T"INT0"$G"/"$W"3"$G"[ ]~"$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"A3                     "$T"INT1"$G"/"$W"2"$G"[ ] "$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"A4"$G"/"$T"SDA"$W"  RST SCK MISO     "$T"TX>"$W"1"$G"[ ] "$B"|   "$P"."
echo -e  $B" | "$G"[ ]"$W"A5"$G"/"$T"SCL"$G"  [ ] [ ] [ ]      "$T"RX<"$W"0"$G"[ ] "$B"|   "$P"D0"
echo -e  $B" |            "$G"[ ] [ ] [ ]"$G"              |"
echo -e  $B" |  "$W"UNO_R3    "$C"GND "$W"MOSI "$R"5V"$B"  ____________/"
echo -e  $B"  \_______________________/"
}

function mega(){
#                       +-----+
#  +----[PWR]-------------------| USB |--+
#  |                            +-----+  |
#  |           GND/RST2  [ ] [ ]         |
#  |         MOSI2/SCK2  [ ] [ ]  SCL[ ] |   D0
#  |            5V/MISO2 [ ] [ ]  SDA[ ] |   D1
#  |                             AREF[ ] |
#  |                              GND[ ] |
#  | [ ]N/C                    SCK/13[ ]~|   B7
#  | [ ]v.ref                 MISO/12[ ]~|   B6
#  | [ ]RST                   MOSI/11[ ]~|   B5
#  | [ ]3V3      +----------+      10[ ]~|   B4
#  | [ ]5v       | ARDUINO  |       9[ ]~|   H6
#  | [ ]GND      |   MEGA   |       8[ ]~|   H5
#  | [ ]GND      +----------+            |
#  | [ ]Vin                         7[ ]~|   H4
#  |                                6[ ]~|   H3
#  | [ ]A0                          5[ ]~|   E3
#  | [ ]A1                          4[ ]~|   G5
#  | [ ]A2                     INT5/3[ ]~|   E5
#  | [ ]A3                     INT4/2[ ]~|   E4
#  | [ ]A4                       TX>1[ ]~|   E1
#  | [ ]A5                       RX<0[ ]~|   E0
#  | [ ]A6                               |   
#  | [ ]A7                     TX3/14[ ] |   J1
#  |                           RX3/15[ ] |   J0
#  | [ ]A8                     TX2/16[ ] |   H1         
#  | [ ]A9                     RX2/17[ ] |   H0
#  | [ ]A10               TX1/INT3/18[ ] |   D3         
#  | [ ]A11               RX1/INT2/19[ ] |   D2
#  | [ ]A12           I2C-SDA/INT1/20[ ] |   D1         
#  | [ ]A13           I2C-SCL/INT0/21[ ] |   D0
#  | [ ]A14                              |            
#  | [ ]A15                              |   Ports:
#  |                RST SCK MISO         |    22=A0  23=A1   
#  |         ICSP   [ ] [ ] [ ]          |    24=A2  25=A3   
#  |                [ ] [ ] [ ]          |    26=A4  27=A5   
#  |                GND MOSI 5V          |    28=A6  29=A7   
#  | G                                   |    30=C7  31=C6   
#  | N 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 |    32=C5  33=C4   
#  | D 2 0 8 6 4 2 0 8 6 4 2 0 8 6 4 2 V |    34=C3  35=C2   
#  |         ~ ~                         |    36=C1  37=C0   
#  | @ # # # # # # # # # # # # # # # # @ |    38=D7  39=G2    
#  | @ # # # # # # # # # # # # # # # # @ |    40=G1  41=G0   
#  |           ~                         |    42=L7  43=L6   
#  | G 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 |    44=L5  45=L4   
#  | N 3 1 9 7 5 3 1 9 7 5 3 1 9 7 5 3 V |    46=L3  47=L2   
#  | D                                   |    48=L1  49=L0    SPI:
#  |                                     |    50=B3  51=B2     50=MISO 51=MOSI
#  |     2560                ____________/    52=B1  53=B0     52=SCK  53=SS 
#   \_______________________/

echo -e $B"                              "$G"+-----+"$B""
echo -e $B" +----"$G"["$R"PWR"$G"]"$B"-------------------"$G"|$R USB $G|$B--+"
echo -e $B" |                            "$G"+-----+"$B"  |"
echo -e $B" |         "$C"GND"$G"|"$W"RST2 "$G" [ ][ ]            "$B"|"
echo -e $B" |       "$W"MOSI2"$G"|"$W"SCK2 "$G" [ ][ ]  "$T"SCL"$G"/"$W"A5"$G"[ ] "$B"|   "$P"D0"
echo -e $B" |          "$R"5V"$G"|"$W"MISO2"$G" [ ][ ]  "$T"SDA"$G"/"$W"A4"$G"[ ] "$B"|   "$P"D1"
echo -e $B" |                             "$Y"AREF"$G"[ ] "$B"|"
echo -e $B" |                              "$C"GND"$G"[ ] "$B"|"
echo -e $B" | "$G"[ ]"$W"N/C                    "$T"SCK"$G"/"$W"13"$G"[ ] "$B"|   "$P"B7"
echo -e $B" | "$G"[ ]"$Y"v.ref"$W"                 "$T"MISO"$G"/"$W"12"$G"[ ] "$B"|   "$P"B6"
echo -e $B" | "$G"[ ]"$W"RST                   "$T"MOSI"$G"/"$W"11"$G"[ ]~"$B"|   "$P"B5"
echo -e $B" | "$G"[ ]"$Y"3V3"$W"      +----------+      10"$G"[ ]~"$B"|   "$P"B4"
echo -e $B" | "$G"[ ]"$R"5v"$W"       | ARDUINO  |       9"$G"[ ]~"$B"|   "$P"H6"
echo -e $B" | "$G"[ ]"$C"GND"$W"      |   MEGA   |       8"$G"[ ] "$B"|   "$P"H5"
echo -e $B" | "$G"[ ]"$C"GND"$W"      +----------+            "$B"|"
echo -e $B" | "$G"[ ]"$R"Vin"$W"                         7"$G"[ ] "$B"|   "$P"H4"
echo -e $B" | "$W"                               6"$G"[ ]~"$B"|   "$P"H3"
echo -e $B" | "$G"[ ]"$W"A0                          5"$G"[ ]~"$B"|   "$P"E3"
echo -e $B" | "$G"[ ]"$W"A1                          4"$G"[ ] "$B"|   "$P"G5"
echo -e $B" | "$G"[ ]"$W"A2                     "$T"IGT0"$G"/"$W"3"$G"[ ]~"$B"|   "$P"E5"
echo -e $B" | "$G"[ ]"$W"A3                     "$T"IGT1"$G"/"$W"2"$G"[ ] "$B"|   "$P"E4"
echo -e $B" | "$G"[ ]"$W"A4"$G"/"$T"SDA                   "$T"TX>"$W"1"$G"[ ] "$B"|   "$P"E1"
echo -e $B" | "$G"[ ]"$W"A5"$G"/"$T"SCL                   "$T"RX<"$W"0"$G"[ ] "$B"|   "$P"E0"
echo -e $B" | "$G"[ ]"$W"A6                              "$B" |" 
echo -e $B" | "$G"[ ]"$W"A7                     "$T"TX3"$G"/"$W"14"$G"[ ]"$B" |   "$P"J1"
echo -e $B" |                           "$T"RX3"$G"/"$W"15"$G"[ ]"$B" |   "$P"J0"
echo -e $B" | "$G"[ ]"$W"A8                     "$T"TX2"$G"/"$W"16"$G"[ ]"$B" |   "$P"H1"         
echo -e $B" | "$G"[ ]"$W"A9                     "$T"RX2"$G"/"$W"17"$G"[ ]"$B" |   "$P"H0"
echo -e $B" | "$G"[ ]"$W"A10               "$T"TX1"$G"/"$T"INT3"$G"/"$W"18"$G"[ ]"$B" |   "$P"D3"         
echo -e $B" | "$G"[ ]"$W"A11               "$T"RX1"$G"/"$T"INT2"$G"/"$W"19"$G"[ ]"$B" |   "$P"D2"
echo -e $B" | "$G"[ ]"$W"A12           "$T"I2C-SDA"$G"/"$T"INT1"$G"/"$W"20"$G"[ ]"$B" |   "$P"D1"         
echo -e $B" | "$G"[ ]"$W"A13           "$T"I2C-SCL"$G"/"$T"INT0"$G"/"$W"21"$G"[ ]"$B" |   "$P"D0"
echo -e $B" | "$G"[ ]"$W"A14                              "$B"|"           
echo -e $B" | "$G"[ ]"$W"A15                              "$B"|   "$W"Ports:"
echo -e $B" |                "$W"RST SCK MISO"$B"         |    "$W"22"$G"="$P"A0  "$W"23"$G"="$P"A1"
echo -e $B" |         "$W"ICSP   "$G"[ ] [ ] [ ]"$B"          |    "$W"24"$G"="$P"A2  "$W"25"$G"="$P"A3"
echo -e $B" |                "$G"[ ] [ ] [ ]"$B"          |    "$W"26"$G"="$P"A4  "$W"27"$G"="$P"A5"
echo -e $B" |                "$C"GND "$W"MOSI "$R"5V"$B"          |    "$W"28"$G"="$P"A6  "$W"29"$G"="$P"A7"
echo -e $B" | "$C"G                                   "$B"|    "$W"30"$G"="$P"C7  "$W"31"$G"="$P"C6"
echo -e $B" | "$C"N"$W" 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 "$R"5"$B" |    "$W"32"$G"="$P"C5  "$W"33"$G"="$P"C4"
echo -e $B" | "$C"D"$W" 2 0 8 6 4 2 0 8 6 4 2 0 8 6 4 2 "$R"V"$B" |    "$W"34"$G"="$P"C3  "$W"35"$G"="$P"C2"
echo -e $B" | "$G"        ~ ~                         "$B"|    "$W"36"$G"="$P"C1  "$W"37"$G"="$P"C0"
echo -e $B" | "$G"@ # # # # # # # # # # # # # # # # @ "$B"|    "$W"38"$G"="$P"D7  "$W"39"$G"="$P"G2"
echo -e $B" | "$G"@ # # # # # # # # # # # # # # # # @ "$B"|    "$W"40"$G"="$P"G1  "$W"41"$G"="$P"G0"
echo -e $B" | "$G"          ~                         "$B"|    "$W"42"$G"="$P"L7  "$W"43"$G"="$P"L6"
echo -e $B" | "$C"G"$W" 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 "$R"5 "$B"|    "$W"44"$G"="$P"L5  "$W"45"$G"="$P"L4"
echo -e $B" | "$C"N"$W" 3 1 9 7 5 3 1 9 7 5 3 1 9 7 5 3 "$R"V "$B"|    "$W"46"$G"="$P"L3  "$W"47"$G"="$P"L2"
echo -e $B" | "$C"D                                   "$B"|    "$W"48"$G"="$P"L1  "$W"49"$G"="$P"L0    "$W"SPI:"
echo -e $B" |                                     |    "$W"50"$G"="$P"B3  "$W"51"$G"="$P"B2     "$W"50"$G"="$P"MISO "$W"51"$G"="$P"MOSI"
echo -e $B" |     "$W"2560"$B"                ____________/    "$W"52"$G"="$P"B1  "$W"53"$G"="$P"B0     "$W"52"$G"="$P"SCK  "$W"53"$G"="$P"SS"
echo -e $B"  \_______________________/"
}

function nano() {
#             +-----+
# +-----------| USB |-----------+
# |           +-----+           |
# | [ ]D13/SCK      MISO/D12[ ] |
# | [ ]3.3V         MOSI/D11[ ]~|
# | [ ]V.ref          SS/D10[ ]~|
# | [ ]A0                 D9[ ]~|
# | [ ]A1                 D8[ ] |
# | [ ]A2                 D7[ ] |
# | [ ]A3                 D6[ ]~|
# | [ ]A4                 D5[ ]~|
# | [ ]A5/SCL             D4[ ] |
# | [ ]A6/SDA        INT1/D3[ ]~|
# | [ ]A7            INT0/D2[ ] |
# | [ ]5V                GND[ ] |
# | [ ]RST               RST[ ] |
# | [ ]GND  5V MOSI GND  TX1[ ] |
# | [ ]Vin  [ ] [ ] [ ]  RX1[ ] |
# |         [ ] [ ] [ ]         |
# |        MISO SCK RST         |
# +-NANO-V3---------------------+
echo -e "             "$G"+-----+"
echo -e " "$B"+-----------"$G"|"$R" USB "$G"|"$B"-----------+"
echo -e " "$B"|           "$G"+-----+           "$B"|"
echo -e " "$B"|"$G" [ ]"$W"D13"$G"/"$T"SCK      MISO/"$W"D12"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$Y"3.3V         "$T"MOSI/"$W"D11"$G"[ ]~"$B"|"
echo -e " "$B"|"$G" [ ]"$Y"V.ref          "$T"SS/"$W"D10"$G"[ ]~"$B"|"
echo -e " "$B"|"$G" [ ]"$W"A0    "$W"+------+     "$W"D9"$G"[ ]~"$B"|"
echo -e " "$B"|"$G" [ ]"$W"A1    "$W"| NANO |     "$W"D8"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$W"A2    "$W"|  V3  |     "$W"D7"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$W"A3    "$W"+------+     "$W"D6"$G"[ ]~"$B"|"
echo -e " "$B"|"$G" [ ]"$W"A4                 "$W"D5"$G"[ ]~"$B"|"
echo -e " "$B"|"$G" [ ]"$W"A5"$G"/"$T"SCL             "$W"D4"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$W"A6"$G"/"$T"SDA        "$T"INT1"$G"/"$W"D3"$G"[ ]~"$B"|"
echo -e " "$B"|"$G" [ ]"$W"A7            "$T"INT0"$G"/"$W"D2"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$R"5V                "$C"GND"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$W"RST               "$W"RST"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$C"GND  "$R"5V "$W"MOSI "$C"GND  "$T"TX1"$G"[ ] "$B"|"
echo -e " "$B"|"$G" [ ]"$R"Vin  "$G"[ ] [ ] [ ]  "$T"RX1"$G"[ ] "$B"|"
echo -e " "$B"|         "$G"[ ] [ ] [ ]         "$B"|"
echo -e " "$B"|        "$W"MISO SCK RST         "$B"|"
echo -e " "$B"+-----------------------------+"

}

case "$1" in
  "uno") uno ;;
  "mega") mega ;;
  "nano") nano ;;
  *) uno;;
esac
