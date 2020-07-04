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
#                                   +-----+
#      +----[PWR]-------------------| USB |--+
#      |                            +-----+  |
#      |         GND|RST2  [ ][ ]            |
#      |       MOSI2|SCK2  [ ][ ]  SCL/A5[ ] | PC5  |I2C
#      |          5V|MISO2 [ ][ ]  SDA/A4[ ] | PC4  |
#      |                             AREF[ ] |
#      |                              GND[ ] |
#      | [ ]N/C                    SCK/13[ ] | PB5  |SPI
#      | [ ]v.ref                 MISO/12[ ] |  .   |
#      | [ ]RST              OC2A/MOSI/11[ ]~|  .   |
#      | [ ]3V3    +---+       OC1B/SS/10[ ]~|  .   |
#      | [ ]5v    -| A |-          OC1A/9[ ]~|  .
#      | [ ]GND   -| R |-          ICP1/8[ ] | PB0
#      | [ ]GND   -| D |-                    |
#      | [ ]Vin   -| U |-               7[ ] | PD7
#      |          -| I |-          OC0A/6[ ]~|  .
#  PC0 | [ ]A0    -| N |-       OC0B/T1/5[ ]~|  .
#   .  | [ ]A1    -| O |-            T0/4[ ] |  .
#   .  | [ ]A2     +---+      OC2B/INT1/3[ ]~|  .
#   .  | [ ]A3                     INT0/2[ ] |  .
#   .  | [ ]A4/SDA  RST SCK MISO     TX>1[ ] |  .
#  PC5 | [ ]A5/SCL  [ ] [ ] [ ]      RX<0[ ] | PD0
#      |            [ ] [ ] [ ]              |
#      |  UNO_R3    GND MOSI 5V  ____________/
#       \_______________________/
echo -e  $B"                                  "$G"+-----+"$B""
echo -e  $B"     +----"$G"["$R"PWR"$G"]"$B"-------------------"$G"|$R USB $G|$B--+"
echo -e  $B"     |                            "$G"+-----+"$B"  |"
echo -e  $B"     |         "$C"GND"$G"|"$W"RST2 "$G" [ ][ ]            "$B"|"
echo -e  $B"     |       "$W"MOSI2"$G"|"$W"SCK2 "$G" [ ][ ]  "$T"SCL"$G"/"$W"A5"$G"[ ] "$B"| "$P"PC5  "$G"|"$W"I2C"
echo -e  $B"     |          "$R"5V"$G"|"$W"MISO2"$G" [ ][ ]  "$T"SDA"$G"/"$W"A4"$G"[ ] "$B"| "$P"PC4  "$G"|"
echo -e  $B"     |                             "$Y"AREF"$G"[ ] "$B"|"
echo -e  $B"     |                              "$C"GND"$G"[ ] "$B"|"
echo -e  $B"     | "$G"[ ]"$W"N/C                    "$T"SCK"$G"/"$W"13"$G"[ ] "$B"| "$P"PB5  "$G"|"$W"SPI"
echo -e  $B"     | "$G"[ ]"$Y"v.ref"$W"                 "$T"MISO"$G"/"$W"12"$G"[ ] "$B"|  "$P".   "$G"|"
echo -e  $B"     | "$G"[ ]"$W"RST              "$T"OC2A"$G"/"$T"MOSI"$G"/"$W"11"$G"[ ]~"$B"|  "$P".   "$G"|"
echo -e  $B"     | "$G"[ ]"$Y"3V3"$W"    +---+       "$T"OC1B"$G"/"$T"SS"$G"/"$W"10"$G"[ ]~"$B"|  "$P".   "$G"|"
echo -e  $B"     | "$G"[ ]"$R"5v"$W"    -| A |-          "$T"OC1A"$G"/"$W"9"$G"[ ]~"$B"|  "$P"."
echo -e  $B"     | "$G"[ ]"$C"GND"$W"   -| R |-          "$T"ICP1"$G"/"$W"8"$G"[ ] "$B"| "$P"PB0"
echo -e  $B"     | "$G"[ ]"$C"GND"$W"   -| D |-                    "$B"|"
echo -e  $B"     | "$G"[ ]"$R"Vin"$W"   -| U |-               7"$G"[ ] "$B"| "$P"PD7"
echo -e  $B"     | "$W"         -| I |-          "$T"OC0A"$G"/"$W"6"$G"[ ]~"$B"|  "$P"."
echo -e  $P" PC0 "$B"| "$G"[ ]"$W"A0    -| N |-       "$T"OC0B"$G"/"$T"T1"$G"/"$W"5"$G"[ ]~"$B"|  "$P"."
echo -e  $P"  .  "$B"| "$G"[ ]"$W"A1    -| O |-            "$T"T0"$G"/"$W"4"$G"[ ] "$B"|  "$P"."
echo -e  $P"  .  "$B"| "$G"[ ]"$W"A2     +---+      "$T"OC2B"$G"/"$T"INT1"$G"/"$W"3"$G"[ ]~"$B"|  "$P"."
echo -e  $P"  .  "$B"| "$G"[ ]"$W"A3                     "$T"INT0"$G"/"$W"2"$G"[ ] "$B"|  "$P"."
echo -e  $P"  .  "$B"| "$G"[ ]"$W"A4"$G"/"$T"SDA"$W"  RST SCK MISO     "$T"TX>"$W"1"$G"[ ] "$B"|  "$P"."
echo -e  $P" PC5 "$B"| "$G"[ ]"$W"A5"$G"/"$T"SCL"$G"  [ ] [ ] [ ]      "$T"RX<"$W"0"$G"[ ] "$B"| "$P"PD0"
echo -e  $B"     |            "$G"[ ] [ ] [ ]"$G"              "$B"|"
echo -e  $B"     |  "$W"UNO_R3    "$C"GND "$W"MOSI "$R"5V"$B"  ____________/ "
echo -e  $B"      \_______________________/"$N
}

function mega(){
#                                   +-----+
#      +----[PWR]-------------------| USB |--+
#      |                            +-----+  |
#      |         GND|RST2  [ ][ ]            |
#      |       MOSI2|SCK2  [ ][ ]  SCL/21[ ] | PD0  |I2C
#      |          5V|MISO2 [ ][ ]  SDA/20[ ] | PD1  |
#      |                             AREF[ ] |
#      |                              GND[ ] |
#      | [ ]N/C              OC1C/OC0A/13[ ]~| PB7
#      | [ ]v.ref                 OC1B/12[ ]~| PB6
#      | [ ]RST                   OC1A/11[ ]~| PB5
#      | [ ]3V3                   OC2A/10[ ]~| PB4
#      | [ ]5V                     OC2B/9[ ]~| PH6
#      | [ ]GND      +---------+   OC4C/8[ ]~| PH5
#      | [ ]GND      |         |             |
#      | [ ]Vin      | ARDUINO |   OC4B/7[ ]~| PH4
#      |             |  MEGA   |   OC4A/6[ ]~| PH3
#  PF0 | [ ]A0       |         |   OC3A/5[ ]~| PE3
#   .  | [ ]A1       +---------+   OC0B/4[ ]~| PG5
#   .  | [ ]A2                OC3C/INT5/3[ ]~| PE5
#   .  | [ ]A3                OC3B/INT4/2[ ]~| PE4
#   .  | [ ]A4                      TX0>1[ ] | PE1
#   .  | [ ]A5                      RX0<0[ ] | PE0
#   .  | [ ]A6                               |
#  PF7 | [ ]A7                     TX3/14[ ] | PJ1
#      |                           RX3/15[ ] | PJ0
#  PK0 | [ ]A8                     TX2/16[ ] | PH1
#   .  | [ ]A9                     RX2/17[ ] | PH0
#   .  | [ ]A10               TX1/INT3/18[ ] | PD3
#   .  | [ ]A11               RX1/INT2/19[ ] | PD2
#   .  | [ ]A12               SDA/INT1/20[ ] | PD1
#   .  | [ ]A13               SCL/INT0/21[ ] | PD0
#   .  | [ ]A14                              |
#  PK7 | [ ]A15                              | Ports:
#      |                RST SCK MISO         | 22=PA0       23=PA1
#      |         ICSP   [ ] [ ] [ ]          | 24=PA2       25=PA3
#      |                [ ] [ ] [ ]          | 26=PA4       27=PA5
#      |                GND MOSI 5V          | 28=PA6       29=PA7
#      | G                                   | 30=PC7       31=PC6
#      | N 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 | 32=PC5       33=PC4
#      | D 2 0 8 6 4 2 0 8 6 4 2 0 8 6 4 2 V | 34=PC3       35=PC2
#      |         ~ ~                         | 36=PC1       37=PC0
#      | @ # # # # # # # # # # # # # # # # @ | 38=PD7/T0    39=PG2
#      | @ # # # # # # # # # # # # # # # # @ | 40=PG1       41=PG0
#      |           ~                         | 42=PL7       43=PL6
#      | G 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 5 | 44=PL5/OC5C  45=PL4/OC5B
#      | N 3 1 9 7 5 3 1 9 7 5 3 1 9 7 5 3 V | 46=PL3/OC5A  47=PL2/T5
#      | D                                   | 48=PL1/ICP5  49=PL0/ICP4
#      |                                     | 50=PB3/MISO  51=PB2/MOSI  |SPI
#      |     2560                ____________/ 52=PB1/SCK   53=PB0/SS    |
#       \_______________________/

echo -e $B"                                  "$G"+-----+"$B""
echo -e $B"     +----"$G"["$R"PWR"$G"]"$B"-------------------"$G"|$R USB $G|$B--+"
echo -e $B"     |                            "$G"+-----+"$B"  |"
echo -e $B"     |         "$C"GND"$G"|"$W"RST2 "$G" [ ][ ]            "$B"|"
echo -e $B"     |       "$W"MOSI2"$G"|"$W"SCK2 "$G" [ ][ ]  "$T"SCL"$G"/"$W"21"$G"[ ] "$B"| "$P"PD0  "$G"|"$W"I2C"
echo -e $B"     |          "$R"5V"$G"|"$W"MISO2"$G" [ ][ ]  "$T"SDA"$G"/"$W"20"$G"[ ] "$B"| "$P"PD1  "$G"|"
echo -e $B"     |                             "$Y"AREF"$G"[ ] "$B"|"
echo -e $B"     |                              "$C"GND"$G"[ ] "$B"|"
echo -e $B"     | "$G"[ ]"$W"N/C              "$T"OC1C"$G"/"$T"OC0A"$G"/"$W"13"$G"[ ]~"$B"| "$P"PB7"
echo -e $B"     | "$G"[ ]"$Y"v.ref"$W"                 "$T"OC1B"$G"/"$W"12"$G"[ ]~"$B"| "$P"PB6"
echo -e $B"     | "$G"[ ]"$W"RST                   "$T"OC1A"$G"/"$W"11"$G"[ ]~"$B"| "$P"PB5"
echo -e $B"     | "$G"[ ]"$Y"3V3                   "$T"OC2A"$G"/"$W"10"$G"[ ]~"$B"| "$P"PB4"
echo -e $B"     | "$G"[ ]"$R"5V                     "$T"OC2B"$G"/"$W"9"$G"[ ]~"$B"| "$P"PH6"
echo -e $B"     | "$G"[ ]"$C"GND"$W"      +---------+   "$T"OC4C"$G"/"$W"8"$G"[ ]~"$B"| "$P"PH5"
echo -e $B"     | "$G"[ ]"$C"GND"$W"      |         |             "$B"|"
echo -e $B"     | "$G"[ ]"$R"Vin"$W"      | ARDUINO |   "$T"OC4B"$G"/"$W"7"$G"[ ]~"$B"| "$P"PH4"
echo -e $B"     | "$W"            |  MEGA   |   "$T"OC4A"$G"/"$W"6"$G"[ ]~"$B"| "$P"PH3"
echo -e $P" PF0 "$B"| "$G"[ ]"$W"A0       |         |   "$T"OC3A"$G"/"$W"5"$G"[ ]~"$B"| "$P"PE3"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A1       +---------+   "$T"OC0B"$G"/"$W"4"$G"[ ]~"$B"| "$P"PG5"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A2                "$T"OC3C"$G"/"$T"INT5"$G"/"$W"3"$G"[ ]~"$B"| "$P"PE5"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A3                "$T"OC3B"$G"/"$T"INT4"$G"/"$W"2"$G"[ ]~"$B"| "$P"PE4"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A4                      "$T"TX0>"$W"1"$G"[ ] "$B"| "$P"PE1"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A5                      "$T"RX0<"$W"0"$G"[ ] "$B"| "$P"PE0"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A6                              "$B" |"
echo -e $P" PF7 "$B"| "$G"[ ]"$W"A7                     "$T"TX3"$G"/"$W"14"$G"[ ]"$B" | "$P"PJ1"
echo -e $B"     |                           "$T"RX3"$G"/"$W"15"$G"[ ]"$B" | "$P"PJ0"
echo -e $P" PK0 "$B"| "$G"[ ]"$W"A8                     "$T"TX2"$G"/"$W"16"$G"[ ]"$B" | "$P"PH1"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A9                     "$T"RX2"$G"/"$W"17"$G"[ ]"$B" | "$P"PH0"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A10               "$T"TX1"$G"/"$T"INT3"$G"/"$W"18"$G"[ ]"$B" | "$P"PD3"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A11               "$T"RX1"$G"/"$T"INT2"$G"/"$W"19"$G"[ ]"$B" | "$P"PD2"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A12               "$T"SDA"$G"/"$T"INT1"$G"/"$W"20"$G"[ ]"$B" | "$P"PD1"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A13               "$T"SCL"$G"/"$T"INT0"$G"/"$W"21"$G"[ ]"$B" | "$P"PD0"
echo -e $P"  .  "$B"| "$G"[ ]"$W"A14                              "$B"|"
echo -e $P" PK7 "$B"| "$G"[ ]"$W"A15                              "$B"| "$W"Ports:"
echo -e $B"     |                "$W"RST SCK MISO"$B"         | "$W"22"$G"="$P"PA0       "$W"23"$G"="$P"PA1"
echo -e $B"     |         "$W"ICSP   "$G"[ ] [ ] [ ]"$B"          | "$W"24"$G"="$P"PA2       "$W"25"$G"="$P"PA3"
echo -e $B"     |                "$G"[ ] [ ] [ ]"$B"          | "$W"26"$G"="$P"PA4       "$W"27"$G"="$P"PA5"
echo -e $B"     |                "$C"GND "$W"MOSI "$R"5V"$B"          | "$W"28"$G"="$P"PA6       "$W"29"$G"="$P"PA7"
echo -e $B"     | "$C"G                                   "$B"| "$W"30"$G"="$P"PC7       "$W"31"$G"="$P"PC6"
echo -e $B"     | "$C"N"$W" 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 "$R"5"$B" | "$W"32"$G"="$P"PC5       "$W"33"$G"="$P"PC4"
echo -e $B"     | "$C"D"$W" 2 0 8 6 4 2 0 8 6 4 2 0 8 6 4 2 "$R"V"$B" | "$W"34"$G"="$P"PC3       "$W"35"$G"="$P"PC2"
echo -e $B"     | "$G"        ~ ~                         "$B"| "$W"36"$G"="$P"PC1       "$W"37"$G"="$P"PC0"
echo -e $B"     | "$G"@ # # # # # # # # # # # # # # # # @ "$B"| "$W"38"$G"="$P"PD7"$G"/"$T"T0    "$W"39"$G"="$P"PG2"
echo -e $B"     | "$G"@ # # # # # # # # # # # # # # # # @ "$B"| "$W"40"$G"="$P"PG1       "$W"41"$G"="$P"PG0"
echo -e $B"     | "$G"          ~                         "$B"| "$W"42"$G"="$P"PL7       "$W"43"$G"="$P"PL6"
echo -e $B"     | "$C"G"$W" 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 "$R"5 "$B"| "$W"44"$G"="$P"PL5"$G"/"$T"OC5C  "$W"45"$G"="$P"PL4"$G"/"$T"OC5B"
echo -e $B"     | "$C"N"$W" 3 1 9 7 5 3 1 9 7 5 3 1 9 7 5 3 "$R"V "$B"| "$W"46"$G"="$P"PL3"$G"/"$T"OC5A  "$W"47"$G"="$P"PL2"$G"/"$T"T5"
echo -e $B"     | "$C"D                                   "$B"| "$W"48"$G"="$P"PL1"$G"/"$T"ICP5  "$W"49"$G"="$P"PL0"$G"/"$T"ICP4"
echo -e $B"     |                                     | "$W"50"$G"="$P"PB3"$G"/"$T"MISO  "$W"51"$G"="$P"PB2"$G"/"$T"MOSI  "$G"|"$W"SPI"
echo -e $B"     |     "$W"2560"$B"                ____________/ "$W"52"$G"="$P"PB1"$G"/"$T"SCK   "$W"53"$G"="$P"PB0"$G"/"$T"SS    "$G"|"
echo -e $B"      \_______________________/"$N
}

function nano() {
#                 +-----+
#     +-----------| USB |-----------+
#     |           +-----+           |
# PB5 | [ ]D13/SCK      MISO/D12[ ] |  PB4
#     | [ ]3.3V         MOSI/D11[ ]~|   .
#     | [ ]V.ref          SS/D10[ ]~|   .
# PC0 | [ ]A0                 D9[ ]~|   .
#  .  | [ ]A1                 D8[ ] |  PB0
#  .  | [ ]A2                 D7[ ] |  PD7
#  .  | [ ]A3                 D6[ ]~|   .
#  .  | [ ]A4/SDA             D5[ ]~|   .
# PC5 | [ ]A5/SCL             D4[ ] |   .
#     | [ ]A6            INT1/D3[ ]~|   .
#     | [ ]A7            INT0/D2[ ] |  PD2
#     | [ ]5V                GND[ ] |
#     | [ ]RST               RST[ ] |
#     | [ ]GND  5V MOSI GND  RX0[ ] |  PD0
#     | [ ]Vin  [ ] [ ] [ ]  TX1[ ] |  PD1
#     |         [ ] [ ] [ ]         |
#     |        MISO SCK RST         |
#     +-NANO-V3---------------------+
echo -e "                 "$G"+-----+"
echo -e "     "$B"+-----------"$G"|"$R" USB "$G"|"$B"-----------+"
echo -e "     "$B"|           "$G"+-----+           "$B"|"
echo -e " "$P"PB5 "$B"|"$G" [ ]"$W"D13"$G"/"$T"SCK      MISO/"$W"D12"$G"[ ] "$B"|  "$P"PB4"
echo -e "     "$B"|"$G" [ ]"$Y"3.3V         "$T"MOSI/"$W"D11"$G"[ ]~"$B"|   "$P"."
echo -e "     "$B"|"$G" [ ]"$Y"V.ref          "$T"SS/"$W"D10"$G"[ ]~"$B"|   "$P"."
echo -e " "$P"PC0 "$B"|"$G" [ ]"$W"A0    "$W"+------+     "$W"D9"$G"[ ]~"$B"|   "$P"."
echo -e "  "$P".  "$B"|"$G" [ ]"$W"A1    "$W"| NANO |     "$W"D8"$G"[ ] "$B"|  "$P"PB0"
echo -e "  "$P".  "$B"|"$G" [ ]"$W"A2    "$W"|  V3  |     "$W"D7"$G"[ ] "$B"|  "$P"PD7"
echo -e "  "$P".  "$B"|"$G" [ ]"$W"A3    "$W"+------+     "$W"D6"$G"[ ]~"$B"|   "$P"."
echo -e "  "$P".  "$B"|"$G" [ ]"$W"A4"$G"/"$T"SDA             "$W"D5"$G"[ ]~"$B"|   "$P"."
echo -e " "$P"PC5 "$B"|"$G" [ ]"$W"A5"$G"/"$T"SCL             "$W"D4"$G"[ ] "$B"|   "$P"."
echo -e "     "$B"|"$G" [ ]"$W"A6            "$T"INT1"$G"/"$W"D3"$G"[ ]~"$B"|   "$P"."
echo -e "     "$B"|"$G" [ ]"$W"A7            "$T"INT0"$G"/"$W"D2"$G"[ ] "$B"|  "$P"PD2"
echo -e "     "$B"|"$G" [ ]"$R"5V                "$C"GND"$G"[ ] "$B"|"
echo -e "     "$B"|"$G" [ ]"$W"RST               "$W"RST"$G"[ ] "$B"|"
echo -e "     "$B"|"$G" [ ]"$C"GND  "$R"5V "$W"MOSI "$C"GND  "$T"RX0"$G"[ ] "$B"|  "$P"PD0"
echo -e "     "$B"|"$G" [ ]"$R"Vin  "$G"[ ] [ ] [ ]  "$T"TX1"$G"[ ] "$B"|  "$P"PD1"
echo -e "     "$B"|         "$G"[ ] [ ] [ ]         "$B"|"
echo -e "     "$B"|        "$W"MISO SCK RST         "$B"|"
echo -e "     "$B"+-----------------------------+"$N

}

function isp() {
#   male (board)   female (programmer)
#        ┌───┐╎      ┌───┐
#  MISO  ╵▪ •│╎ VCC  │▢ ▢└┐ MISO
#  SCK    • •│╎ MOSI │▢ ▢ │ SCK
#  RESET ╷• •│╎ GND  │▢ ▢┌┘ RESET
#        └───┘╎      └───┘
#             ↑
#     edge of Uno board
echo -e $N"   male (board)   female (programmer)"
echo -e $B"        ┌───┐╎      ┌───┐"
echo -e $T"  MISO  "$B"╵"$G"▪ •"$B"│╎ "$R"VCC  "$B"│"$G"▢ ▢"$B"└┐ "$T"MISO"
echo -e $T"  SCK    "$G"• •"$B"│╎ "$T"MOSI "$B"│"$G"▢ ▢ "$B"│ "$T"SCK"
echo -e $W"  RESET "$B"╷"$G"• •"$B"│╎ "$C"GND  "$B"│"$G"▢ ▢"$B"┌┘ "$W"RESET"
echo -e $B"        └───┘╎      └───┘"
echo -e $N"             ↑"
echo -e $N"     edge of Uno board"
}

function tiny13() {
#         ATtiny13/13A
#           ┌──┬┬──┐
#     RESET ┤1 └┘ 8├ Vcc
#  ADC3 PB3 ┤2    7├ PB2 SCK/ADC1/T0
#  ADC2 PB4 ┤3    6├ PB1 MISO/AIN1/OC0B/INT0
#       GND ┤4    5│ PB0 MOSI/AIN0/OC0A
#           └──────┘
echo -e $N"         ATtiny13/13A"
echo -e $B"           ┌──┬┬──┐"
echo -e $W"     RESET "$B"┤"$G"1 "$B"└┘ "$G"8"$B"├ "$R"Vcc"
echo -e $T"  ADC3 "$P"PB3 "$B"┤"$G"2    7"$B"├ "$P"PB2 "$T"SCK"$G"/"$T"ADC1"$G"/"$T"T0"
echo -e $T"  ADC2 "$P"PB4 "$B"┤"$G"3    6"$B"├ "$P"PB1 "$T"MISO"$G"/"$T"AIN1"$G"/"$T"OC0B"$G"/"$T"INT0"
echo -e $C"       GND "$B"┤"$G"4    5"$B"├ "$P"PB0 "$T"MOSI"$G"/"$T"AIN0"$G"/"$T"OC0A"
echo -e $B"           └──────┘"$N
}

function tinyx5() {
#             ATtiny25/45/85
#                ┌──┬┬──┐
#          RESET ┤1 └┘ 8├ Vcc
#  O̅C̅1̅B̅/ADC3 PB3 ┤2    7├ PB2 SCK/SCL/ADC1/T0/INT0
#  OC1B/ADC2 PB4 ┤3    6├ PB1 MISO/AIN1/OC0B/OC1A
#            GND ┤4    5├ PB0 MOSI/SDA/AIN0/OC0A/O̅C̅1̅A̅
#                └──────┘
echo -e $N"             ATtiny25/45/85"
echo -e $B"                ┌──┬┬──┐"
echo -e $W"          RESET "$B"┤"$G"1 "$B"└┘ "$G"8"$B"├ "$R"Vcc"
echo -e $T"  O̅C̅1̅B̅"$G"/"$T"ADC3 "$P"PB3 "$B"┤"$G"2    7"$B"├ "$P"PB2 "$T"SCK"$G"/"$T"SCL"$G"/"$T"ADC1"$G"/"$T"T0"$G"/"$T"INT0"
echo -e $T"  OC1B"$G"/"$T"ADC2 "$P"PB4 "$B"┤"$G"3    6"$B"├ "$P"PB1 "$T"MISO"$G"/"$T"AIN1"$G"/"$T"OC0B"$G"/"$T"OC1A"
echo -e $C"            GND "$B"┤"$G"4    5"$B"├ "$P"PB0 "$T"MOSI"$G"/"$T"SDA"$G"/"$T"AIN0"$G"/"$T"OC0A"$G"/"$T"O̅C̅1̅A̅"
echo -e $B"                └──────┘"$N
}

function tinyx4() {
#                     ATtiny24/44/84(A)
#                         ┌──┬┬──┐
#                     Vcc ┤1 └┘14├ GND
#                     PB0 ┤2   13├ PA0 ADC0
#                     PB1 ┤3   12├ PA1 ADC1/AIN0
#                   RESET ┤4   11├ PA2 ADC2/AIN1
#           INT0/OC0A PB2 ┤5   10├ PA3 ADC3/T0
#      ICP1/OC0B/ADC7 PA7 ┤6    9├ PA4 SCK/SCL/ADC4/T1
#  OC1A/ADC6/SDA/MOSI PA6 ┤7    8├ PA5 MISO/ADC5/OC1B
#                         └──────┘
echo -e $N"                     ATtiny24/44/84(A)"
echo -e $B"                         ┌──┬┬──┐"
echo -e $R"                     Vcc "$B"┤"$G"1 "$B"└┘"$G"14"$B"├ "$C"GND"
echo -e $P"                     PB0 "$B"┤"$G"2   13"$B"├ "$P"PA0 "$T"ADC0"
echo -e $P"                     PB1 "$B"┤"$G"3   12"$B"├ "$P"PA1 "$T"ADC1"$G"/"$T"AIN0"
echo -e $W"                   RESET "$B"┤"$G"4   11"$B"├ "$P"PA2 "$T"ADC2"$G"/"$T"AIN1"
echo -e $T"           INT0"$G"/"$T"OC0A "$P"PB2 "$B"┤"$G"5   10"$B"├ "$P"PA3 "$T"ADC3"$G"/"$T"T0"
echo -e $T"      ICP1"$G"/"$T"OC0B"$G"/"$T"ADC7 "$P"PA7 "$B"┤"$G"6    9"$B"├ "$P"PA4 "$T"SCK"$G"/"$T"SCL"$G"/"$T"ADC4"$G"/"$T"T1"
echo -e $T"  OC1A"$G"/"$T"ADC6"$G"/"$T"SDA"$G"/"$T"MOSI "$P"PA6 "$B"┤"$G"7    8"$B"├ "$P"PA5 "$T"MISO"$G"/"$T"ADC5"$G"/"$T"OC1B"
echo -e $B"                         └──────┘"$N
}

function usage() {
  echo "Usage: $0 {uno|mega|nano|isp|t13|t{2,4,8}5|t{2,4,8}4}..."
}

# At least one argument should be provided
if [ $# == 0 ]; then
   usage
   exit
fi

while [ -n "$1" ]; do
  case "$1" in
    "uno") uno ;;
    "mega") mega ;;
    "nano") nano ;;
    "isp") isp ;;
    "t13"|"t13a"|"tiny13"|"tiny13a") tiny13 ;;
    t[248]5|tiny[248]5) tinyx5 ;;
    t[248]4|tiny[248]4|t[248]4a|tiny[248]4a) tinyx4 ;;
    *) usage; exit ;;
  esac
  shift
done
