#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'
class ShellParser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
    20,   116,    28,   108,    33,    36,   108,     2,     7,   150,
   159,    18,   163,    57,    58,   108,    38,    42,     4,   116,
   130,   175,    16,    22,    26,    30,    32,    35,    41,     1,
     6,    10,    13,    51,    20,    51,    28,   133,    33,    36,
    93,     2,     7,    93,    51,    18,    51,   159,   133,   160,
    38,    42,     4,   108,   172,   107,    16,    22,    26,    30,
    32,    35,    41,     1,     6,    10,    13,    51,    20,   106,
    28,    51,    33,    36,    51,     2,     7,    51,   103,    18,
    57,    58,   143,    51,    38,    42,     4,   138,    67,   154,
    16,    22,    26,    30,    32,    35,    41,     1,     6,    10,
    13,    51,    20,   101,    28,    51,    33,    36,    51,     2,
     7,   127,   128,    18,    57,    58,   143,    51,    38,    42,
     4,   138,    51,   139,    16,    22,    26,    30,    32,    35,
    41,     1,     6,    10,    13,    51,    20,   137,    28,    90,
    33,    36,    44,     2,     7,    57,    58,    18,    51,    83,
    84,    80,    38,    42,     4,    51,    83,    84,    16,    22,
    26,    30,    32,    35,    41,     1,     6,    10,    13,    93,
    20,   148,    28,    51,    33,    36,    44,     2,     7,    51,
    93,    18,    51,    83,    84,    78,    38,    42,     4,   126,
   127,   128,    16,    22,    26,    30,    32,    35,    41,     1,
     6,    10,    13,    51,    20,    76,    28,   157,    33,    36,
   138,     2,     7,    44,   161,    18,   108,    44,    44,   164,
    38,    42,     4,    67,    59,    59,    16,    22,    26,    30,
    32,    35,    41,     1,     6,    10,    13,    93,    20,   171,
    28,    56,    33,    36,    44,     2,     7,   174,    44,    18,
    51,    51,    51,    51,    38,    42,     4,   nil,   nil,   nil,
    16,    22,    26,    30,    32,    35,    41,     1,     6,    10,
    13,    51,    20,   nil,    28,   nil,    33,    36,   nil,     2,
     7,   nil,   nil,    18,   nil,   nil,   nil,   nil,    38,    42,
     4,   nil,   nil,   nil,    16,    22,    26,    30,    32,    35,
    41,     1,     6,    10,    13,    51,    20,   nil,    28,   nil,
    33,    36,   nil,     2,     7,   nil,   nil,    18,   nil,   nil,
   nil,   nil,    38,    42,     4,   nil,   nil,   nil,    16,    22,
    26,    30,    32,    35,    41,     1,     6,    10,    13,    51,
    20,   nil,    28,   nil,    33,    36,   nil,     2,     7,   nil,
   nil,    18,   nil,   nil,   nil,   nil,    38,    42,     4,   nil,
   nil,   nil,    16,    22,    26,    30,    32,    35,    41,     1,
     6,    10,    13,    51,    20,   nil,    28,   nil,    33,    36,
   nil,     2,     7,   nil,   nil,    18,   nil,   nil,   nil,   nil,
    38,    42,     4,   nil,   nil,   nil,    16,    22,    26,    30,
    32,    35,    41,     1,     6,    10,    13,    51,    20,   nil,
    28,   nil,    33,    36,   nil,     2,     7,   nil,   nil,    18,
   nil,   nil,   nil,   nil,    38,    42,     4,   nil,   nil,   nil,
    16,    22,    26,    30,    32,    35,    41,     1,     6,    10,
    13,    51,    20,   nil,    28,   nil,    33,    36,   nil,     2,
     7,   nil,   nil,    18,   nil,   nil,   nil,   nil,    38,    42,
     4,   nil,   nil,   nil,    16,    22,    26,    30,    32,    35,
    41,     1,     6,    10,    13,    51,    20,   nil,    28,   nil,
    33,    36,   nil,     2,     7,   nil,   nil,    18,   nil,   nil,
   nil,   nil,    38,    42,     4,   nil,   nil,   nil,    16,    22,
    26,    30,    32,    35,    41,     1,     6,    10,    13,    20,
   nil,    28,   nil,    33,    36,   nil,     2,     7,   nil,   nil,
    18,   nil,   nil,   nil,   nil,    38,    42,     4,   nil,   nil,
   nil,    16,    22,    26,    30,    32,    35,    41,     1,     6,
    10,    13,    20,   nil,    28,   nil,    33,    36,   nil,     2,
     7,   nil,   nil,    18,   nil,   nil,   nil,   nil,    38,    42,
     4,   nil,   nil,   nil,    16,    22,    26,    30,    32,    35,
    41,     1,     6,    10,    13,    20,   nil,    28,   nil,    33,
    36,   nil,     2,     7,   nil,   nil,    18,   nil,   nil,   nil,
   nil,    38,    42,     4,   nil,   nil,   nil,    16,    22,    26,
    30,    32,    35,    41,     1,     6,    10,    13,    20,   nil,
    28,   nil,    33,    36,   nil,     2,     7,   nil,   nil,    18,
   nil,   nil,   nil,   nil,    38,    42,     4,   nil,   nil,   nil,
    16,    22,    26,    30,    32,    35,    41,     1,     6,    10,
    13,    28,   nil,    33,    36,   nil,     2,     7,   nil,   nil,
    18,   nil,   nil,   nil,   nil,    38,    42,     4,   nil,   nil,
   nil,    16,    22,    26,    30,    32,    35,    41,     1,     6,
    10,    13,    28,   nil,    33,    36,   nil,     2,     7,   nil,
   nil,    18,   nil,   nil,   nil,   nil,    38,    42,     4,    62,
   nil,   nil,    16,    22,    26,    30,    32,    35,    41,     1,
     6,    10,    13,    99,   nil,    22,    26,    30,    32,    35,
    41,     1,     6,    10,    13,    46,   nil,   nil,   nil,    22,
    26,    30,    32,    35,    41,     1,     6,    10,    13,    62,
    48,    22,    26,    30,    32,    35,    41,     1,     6,    10,
    13,    99,   nil,   nil,   nil,    22,    26,    30,    32,    35,
    41,     1,     6,    10,    13,   nil,   nil,    22,    26,    30,
    32,    35,    41,     1,     6,    10,    13,    28,   nil,    33,
   nil,   nil,   nil,     7,   nil,   nil,    18,   nil,   nil,   nil,
   nil,    38,    42,     4,    22,    26,    30,    32,    35,    41,
     1,     6,    10,    13,    22,    26,    30,    32,    35,    41,
     1,     6,    10,    13,    22,    26,    30,    32,    35,    41,
     1,     6,    10,    13,    22,    26,    30,    32,    35,    41,
     1,     6,    10,    13,    26,    30,    32,    35,    41,     1,
     6,    10,    13 ]

racc_action_check = [
   127,   105,   127,   131,   127,   127,    88,   127,   127,   132,
   158,   127,   158,   113,   113,   105,   127,   127,   127,    95,
   121,   170,   127,   127,   127,   127,   127,   127,   127,   127,
   127,   127,   127,   127,    82,   132,    82,   132,    82,    82,
    96,    82,    82,    85,   170,    82,   121,   145,   121,   145,
    82,    82,    82,    81,   166,    80,    82,    82,    82,    82,
    82,    82,    82,    82,    82,    82,    82,    82,   101,    78,
   101,    77,   101,   101,   107,   101,   101,   166,    71,   101,
    50,    50,   140,    67,   101,   101,   101,   140,    66,   140,
   101,   101,   101,   101,   101,   101,   101,   101,   101,   101,
   101,   101,     4,    65,     4,   115,     4,     4,    58,     4,
     4,   161,   161,     4,   110,   110,   125,    57,     4,     4,
     4,   125,    56,   125,     4,     4,     4,     4,     4,     4,
     4,     4,     4,     4,     4,     4,   167,   124,   167,    52,
   167,   167,    41,   167,   167,     9,     9,   167,    94,    94,
    94,    37,   167,   167,   167,    53,    53,    53,   167,   167,
   167,   167,   167,   167,   167,   167,   167,   167,   167,   167,
   108,   129,   108,    91,   108,   108,    35,   108,   108,   133,
   134,   108,    40,    40,    40,    34,   108,   108,   108,   119,
   119,   119,   108,   108,   108,   108,   108,   108,   108,   108,
   108,   108,   108,   108,    54,    33,    54,   141,    54,    54,
   143,    54,    54,    32,   146,    54,   151,    30,    26,   159,
    54,    54,    54,    21,    13,    10,    54,    54,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    54,   163,   165,
   163,     7,   163,   163,     6,   163,   163,   169,     1,   163,
   171,   172,   174,   175,   163,   163,   163,   nil,   nil,   nil,
   163,   163,   163,   163,   163,   163,   163,   163,   163,   163,
   163,   163,    42,   nil,    42,   nil,    42,    42,   nil,    42,
    42,   nil,   nil,    42,   nil,   nil,   nil,   nil,    42,    42,
    42,   nil,   nil,   nil,    42,    42,    42,    42,    42,    42,
    42,    42,    42,    42,    42,    42,    38,   nil,    38,   nil,
    38,    38,   nil,    38,    38,   nil,   nil,    38,   nil,   nil,
   nil,   nil,    38,    38,    38,   nil,   nil,   nil,    38,    38,
    38,    38,    38,    38,    38,    38,    38,    38,    38,    38,
    18,   nil,    18,   nil,    18,    18,   nil,    18,    18,   nil,
   nil,    18,   nil,   nil,   nil,   nil,    18,    18,    18,   nil,
   nil,   nil,    18,    18,    18,    18,    18,    18,    18,    18,
    18,    18,    18,    18,   128,   nil,   128,   nil,   128,   128,
   nil,   128,   128,   nil,   nil,   128,   nil,   nil,   nil,   nil,
   128,   128,   128,   nil,   nil,   nil,   128,   128,   128,   128,
   128,   128,   128,   128,   128,   128,   128,   128,   160,   nil,
   160,   nil,   160,   160,   nil,   160,   160,   nil,   nil,   160,
   nil,   nil,   nil,   nil,   160,   160,   160,   nil,   nil,   nil,
   160,   160,   160,   160,   160,   160,   160,   160,   160,   160,
   160,   160,    28,   nil,    28,   nil,    28,    28,   nil,    28,
    28,   nil,   nil,    28,   nil,   nil,   nil,   nil,    28,    28,
    28,   nil,   nil,   nil,    28,    28,    28,    28,    28,    28,
    28,    28,    28,    28,    28,    28,     0,   nil,     0,   nil,
     0,     0,   nil,     0,     0,   nil,   nil,     0,   nil,   nil,
   nil,   nil,     0,     0,     0,   nil,   nil,   nil,     0,     0,
     0,     0,     0,     0,     0,     0,     0,     0,     0,    92,
   nil,    92,   nil,    92,    92,   nil,    92,    92,   nil,   nil,
    92,   nil,   nil,   nil,   nil,    92,    92,    92,   nil,   nil,
   nil,    92,    92,    92,    92,    92,    92,    92,    92,    92,
    92,    92,   114,   nil,   114,   nil,   114,   114,   nil,   114,
   114,   nil,   nil,   114,   nil,   nil,   nil,   nil,   114,   114,
   114,   nil,   nil,   nil,   114,   114,   114,   114,   114,   114,
   114,   114,   114,   114,   114,    98,   nil,    98,   nil,    98,
    98,   nil,    98,    98,   nil,   nil,    98,   nil,   nil,   nil,
   nil,    98,    98,    98,   nil,   nil,   nil,    98,    98,    98,
    98,    98,    98,    98,    98,    98,    98,    98,    97,   nil,
    97,   nil,    97,    97,   nil,    97,    97,   nil,   nil,    97,
   nil,   nil,   nil,   nil,    97,    97,    97,   nil,   nil,   nil,
    97,    97,    97,    97,    97,    97,    97,    97,    97,    97,
    97,   102,   nil,   102,   102,   nil,   102,   102,   nil,   nil,
   102,   nil,   nil,   nil,   nil,   102,   102,   102,   nil,   nil,
   nil,   102,   102,   102,   102,   102,   102,   102,   102,   102,
   102,   102,    20,   nil,    20,    20,   nil,    20,    20,   nil,
   nil,    20,   nil,   nil,   nil,   nil,    20,    20,    20,    14,
   nil,   nil,    20,    20,    20,    20,    20,    20,    20,    20,
    20,    20,    20,    63,   nil,    14,    14,    14,    14,    14,
    14,    14,    14,    14,    14,     3,   nil,   nil,   nil,    63,
    63,    63,    63,    63,    63,    63,    63,    63,    63,    47,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,    89,   nil,   nil,   nil,    47,    47,    47,    47,    47,
    47,    47,    47,    47,    47,   nil,   nil,    89,    89,    89,
    89,    89,    89,    89,    89,    89,    89,   123,   nil,   123,
   nil,   nil,   nil,   123,   nil,   nil,   123,   nil,   nil,   nil,
   nil,   123,   123,   123,    31,    31,    31,    31,    31,    31,
    31,    31,    31,    31,   153,   153,   153,   153,   153,   153,
   153,   153,   153,   153,   135,   135,   135,   135,   135,   135,
   135,   135,   135,   135,    74,    74,    74,    74,    74,    74,
    74,    74,    74,    74,    22,    22,    22,    22,    22,    22,
    22,    22,    22 ]

racc_action_pointer = [
   472,   237,   nil,   704,    98,   nil,   233,   230,   nil,   143,
   214,   nil,   nil,   213,   678,   nil,   nil,   nil,   336,   nil,
   666,   218,   796,   nil,   nil,   nil,   207,   nil,   438,   nil,
   206,   757,   202,   196,   185,   165,   nil,   145,   302,   nil,
   145,   131,   268,   nil,   nil,   nil,   nil,   718,   nil,   nil,
    78,   nil,   116,   118,   200,   nil,    85,    80,    71,   nil,
   nil,   nil,   nil,   692,   nil,    87,    83,    46,   nil,   nil,
   nil,    71,   nil,   nil,   787,   nil,   nil,    34,    69,   nil,
    48,    29,    30,   nil,   nil,     6,   nil,   nil,   -18,   730,
   nil,   136,   505,   nil,   111,     9,     3,   604,   571,   nil,
   nil,    64,   635,   nil,   nil,    -9,   nil,    37,   166,   nil,
   112,   nil,   nil,    11,   538,    68,   nil,   nil,   nil,   172,
   nil,     9,   nil,   761,   112,   110,   nil,    -4,   370,   154,
   nil,   -21,    -2,   142,   143,   777,   nil,   nil,   nil,   nil,
    76,   194,   nil,   199,   nil,    42,   198,   nil,   nil,   nil,
   nil,   192,   nil,   767,   nil,   nil,   nil,   nil,     5,   208,
   404,    93,   nil,   234,   nil,   225,    40,   132,   nil,   233,
     7,   213,   214,   nil,   215,   216,   nil,   nil,   nil,   nil,
   nil ]

racc_action_default = [
  -108,  -108,   -71,   -68,  -108,   -17,  -108,  -108,   -18,    -4,
  -108,   -19,    -5,  -108,   -70,   -20,   -75,   -73,  -108,   -21,
  -108,    -8,  -108,   -83,   -22,   -10,  -108,   -85,  -108,   -12,
  -108,   -13,  -108,  -108,  -108,  -108,   -63,  -108,  -108,   -15,
    -2,  -108,  -108,   -16,   -94,   -92,   -72,   -67,   -76,   -74,
   -29,   -98,  -108,   -24,  -108,   -93,  -101,  -101,  -101,   -97,
   -95,   -96,   -79,   -69,   -77,  -108,    -9,  -101,   -84,   -86,
   -87,  -108,   -88,   -81,   -14,   -89,   -33,  -101,  -108,   -90,
  -108,  -108,  -101,  -102,  -103,  -105,    -1,   -91,  -108,   -66,
   -64,  -101,   -26,   -99,   -25,  -108,  -100,  -108,  -108,   -80,
   -78,  -108,  -108,   -23,   -82,  -108,   181,  -101,  -108,   -58,
    -3,  -104,   -59,   -28,   -27,  -101,   -34,    -6,    -7,  -108,
   -11,  -108,   -30,  -108,  -108,  -108,   -55,  -108,  -108,  -108,
   -36,  -108,  -108,  -101,  -107,   -61,   -60,   -65,   -52,   -39,
  -108,  -108,   -41,  -108,   -43,  -108,  -108,   -57,   -54,   -31,
   -35,  -108,  -106,   -62,   -37,   -40,   -42,   -38,  -108,  -108,
  -101,  -108,   -32,  -101,   -53,   -44,  -101,  -100,   -56,   -46,
  -101,  -101,  -101,   -45,  -101,  -101,   -47,   -48,   -49,   -50,
   -51 ]

racc_goto_table = [
    54,    49,     9,    74,   129,    94,    52,   131,   109,    86,
    63,   142,    64,   115,    54,   112,   144,   136,   151,   140,
    65,   141,    92,   121,    54,   135,   155,   120,    45,    73,
    71,   156,   122,    55,    54,   158,    85,    66,    54,    60,
    81,   132,    61,    89,    88,    64,   168,   117,   118,    85,
    47,    77,    82,    70,    95,    97,    98,    72,   149,    75,
    68,   100,    79,   114,    69,   102,    40,    34,    87,   nil,
   nil,   nil,   104,   nil,   nil,   105,   nil,   nil,   162,   nil,
   nil,   nil,   nil,   nil,   110,   nil,   nil,   100,   nil,   nil,
    85,   nil,   nil,   nil,   113,   nil,   nil,    54,   nil,   nil,
   nil,   nil,   nil,   119,    54,   123,   nil,   153,   nil,   nil,
   124,   nil,   nil,   125,   nil,   nil,   113,   134,    94,   nil,
   nil,   nil,   nil,    54,    54,   nil,   nil,   nil,   134,   146,
   147,   152,   nil,    73,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   104,   nil,   nil,   nil,   nil,   167,   nil,   165,   167,
   nil,   169,   166,   nil,   173,   170,   nil,   nil,   176,   177,
   178,   nil,   179,   180 ]

racc_goto_check = [
    23,    41,     5,    12,    34,    22,    21,    27,    25,     3,
    39,    31,    41,    26,    23,    25,    32,    36,    27,    29,
    21,    30,     3,    26,    23,    11,    31,     9,    44,    41,
    21,    32,    25,    44,    23,    33,    23,     8,    23,    45,
    21,    28,    45,    39,    21,    41,    34,     6,     6,    23,
    38,    24,     4,    44,     7,     7,     7,    44,    25,    44,
    42,    41,    44,     3,    43,     7,     2,     1,    44,   nil,
   nil,   nil,    41,   nil,   nil,     7,   nil,   nil,    25,   nil,
   nil,   nil,   nil,   nil,     5,   nil,   nil,    41,   nil,   nil,
    23,   nil,   nil,   nil,     5,   nil,   nil,    23,   nil,   nil,
   nil,   nil,   nil,    21,    23,     7,   nil,    12,   nil,   nil,
    21,   nil,   nil,     7,   nil,   nil,     5,    23,    22,   nil,
   nil,   nil,   nil,    23,    23,   nil,   nil,   nil,    23,    21,
    21,     7,   nil,    41,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    41,   nil,   nil,   nil,   nil,    23,   nil,     7,    23,
   nil,     7,    21,   nil,     7,    21,   nil,   nil,     7,     7,
     7,   nil,     7,     7 ]

racc_goto_pointer = [
   nil,    67,    66,   -31,    12,     2,   -50,    -2,    17,   -75,
   nil,   -98,   -28,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     2,   -49,    -4,    18,   -73,   -82,  -114,   -80,  -106,
  -104,  -114,  -109,  -108,  -115,   nil,  -106,   nil,    47,    -4,
   nil,    -2,    38,    42,    27,    29 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,    91,    50,    12,   111,    21,    25,
    29,    31,   nil,    39,    43,     5,     8,    11,    15,    19,
    24,   nil,    53,    96,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   145,   nil,    37,   nil,     3,   nil,   nil,
    14,    17,    23,    27,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  2, 41, :_reduce_none,
  1, 41, :_reduce_none,
  3, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 45, :_reduce_none,
  4, 45, :_reduce_none,
  4, 45, :_reduce_none,
  1, 46, :_reduce_none,
  2, 46, :_reduce_none,
  1, 48, :_reduce_none,
  4, 48, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  2, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  3, 55, :_reduce_none,
  1, 61, :_reduce_none,
  2, 61, :_reduce_none,
  2, 61, :_reduce_none,
  3, 61, :_reduce_none,
  3, 62, :_reduce_none,
  1, 62, :_reduce_none,
  4, 56, :_reduce_none,
  6, 56, :_reduce_none,
  7, 56, :_reduce_none,
  1, 64, :_reduce_none,
  1, 66, :_reduce_none,
  2, 68, :_reduce_none,
  1, 68, :_reduce_none,
  7, 57, :_reduce_none,
  7, 57, :_reduce_none,
  6, 57, :_reduce_none,
  2, 70, :_reduce_none,
  1, 70, :_reduce_none,
  2, 69, :_reduce_none,
  1, 69, :_reduce_none,
  3, 71, :_reduce_none,
  4, 71, :_reduce_none,
  4, 71, :_reduce_none,
  5, 71, :_reduce_none,
  5, 72, :_reduce_none,
  5, 72, :_reduce_none,
  6, 72, :_reduce_none,
  6, 72, :_reduce_none,
  1, 73, :_reduce_none,
  3, 73, :_reduce_none,
  6, 58, :_reduce_none,
  5, 58, :_reduce_none,
  4, 74, :_reduce_none,
  2, 74, :_reduce_none,
  3, 59, :_reduce_none,
  3, 60, :_reduce_none,
  5, 53, :_reduce_none,
  1, 76, :_reduce_none,
  2, 76, :_reduce_none,
  1, 75, :_reduce_none,
  3, 54, :_reduce_none,
  3, 65, :_reduce_none,
  3, 50, :_reduce_none,
  2, 50, :_reduce_none,
  1, 50, :_reduce_none,
  2, 50, :_reduce_none,
  1, 50, :_reduce_none,
  1, 80, :_reduce_none,
  1, 78, :_reduce_none,
  1, 77, :_reduce_none,
  2, 77, :_reduce_none,
  1, 77, :_reduce_none,
  2, 77, :_reduce_none,
  1, 79, :_reduce_none,
  2, 79, :_reduce_none,
  1, 79, :_reduce_none,
  2, 79, :_reduce_none,
  1, 52, :_reduce_none,
  2, 52, :_reduce_none,
  1, 81, :_reduce_none,
  2, 81, :_reduce_none,
  1, 81, :_reduce_none,
  2, 81, :_reduce_none,
  2, 82, :_reduce_none,
  2, 82, :_reduce_none,
  2, 82, :_reduce_none,
  2, 82, :_reduce_none,
  2, 82, :_reduce_none,
  2, 82, :_reduce_none,
  2, 82, :_reduce_none,
  1, 84, :_reduce_none,
  2, 83, :_reduce_none,
  2, 83, :_reduce_none,
  1, 85, :_reduce_none,
  1, 63, :_reduce_none,
  2, 63, :_reduce_none,
  1, 47, :_reduce_none,
  0, 47, :_reduce_none,
  1, 44, :_reduce_none,
  1, 44, :_reduce_none,
  2, 43, :_reduce_none,
  1, 43, :_reduce_none,
  2, 67, :_reduce_none,
  1, 67, :_reduce_none ]

racc_reduce_n = 108

racc_shift_n = 181

racc_token_table = {
  false => 0,
  :error => 1,
  :AND_IF => 2,
  :OR_IF => 3,
  :Bang => 4,
  "|" => 5,
  "(" => 6,
  ")" => 7,
  :For => 8,
  :NAME => 9,
  :In => 10,
  :WORD => 11,
  :Case => 12,
  :Esac => 13,
  :DSEMI => 14,
  :If => 15,
  :Then => 16,
  :Fi => 17,
  :Elif => 18,
  :Else => 19,
  :While => 20,
  :Until => 21,
  :Lbrace => 22,
  :Rbrace => 23,
  :Do => 24,
  :Done => 25,
  :ASSIGNMENT_WORD => 26,
  :IO_NUMBER => 27,
  "<" => 28,
  :LESSAND => 29,
  ">" => 30,
  :GREATAND => 31,
  :DGREAT => 32,
  :LESSGREAT => 33,
  :CLOBBER => 34,
  :DLESS => 35,
  :DLESSDASH => 36,
  :NEWLINE => 37,
  "&" => 38,
  ";" => 39 }

racc_nt_base = 40

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "AND_IF",
  "OR_IF",
  "Bang",
  "\"|\"",
  "\"(\"",
  "\")\"",
  "For",
  "NAME",
  "In",
  "WORD",
  "Case",
  "Esac",
  "DSEMI",
  "If",
  "Then",
  "Fi",
  "Elif",
  "Else",
  "While",
  "Until",
  "Lbrace",
  "Rbrace",
  "Do",
  "Done",
  "ASSIGNMENT_WORD",
  "IO_NUMBER",
  "\"<\"",
  "LESSAND",
  "\">\"",
  "GREATAND",
  "DGREAT",
  "LESSGREAT",
  "CLOBBER",
  "DLESS",
  "DLESSDASH",
  "NEWLINE",
  "\"&\"",
  "\";\"",
  "$start",
  "complete_command",
  "list",
  "separator",
  "separator_op",
  "and_or",
  "pipeline",
  "linebreak",
  "pipe_sequence",
  "command",
  "simple_command",
  "compound_command",
  "redirect_list",
  "function_definition",
  "brace_group",
  "subshell",
  "for_clause",
  "case_clause",
  "if_clause",
  "while_clause",
  "until_clause",
  "compound_list",
  "term",
  "newline_list",
  "name",
  "do_group",
  "in",
  "sequential_sep",
  "wordlist",
  "case_list",
  "case_list_ns",
  "case_item_ns",
  "case_item",
  "pattern",
  "else_part",
  "fname",
  "function_body",
  "cmd_prefix",
  "cmd_word",
  "cmd_suffix",
  "cmd_name",
  "io_redirect",
  "io_file",
  "io_here",
  "filename",
  "here_end" ]

Racc_debug_parser = true

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

# reduce 21 omitted

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

# reduce 29 omitted

# reduce 30 omitted

# reduce 31 omitted

# reduce 32 omitted

# reduce 33 omitted

# reduce 34 omitted

# reduce 35 omitted

# reduce 36 omitted

# reduce 37 omitted

# reduce 38 omitted

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

# reduce 54 omitted

# reduce 55 omitted

# reduce 56 omitted

# reduce 57 omitted

# reduce 58 omitted

# reduce 59 omitted

# reduce 60 omitted

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

# reduce 65 omitted

# reduce 66 omitted

# reduce 67 omitted

# reduce 68 omitted

# reduce 69 omitted

# reduce 70 omitted

# reduce 71 omitted

# reduce 72 omitted

# reduce 73 omitted

# reduce 74 omitted

# reduce 75 omitted

# reduce 76 omitted

# reduce 77 omitted

# reduce 78 omitted

# reduce 79 omitted

# reduce 80 omitted

# reduce 81 omitted

# reduce 82 omitted

# reduce 83 omitted

# reduce 84 omitted

# reduce 85 omitted

# reduce 86 omitted

# reduce 87 omitted

# reduce 88 omitted

# reduce 89 omitted

# reduce 90 omitted

# reduce 91 omitted

# reduce 92 omitted

# reduce 93 omitted

# reduce 94 omitted

# reduce 95 omitted

# reduce 96 omitted

# reduce 97 omitted

# reduce 98 omitted

# reduce 99 omitted

# reduce 100 omitted

# reduce 101 omitted

# reduce 102 omitted

# reduce 103 omitted

# reduce 104 omitted

# reduce 105 omitted

# reduce 106 omitted

# reduce 107 omitted

def _reduce_none(val, _values, result)
  val[0]
end

end   # class ShellParser
