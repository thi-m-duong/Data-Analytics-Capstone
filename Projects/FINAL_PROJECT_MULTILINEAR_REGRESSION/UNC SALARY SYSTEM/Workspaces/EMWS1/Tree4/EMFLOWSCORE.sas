****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_totalsal = 'Predicted: totalsal' ;
label V_totalsal = 'Validated: totalsal' ;
label R_totalsal = 'Residual: totalsal' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_30 $     30; DROP _ARBFMT_30;
_ARBFMT_30 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_28 $     28; DROP _ARBFMT_28;
_ARBFMT_28 = ' '; /* Initialize to avoid warning. */
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(nonstsal ) AND
               95900.5 <= nonstsal  AND
  nonstsal  <             180312.5 THEN DO;
  IF  NOT MISSING(statesal ) AND
                    2599 <= statesal  AND
    statesal  <              15464.5 THEN DO;
    _NODE_  =                   11;
    _LEAF_  =                   69;
    P_totalsal  =     145295.301886792;
    V_totalsal  =     138556.863636363;
    END;
  ELSE IF  NOT MISSING(statesal ) AND
                 15464.5 <= statesal  AND
    statesal  <                48253 THEN DO;
    _NODE_  =                   12;
    _LEAF_  =                   70;
    P_totalsal  =     166528.224137931;
    V_totalsal  =     155472.709677419;
    END;
  ELSE IF  NOT MISSING(statesal ) AND
                   48253 <= statesal  THEN DO;
    _NODE_  =                   13;
    _LEAF_  =                   71;
    P_totalsal  =            233685.12;
    V_totalsal  =      231484.59090909;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND
                    109950 <= nonstsal  AND
      nonstsal  <             120749.5 THEN DO;
      _NODE_  =                   27;
      _LEAF_  =                   66;
      P_totalsal  =     114770.807692307;
      V_totalsal  =            115916.45;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND
                  120749.5 <= nonstsal  AND
      nonstsal  <             149359.5 THEN DO;
      _NODE_  =                   28;
      _LEAF_  =                   67;
      P_totalsal  =     134294.632653061;
      V_totalsal  =     135776.804878048;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND
                  149359.5 <= nonstsal  THEN DO;
      _NODE_  =                   29;
      _LEAF_  =                   68;
      P_totalsal  =     165185.515151515;
      V_totalsal  =     166636.777777777;
      END;
    ELSE DO;
      _NODE_  =                   26;
      _LEAF_  =                   65;
      P_totalsal  =     101778.095238095;
      V_totalsal  =     102117.243902439;
      END;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND
              180312.5 <= nonstsal  AND
  nonstsal  <             290367.5 THEN DO;
  IF  NOT MISSING(nonstsal ) AND
    nonstsal  <             209437.5 THEN DO;
    _NODE_  =                   14;
    _LEAF_  =                   72;
    P_totalsal  =     205333.694117647;
    V_totalsal  =     204150.071428571;
    END;
  ELSE IF  NOT MISSING(nonstsal ) AND
                209437.5 <= nonstsal  AND
    nonstsal  <               235147 THEN DO;
    _NODE_  =                   15;
    _LEAF_  =                   73;
    P_totalsal  =     234605.621212121;
    V_totalsal  =     241105.225806451;
    END;
  ELSE DO;
    _NODE_  =                   16;
    _LEAF_  =                   74;
    P_totalsal  =     273957.193877551;
    V_totalsal  =     271501.285714285;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND
              290367.5 <= nonstsal  THEN DO;
  _NODE_  =                    5;
  _LEAF_  =                   75;
  P_totalsal  =     389678.802631579;
  V_totalsal  =     377767.533333333;
  END;
ELSE DO;
  IF  NOT MISSING(statesal ) AND
                 60301.5 <= statesal  AND
    statesal  <               108099 THEN DO;
    IF  NOT MISSING(nonstsal ) AND
                    9900.5 <= nonstsal  AND
      nonstsal  <              34813.5 THEN DO;
      _NODE_  =                   22;
      _LEAF_  =                   58;
      P_totalsal  =     103556.683673469;
      V_totalsal  =     104522.135135135;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND
                   34813.5 <= nonstsal  THEN DO;
      _NODE_  =                   23;
      _LEAF_  =                   59;
      P_totalsal  =     141148.098901098;
      V_totalsal  =             136074.7;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                       71097 <= statesal  AND
        statesal  <              81763.5 THEN DO;
        IF  NOT MISSING(statesal ) AND
          statesal  <                74875 THEN DO;
          _NODE_  =                   72;
          _LEAF_  =                   51;
          P_totalsal  =     73448.6666666666;
          V_totalsal  =     73306.9090909091;
          END;
        ELSE IF  NOT MISSING(statesal ) AND
                         74875 <= statesal  AND
          statesal  <                76825 THEN DO;
          _NODE_  =                   73;
          _LEAF_  =                   52;
          P_totalsal  =     75918.0727272727;
          V_totalsal  =     76591.7058823529;
          END;
        ELSE DO;
          _NODE_  =                   74;
          _LEAF_  =                   53;
          P_totalsal  =     79991.7974683544;
          V_totalsal  =     79243.1842105263;
          END;
        END;
      ELSE IF  NOT MISSING(statesal ) AND
                     81763.5 <= statesal  AND
        statesal  <                92774 THEN DO;
        IF  NOT MISSING(statesal ) AND
          statesal  <                84994 THEN DO;
          _NODE_  =                   75;
          _LEAF_  =                   54;
          P_totalsal  =     84096.6315789473;
          V_totalsal  =             84898.44;
          END;
        ELSE DO;
          _NODE_  =                   76;
          _LEAF_  =                   55;
          P_totalsal  =     90010.5222222222;
          V_totalsal  =     89579.7142857143;
          END;
        END;
      ELSE IF  NOT MISSING(statesal ) AND
                       92774 <= statesal  THEN DO;
        IF  NOT MISSING(statesal ) AND
                        100867 <= statesal  THEN DO;
          _NODE_  =                   78;
          _LEAF_  =                   57;
          P_totalsal  =             105425.5;
          V_totalsal  =     105827.566666666;
          END;
        ELSE DO;
          _NODE_  =                   77;
          _LEAF_  =                   56;
          P_totalsal  =     97038.7866666666;
          V_totalsal  =                97273;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
          statesal  <              63410.5 THEN DO;
          _NODE_  =                   69;
          _LEAF_  =                   48;
          P_totalsal  =     62533.6964285714;
          V_totalsal  =     63382.3870967742;
          END;
        ELSE IF  NOT MISSING(statesal ) AND
                       63410.5 <= statesal  AND
          statesal  <              66247.5 THEN DO;
          _NODE_  =                   70;
          _LEAF_  =                   49;
          P_totalsal  =     65306.0196078431;
          V_totalsal  =     64981.0689655172;
          END;
        ELSE DO;
          _NODE_  =                   71;
          _LEAF_  =                   50;
          P_totalsal  =     69608.8775510204;
          V_totalsal  =     70048.5675675675;
          END;
        END;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND
                  108099 <= statesal  AND
    statesal  <               162093 THEN DO;
    IF  NOT MISSING(nonstsal ) AND
                   22783.5 <= nonstsal  THEN DO;
      _NODE_  =                   25;
      _LEAF_  =                   63;
      P_totalsal  =             172191.4;
      V_totalsal  =     175374.619047619;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                    130026.5 <= statesal  THEN DO;
        _NODE_  =                   47;
        _LEAF_  =                   62;
        P_totalsal  =     147090.839080459;
        V_totalsal  =          147979.8125;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
                      117576.5 <= statesal  THEN DO;
          _NODE_  =                   80;
          _LEAF_  =                   61;
          P_totalsal  =     128431.728813559;
          V_totalsal  =     126284.958333333;
          END;
        ELSE DO;
          _NODE_  =                   79;
          _LEAF_  =                   60;
          P_totalsal  =          116553.6625;
          V_totalsal  =     115684.620689655;
          END;
        END;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND
                  162093 <= statesal  THEN DO;
    _NODE_  =                    9;
    _LEAF_  =                   64;
    P_totalsal  =     224578.765306122;
    V_totalsal  =     236071.901960784;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND
                   43903.5 <= nonstsal  AND
      nonstsal  <              57561.5 THEN DO;
      IF  NOT MISSING(nonstsal ) AND
        nonstsal  <              47236.5 THEN DO;
        _ARBFMT_30 = PUT( exempt2 , $30.);
         %DMNORMIP( _ARBFMT_30);
        IF _ARBFMT_30 IN ('EXEMPT' ) THEN DO;
          _NODE_  =                   60;
          _LEAF_  =                   30;
          P_totalsal  =     54232.3275862069;
          V_totalsal  =     55741.5263157894;
          END;
        ELSE DO;
          _NODE_  =                   59;
          _LEAF_  =                   29;
          P_totalsal  =     45695.6432160804;
          V_totalsal  =     47597.4642857142;
          END;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND
                       52023 <= nonstsal  THEN DO;
        _NODE_  =                   36;
        _LEAF_  =                   35;
        P_totalsal  =     56000.9809160305;
        V_totalsal  =     56889.7950819672;
        END;
      ELSE DO;
        _ARBFMT_28 = PUT( position , $28.);
         %DMNORMIP( _ARBFMT_28);
        IF _ARBFMT_28 IN ('OTHER' ) THEN DO;
          _NODE_  =                   61;
          _LEAF_  =                   31;
          P_totalsal  =     50091.2717391304;
          V_totalsal  =     50038.6444444444;
          END;
        ELSE IF _ARBFMT_28 IN ('ADMIN' ,'ASSISTANT OTHER' ,'BUILDING' ,
          'CLINICAL OTHER' ,'CLINICAL RESEARCH' ) THEN DO;
          _NODE_  =                   62;
          _LEAF_  =                   32;
          P_totalsal  =     49622.3728813559;
          V_totalsal  =     49552.6071428571;
          END;
        ELSE IF _ARBFMT_28 IN ('EXECUTIVE' ,'RESEARCH OTHER' ,
        'OTHER PROGRAM' ,'PROJECT MANAGER' ,'RESEARCH ASSOCIATE' ,
          'RESEARCH SPECIALIST' ,'RESEARCH TECHNICIAN' ) THEN DO;
          _NODE_  =                   64;
          _LEAF_  =                   34;
          P_totalsal  =          50058.90625;
          V_totalsal  =                49517;
          END;
        ELSE DO;
          _NODE_  =                   63;
          _LEAF_  =                   33;
          P_totalsal  =     57550.0181818181;
          V_totalsal  =     56288.8518518518;
          END;
        END;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND
                   57561.5 <= nonstsal  AND
      nonstsal  <                74256 THEN DO;
      IF  NOT MISSING(statesal ) AND
                        8802 <= statesal  THEN DO;
        _NODE_  =                   38;
        _LEAF_  =                   44;
        P_totalsal  =              94400.2;
        V_totalsal  =     98545.4285714285;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
          nonstsal  <              60502.5 THEN DO;
          IF  NOT MISSING(nonstsal ) AND
            nonstsal  <              59070.5 THEN DO;
            _NODE_  =                  108;
            _LEAF_  =                   36;
            P_totalsal  =             58257.96;
            V_totalsal  =              58209.6;
            END;
          ELSE DO;
            _NODE_  =                  109;
            _LEAF_  =                   37;
            P_totalsal  =     59803.3114754098;
            V_totalsal  =     59782.6296296296;
            END;
          END;
        ELSE IF  NOT MISSING(nonstsal ) AND
                       60502.5 <= nonstsal  AND
          nonstsal  <              64148.5 THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                           62434 <= nonstsal  THEN DO;
            _NODE_  =                  111;
            _LEAF_  =                   39;
            P_totalsal  =     63386.0882352941;
            V_totalsal  =             63171.84;
            END;
          ELSE DO;
            _NODE_  =                  110;
            _LEAF_  =                   38;
            P_totalsal  =     61480.6913580247;
            V_totalsal  =     61572.9210526315;
            END;
          END;
        ELSE IF  NOT MISSING(nonstsal ) AND
                       64148.5 <= nonstsal  AND
          nonstsal  <                68310 THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                         66244.5 <= nonstsal  THEN DO;
            _NODE_  =                  113;
            _LEAF_  =                   41;
            P_totalsal  =     67381.0434782608;
            V_totalsal  =             67396.05;
            END;
          ELSE DO;
            _NODE_  =                  112;
            _LEAF_  =                   40;
            P_totalsal  =     65295.6666666666;
            V_totalsal  =     65467.7567567567;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
            nonstsal  <                70853 THEN DO;
            _NODE_  =                  114;
            _LEAF_  =                   42;
            P_totalsal  =     70004.1267605633;
            V_totalsal  =     69839.4864864864;
            END;
          ELSE DO;
            _NODE_  =                  115;
            _LEAF_  =                   43;
            P_totalsal  =     72698.8068181818;
            V_totalsal  =     72584.0769230769;
            END;
          END;
        END;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND
                     74256 <= nonstsal  THEN DO;
      IF  NOT MISSING(nonstsal ) AND
                     81491.5 <= nonstsal  AND
        nonstsal  <              86766.5 THEN DO;
        _NODE_  =                   40;
        _LEAF_  =                   46;
        P_totalsal  =                85762;
        V_totalsal  =     85909.1818181818;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND
                     86766.5 <= nonstsal  THEN DO;
        _NODE_  =                   41;
        _LEAF_  =                   47;
        P_totalsal  =     94602.0574712643;
        V_totalsal  =     94566.3731343283;
        END;
      ELSE DO;
        _NODE_  =                   39;
        _LEAF_  =                   45;
        P_totalsal  =     80472.2113402061;
        V_totalsal  =      81919.048192771;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                       538.5 <= statesal  AND
        statesal  <                30580 THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                         13022 <= nonstsal  THEN DO;
          IF  NOT MISSING(statesal ) AND
                         20121.5 <= statesal  THEN DO;
            _NODE_  =                   98;
            _LEAF_  =                   18;
            P_totalsal  =     50866.2777777777;
            V_totalsal  =     52344.2777777777;
            END;
          ELSE DO;
            _NODE_  =                   97;
            _LEAF_  =                   17;
            P_totalsal  =     41342.3174603174;
            V_totalsal  =     41047.4666666666;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
            statesal  <              18782.5 THEN DO;
            _NODE_  =                   94;
            _LEAF_  =                   14;
            P_totalsal  =      12629.343283582;
            V_totalsal  =     12658.5348837209;
            END;
          ELSE IF  NOT MISSING(statesal ) AND
                         26357.5 <= statesal  THEN DO;
            _NODE_  =                   96;
            _LEAF_  =                   16;
            P_totalsal  =     28817.1833333333;
            V_totalsal  =     28912.4565217391;
            END;
          ELSE DO;
            _NODE_  =                   95;
            _LEAF_  =                   15;
            P_totalsal  =     25853.3032258064;
            V_totalsal  =     25965.6129032258;
            END;
          END;
        END;
      ELSE IF  NOT MISSING(statesal ) AND
                       30580 <= statesal  AND
        statesal  <                47333 THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                          4981 <= nonstsal  AND
          nonstsal  <              16450.5 THEN DO;
          _NODE_  =                   55;
          _LEAF_  =                   23;
          P_totalsal  =     48611.9259259259;
          V_totalsal  =     48270.3846153846;
          END;
        ELSE IF  NOT MISSING(nonstsal ) AND
                       16450.5 <= nonstsal  THEN DO;
          _NODE_  =                   56;
          _LEAF_  =                   24;
          P_totalsal  =     67858.2181818181;
          V_totalsal  =     64259.0526315789;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
            statesal  <                35530 THEN DO;
            _NODE_  =                   99;
            _LEAF_  =                   19;
            P_totalsal  =      33626.054054054;
            V_totalsal  =     33857.8913043478;
            END;
          ELSE IF  NOT MISSING(statesal ) AND
                           35530 <= statesal  AND
            statesal  <                39394 THEN DO;
            _NODE_  =                  100;
            _LEAF_  =                   20;
            P_totalsal  =     37523.1486486486;
            V_totalsal  =     38060.2537313432;
            END;
          ELSE IF  NOT MISSING(statesal ) AND
                         43607.5 <= statesal  THEN DO;
            _NODE_  =                  102;
            _LEAF_  =                   22;
            P_totalsal  =     45252.0802469135;
            V_totalsal  =     45568.5694444444;
            END;
          ELSE DO;
            _NODE_  =                  101;
            _LEAF_  =                   21;
            P_totalsal  =     41803.8781725888;
            V_totalsal  =     41783.8023255814;
            END;
          END;
        END;
      ELSE IF  NOT MISSING(statesal ) AND
                       47333 <= statesal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                          2075 <= nonstsal  THEN DO;
          _NODE_  =                   58;
          _LEAF_  =                   28;
          P_totalsal  =     67737.4387755102;
          V_totalsal  =     68617.4117647059;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                         51179.5 <= statesal  AND
            statesal  <              56763.5 THEN DO;
            _NODE_  =                  104;
            _LEAF_  =                   26;
            P_totalsal  =              53924.5;
            V_totalsal  =     54091.4716981132;
            END;
          ELSE IF  NOT MISSING(statesal ) AND
                         56763.5 <= statesal  THEN DO;
            _NODE_  =                  105;
            _LEAF_  =                   27;
            P_totalsal  =     58596.2873563218;
            V_totalsal  =      58636.081081081;
            END;
          ELSE DO;
            _NODE_  =                  103;
            _LEAF_  =                   25;
            P_totalsal  =     49365.8629032258;
            V_totalsal  =      49164.224137931;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
          nonstsal  <              29011.5 THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                           26315 <= nonstsal  THEN DO;
            _NODE_  =                   82;
            _LEAF_  =                    2;
            P_totalsal  =              27963.5;
            V_totalsal  =     28144.3809523809;
            END;
          ELSE DO;
            _NODE_  =                   81;
            _LEAF_  =                    1;
            P_totalsal  =     23373.5820895522;
            V_totalsal  =             24206.88;
            END;
          END;
        ELSE IF  NOT MISSING(nonstsal ) AND
                       29011.5 <= nonstsal  AND
          nonstsal  <              34677.5 THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                           31786 <= nonstsal  AND
            nonstsal  <              32741.5 THEN DO;
            _NODE_  =                   84;
            _LEAF_  =                    4;
            P_totalsal  =     32334.2264150943;
            V_totalsal  =     32513.3333333333;
            END;
          ELSE IF  NOT MISSING(nonstsal ) AND
                         32741.5 <= nonstsal  AND
            nonstsal  <              33718.5 THEN DO;
            _NODE_  =                   85;
            _LEAF_  =                    5;
            P_totalsal  =             33243.24;
            V_totalsal  =     33195.8695652173;
            END;
          ELSE IF  NOT MISSING(nonstsal ) AND
                         33718.5 <= nonstsal  THEN DO;
            _NODE_  =                   86;
            _LEAF_  =                    6;
            P_totalsal  =     34083.4098360655;
            V_totalsal  =              34068.5;
            END;
          ELSE DO;
            _NODE_  =                   83;
            _LEAF_  =                    3;
            P_totalsal  =     30450.7586206896;
            V_totalsal  =     30453.0961538461;
            END;
          END;
        ELSE IF  NOT MISSING(nonstsal ) AND
                       34677.5 <= nonstsal  AND
          nonstsal  <              39454.5 THEN DO;
          IF  NOT MISSING(nonstsal ) AND
            nonstsal  <              36040.5 THEN DO;
            _NODE_  =                   87;
            _LEAF_  =                    7;
            P_totalsal  =     35447.7261904761;
            V_totalsal  =     35448.6764705882;
            END;
          ELSE IF  NOT MISSING(nonstsal ) AND
                           37165 <= nonstsal  AND
            nonstsal  <              38012.5 THEN DO;
            _NODE_  =                   89;
            _LEAF_  =                    9;
            P_totalsal  =      37626.074074074;
            V_totalsal  =              37719.2;
            END;
          ELSE IF  NOT MISSING(nonstsal ) AND
                         38012.5 <= nonstsal  THEN DO;
            _NODE_  =                   90;
            _LEAF_  =                   10;
            P_totalsal  =      38803.676056338;
            V_totalsal  =            38724.225;
            END;
          ELSE DO;
            _NODE_  =                   88;
            _LEAF_  =                    8;
            P_totalsal  =     36547.0388349514;
            V_totalsal  =          36588.59375;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
            nonstsal  <                40735 THEN DO;
            _NODE_  =                   91;
            _LEAF_  =                   11;
            P_totalsal  =     40126.2604166666;
            V_totalsal  =     40086.8163265306;
            END;
          ELSE IF  NOT MISSING(nonstsal ) AND
                           42604 <= nonstsal  THEN DO;
            _NODE_  =                   93;
            _LEAF_  =                   13;
            P_totalsal  =     43390.2297297297;
            V_totalsal  =              43219.5;
            END;
          ELSE DO;
            _NODE_  =                   92;
            _LEAF_  =                   12;
            P_totalsal  =     41634.7027027027;
            V_totalsal  =     41675.6777777777;
            END;
          END;
        END;
      END;
    END;
  END;
 
*****  RESIDUALS R_ *************;
IF MISSING( totalsal ) THEN R_totalsal  = .;
ELSE R_totalsal  = totalsal  - P_totalsal ;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
