// This file was generated by verifier.rs

pragma circom 2.0.9;

// Order of Goldilocks field
function Order() { return 18446744069414584321; }
function W() { return 7; }
function DTH_ROOT() { return 18446744069414584320; }

function NUM_WIRES_CAP() { return 16; }
function NUM_PLONK_ZS_PARTIAL_PRODUCTS_CAP() { return 16; }
function NUM_QUOTIENT_POLYS_CAP() { return 16; }

function NUM_OPENINGS_CONSTANTS() { return 5; }
function NUM_OPENINGS_PLONK_SIGMAS() { return 80; }
function NUM_OPENINGS_WIRES() { return 135; }
function NUM_OPENINGS_PLONK_ZS() { return 2; }
function NUM_OPENINGS_PLONK_ZS_NEXT() { return 2; }
function NUM_OPENINGS_PARTIAL_PRODUCTS() { return 18; }
function NUM_OPENINGS_QUOTIENT_POLYS() { return 16; }

function NUM_FRI_COMMIT_ROUND() { return 2; }
function FRI_COMMIT_MERKLE_CAP_HEIGHT() { return 16; }
function NUM_FRI_QUERY_ROUND() { return 28; }
function NUM_FRI_QUERY_INIT_CONSTANTS_SIGMAS_V() { return 85; }
function NUM_FRI_QUERY_INIT_CONSTANTS_SIGMAS_P() { return 11; }
function NUM_FRI_QUERY_INIT_WIRES_V() { return 135; }
function NUM_FRI_QUERY_INIT_WIRES_P() { return 11; }
function NUM_FRI_QUERY_INIT_ZS_PARTIAL_V() { return 20; }
function NUM_FRI_QUERY_INIT_ZS_PARTIAL_P() { return 11; }
function NUM_FRI_QUERY_INIT_QUOTIENT_V() { return 16; }
function NUM_FRI_QUERY_INIT_QUOTIENT_P() { return 11; }
function NUM_FRI_QUERY_STEP0_V() { return 16; }
function NUM_FRI_QUERY_STEP0_P() { return 7; }
function NUM_FRI_QUERY_STEP1_V() { return 16; }
function NUM_FRI_QUERY_STEP1_P() { return 3; }
function NUM_FRI_FINAL_POLY_EXT_V() { return 16; }

function NUM_SIGMA_CAPS() { return 16; }
function GET_SIGMA_CAP(i) {
  var sc[16][4];
  sc[0][0] = 12456438215495247525;
  sc[0][1] = 16787954633923549505;
  sc[0][2] = 161309524268545342;
  sc[0][3] = 11158105640795843616;
  sc[1][0] = 8059373417069669473;
  sc[1][1] = 13023191571641694885;
  sc[1][2] = 629973114135640175;
  sc[1][3] = 10348523719078725593;
  sc[2][0] = 14126256625341842928;
  sc[2][1] = 8472057425694935416;
  sc[2][2] = 5450264718607115971;
  sc[2][3] = 4260365433122938995;
  sc[3][0] = 14133891279826687008;
  sc[3][1] = 18134028902478747263;
  sc[3][2] = 1316187756831906653;
  sc[3][3] = 1901098311698969493;
  sc[4][0] = 12982446411672607417;
  sc[4][1] = 2402548871834596738;
  sc[4][2] = 4442335765108164271;
  sc[4][3] = 6671940667889359538;
  sc[5][0] = 2118410705890696008;
  sc[5][1] = 13702203335226853516;
  sc[5][2] = 1054363299296666330;
  sc[5][3] = 9566462936113454394;
  sc[6][0] = 6960138955470227650;
  sc[6][1] = 3826762545849658034;
  sc[6][2] = 14390073063269345690;
  sc[6][3] = 5144593608617012321;
  sc[7][0] = 1685633188025675432;
  sc[7][1] = 12600645965666232807;
  sc[7][2] = 17408377799853924221;
  sc[7][3] = 5073054209663804224;
  sc[8][0] = 4394242621581915889;
  sc[8][1] = 4319104199924488784;
  sc[8][2] = 8179261539730609433;
  sc[8][3] = 9134064997136637265;
  sc[9][0] = 2149482762600654153;
  sc[9][1] = 17023707392233942547;
  sc[9][2] = 4578626771164443075;
  sc[9][3] = 5344687785136850862;
  sc[10][0] = 5595824978642994142;
  sc[10][1] = 13422013246315508953;
  sc[10][2] = 14414128673470422986;
  sc[10][3] = 7620950824885259300;
  sc[11][0] = 18374653709255890203;
  sc[11][1] = 12320993366753727163;
  sc[11][2] = 1514680008732472537;
  sc[11][3] = 4450405701291156126;
  sc[12][0] = 2772142661438873884;
  sc[12][1] = 1247068738275845625;
  sc[12][2] = 11179534479407042787;
  sc[12][3] = 15713127787336004564;
  sc[13][0] = 15246338992692934725;
  sc[13][1] = 12776601757869789219;
  sc[13][2] = 8764323351908706469;
  sc[13][3] = 976206291937271370;
  sc[14][0] = 12496268326952992420;
  sc[14][1] = 11386747790909676574;
  sc[14][2] = 15862652511468614503;
  sc[14][3] = 14101236677428597907;
  sc[15][0] = 8652402701136796598;
  sc[15][1] = 15483933579727600996;
  sc[15][2] = 12609155281718143885;
  sc[15][3] = 345428611926118487;
  return sc[i];
}

function NUM_REDUCTION_ARITY_BITS() { return 2; }
function REDUCTION_ARITY_BITS() {
  var bits[2];
  bits[0] = 4;
  bits[1] = 4;
  return bits;
}

function G_BY_ARITY_BITS(arity_bits) {
  var g_arity_bits[4];
  g_arity_bits[0] = 18446744069414584320;
  g_arity_bits[1] = 281474976710656;
  g_arity_bits[2] = 18446744069397807105;
  g_arity_bits[3] = 17293822564807737345;
  return g_arity_bits[arity_bits - 1];
}

function G_FROM_DEGREE_BITS() {
  var g[2];
  g[0] = 17492915097719143606;
  g[1] = 0;
  return g;
}

function MULTIPLICATIVE_GROUP_GENERATOR() { return 7; }
function PRIMITIVE_ROOT_OF_UNITY_LDE() { return 17776499369601055404; }
function LOG_SIZE_OF_LDE_DOMAIN() { return 15; }
function NUM_CHALLENGES() { return 2; }
function MIN_FRI_POW_RESPONSE() { return 16; }
function CIRCUIT_DIGEST() {
  var cd[4];
  cd[0] = 6784524143361885627;
  cd[1] = 1317868022714672350;
  cd[2] = 12157137441439210232;
  cd[3] = 1710508254644067961;
  return cd;
}
function SPONGE_RATE() { return 8; }
function SPONGE_CAPACITY() { return 4; }
function SPONGE_WIDTH() { return 12; }
function DEGREE_BITS() { return 12; }
function FRI_RATE_BITS() { return 3; }
function NUM_GATE_CONSTRAINTS() { return 123; }
function NUM_PARTIAL_PRODUCTS_TERMS() { return (NUM_OPENINGS_PLONK_SIGMAS() + QUOTIENT_DEGREE_FACTOR() - 1) \ QUOTIENT_DEGREE_FACTOR(); }
function QUOTIENT_DEGREE_FACTOR() { return 8; }
function K_IS(i) {
  var k_is[80];
  k_is[0] = 1;
  k_is[1] = 7;
  k_is[2] = 49;
  k_is[3] = 343;
  k_is[4] = 2401;
  k_is[5] = 16807;
  k_is[6] = 117649;
  k_is[7] = 823543;
  k_is[8] = 5764801;
  k_is[9] = 40353607;
  k_is[10] = 282475249;
  k_is[11] = 1977326743;
  k_is[12] = 13841287201;
  k_is[13] = 96889010407;
  k_is[14] = 678223072849;
  k_is[15] = 4747561509943;
  k_is[16] = 33232930569601;
  k_is[17] = 232630513987207;
  k_is[18] = 1628413597910449;
  k_is[19] = 11398895185373143;
  k_is[20] = 79792266297612001;
  k_is[21] = 558545864083284007;
  k_is[22] = 3909821048582988049;
  k_is[23] = 8922003270666332022;
  k_is[24] = 7113790686420571191;
  k_is[25] = 12903046666114829695;
  k_is[26] = 16534350385145470581;
  k_is[27] = 5059988279530788141;
  k_is[28] = 16973173887300932666;
  k_is[29] = 8131752794619022736;
  k_is[30] = 1582037354089406189;
  k_is[31] = 11074261478625843323;
  k_is[32] = 3732854072722565977;
  k_is[33] = 7683234439643377518;
  k_is[34] = 16889152938674473984;
  k_is[35] = 7543606154233811962;
  k_is[36] = 15911754940807515092;
  k_is[37] = 701820169165099718;
  k_is[38] = 4912741184155698026;
  k_is[39] = 15942444219675301861;
  k_is[40] = 916645121239607101;
  k_is[41] = 6416515848677249707;
  k_is[42] = 8022122801911579307;
  k_is[43] = 814627405137302186;
  k_is[44] = 5702391835961115302;
  k_is[45] = 3023254712898638472;
  k_is[46] = 2716038920875884983;
  k_is[47] = 565528376716610560;
  k_is[48] = 3958698637016273920;
  k_is[49] = 9264146389699333119;
  k_is[50] = 9508792519651578870;
  k_is[51] = 11221315429317299127;
  k_is[52] = 4762231727562756605;
  k_is[53] = 14888878023524711914;
  k_is[54] = 11988425817600061793;
  k_is[55] = 10132004445542095267;
  k_is[56] = 15583798910550913906;
  k_is[57] = 16852872026783475737;
  k_is[58] = 7289639770996824233;
  k_is[59] = 14133990258148600989;
  k_is[60] = 6704211459967285318;
  k_is[61] = 10035992080941828584;
  k_is[62] = 14911712358349047125;
  k_is[63] = 12148266161370408270;
  k_is[64] = 11250886851934520606;
  k_is[65] = 4969231685883306958;
  k_is[66] = 16337877731768564385;
  k_is[67] = 3684679705892444769;
  k_is[68] = 7346013871832529062;
  k_is[69] = 14528608963998534792;
  k_is[70] = 9466542400916821939;
  k_is[71] = 10925564598174000610;
  k_is[72] = 2691975909559666986;
  k_is[73] = 397087297503084581;
  k_is[74] = 2779611082521592067;
  k_is[75] = 1010533508236560148;
  k_is[76] = 7073734557655921036;
  k_is[77] = 12622653764762278610;
  k_is[78] = 14571600075677612986;
  k_is[79] = 9767480182670369297;
  return k_is[i];
}
function NUM_PUBLIC_INPUTS() { return 68; }
