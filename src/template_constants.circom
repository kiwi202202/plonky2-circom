pragma circom 2.0.9;

// Order of Goldilocks field
function Order() { return 18446744069414584321; }
function W() { return 7; }
function DTH_ROOT() { return 18446744069414584320; }

function NUM_WIRES_CAP() { return $NUM_WIRES_CAP; }
function NUM_PLONK_ZS_PARTIAL_PRODUCTS_CAP() { return $NUM_PLONK_ZS_PARTIAL_PRODUCTS_CAP; }
function NUM_QUOTIENT_POLYS_CAP() { return $NUM_QUOTIENT_POLYS_CAP; }

function NUM_OPENINGS_CONSTANTS() { return $NUM_OPENINGS_CONSTANTS; }
function NUM_OPENINGS_PLONK_SIGMAS() { return $NUM_OPENINGS_PLONK_SIGMAS; }
function NUM_OPENINGS_WIRES() { return $NUM_OPENINGS_WIRES; }
function NUM_OPENINGS_PLONK_ZS() { return $NUM_OPENINGS_PLONK_ZS0; }
function NUM_OPENINGS_PLONK_ZS_NEXT() { return $NUM_OPENINGS_PLONK_ZS_NEXT; }
function NUM_OPENINGS_PARTIAL_PRODUCTS() { return $NUM_OPENINGS_PARTIAL_PRODUCTS; }
function NUM_OPENINGS_QUOTIENT_POLYS() { return $NUM_OPENINGS_QUOTIENT_POLYS; }

function NUM_FRI_COMMIT_ROUND() { return $NUM_FRI_COMMIT_ROUND; }
function FRI_COMMIT_MERKLE_CAP_HEIGHT() { return $FRI_COMMIT_MERKLE_CAP_HEIGHT; }
function NUM_FRI_QUERY_ROUND() { return $NUM_FRI_QUERY_ROUND; }
function NUM_FRI_QUERY_INIT_CONSTANTS_SIGMAS_V() { return $NUM_FRI_QUERY_INIT_CONSTANTS_SIGMAS_V; }
function NUM_FRI_QUERY_INIT_CONSTANTS_SIGMAS_P() { return $NUM_FRI_QUERY_INIT_CONSTANTS_SIGMAS_P; }
function NUM_FRI_QUERY_INIT_WIRES_V() { return $NUM_FRI_QUERY_INIT_WIRES_V; }
function NUM_FRI_QUERY_INIT_WIRES_P() { return $NUM_FRI_QUERY_INIT_WIRES_P; }
function NUM_FRI_QUERY_INIT_ZS_PARTIAL_V() { return $NUM_FRI_QUERY_INIT_ZS_PARTIAL_V; }
function NUM_FRI_QUERY_INIT_ZS_PARTIAL_P() { return $NUM_FRI_QUERY_INIT_ZS_PARTIAL_P; }
function NUM_FRI_QUERY_INIT_QUOTIENT_V() { return $NUM_FRI_QUERY_INIT_QUOTIENT_V; }
function NUM_FRI_QUERY_INIT_QUOTIENT_P() { return $NUM_FRI_QUERY_INIT_QUOTIENT_P; }
function NUM_FRI_QUERY_STEP0_V() { return $NUM_FRI_QUERY_STEP0_V; }
function NUM_FRI_QUERY_STEP0_P() { return $NUM_FRI_QUERY_STEP0_P; }
function NUM_FRI_QUERY_STEP1_V() { return $NUM_FRI_QUERY_STEP1_V; }
function NUM_FRI_QUERY_STEP1_P() { return $NUM_FRI_QUERY_STEP1_P; }
function NUM_FRI_FINAL_POLY_EXT_V() { return $NUM_FRI_FINAL_POLY_EXT_V; }

function NUM_SIGMA_CAPS() { return $SIGMA_CAP_COUNT; }
function GET_SIGMA_CAP(i) {
  var sc[$SIGMA_CAP_COUNT][4];
  $SET_SIGMA_CAP;
  return sc[i];
}

function NUM_REDUCTION_ARITY_BITS() { return $NUM_REDUCTION_ARITY_BITS; }
function REDUCTION_ARITY_BITS() {
  var bits[$NUM_REDUCTION_ARITY_BITS];
  $SET_REDUCTION_ARITY_BITS;
  return bits;
}

function G_BY_ARITY_BITS(arity_bits) {
  var g_arity_bits[4];
  g_arity_bits[0] = $G_ARITY_BITS_1;
  g_arity_bits[1] = $G_ARITY_BITS_2;
  g_arity_bits[2] = $G_ARITY_BITS_3;
  g_arity_bits[3] = $G_ARITY_BITS_4;
  return g_arity_bits[arity_bits - 1];
}

function G_FROM_DEGREE_BITS() {
  var g[2];
  g[0] = $G_FROM_DEGREE_BITS_0;
  g[1] = $G_FROM_DEGREE_BITS_1;
  return g;
}

function MULTIPLICATIVE_GROUP_GENERATOR() { return $MULTIPLICATIVE_GROUP_GENERATOR; }
function PRIMITIVE_ROOT_OF_UNITY_LDE() { return $PRIMITIVE_ROOT_OF_UNITY_LDE; }
function LOG_SIZE_OF_LDE_DOMAIN() { return $LOG_SIZE_OF_LDE_DOMAIN; }
function NUM_CHALLENGES() { return $NUM_CHALLENGES; }
function MIN_FRI_POW_RESPONSE() { return $MIN_FRI_POW_RESPONSE; }
function CIRCUIT_DIGEST() {
  var cd[4];
  $SET_CIRCUIT_DIGEST;
  return cd;
}
function SPONGE_RATE() { return 8; }
function SPONGE_CAPACITY() { return 4; }
function SPONGE_WIDTH() { return 12; }
function DEGREE_BITS() { return $DEGREE_BITS; }
function FRI_RATE_BITS() { return $FRI_RATE_BITS; }
function NUM_GATE_CONSTRAINTS() { return $NUM_GATE_CONSTRAINTS; }
function NUM_PARTIAL_PRODUCTS_TERMS() { return NUM_OPENINGS_PLONK_SIGMAS() \ QUOTIENT_DEGREE_FACTOR() + 1; }
function QUOTIENT_DEGREE_FACTOR() { return $QUOTIENT_DEGREE_FACTOR; }
function K_IS(i) {
  var k_is[$NUM_OPENINGS_PLONK_SIGMAS];
  $SET_K_IS;
  return k_is[i];
}
function NUM_PUBLIC_INPUTS() { return $NUM_PUBLIC_INPUTS; }
