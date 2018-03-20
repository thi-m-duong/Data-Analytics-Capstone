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
label _WARN_ = 'Warnings' ;



******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(nonstsal ) AND 
                7959.5 <= nonstsal  AND
  nonstsal  <              26786.5 THEN DO;
  IF  NOT MISSING(statesal ) AND 
    statesal  <                15906 THEN DO;
    IF  NOT MISSING(nonstsal ) AND 
      nonstsal  <                25367 THEN DO;
      _NODE_  =                   75;
      _LEAF_  =                   35;
      P_totalsal  =     23068.4146341463;
      V_totalsal  =                22662;
      END;
    ELSE DO;
      _NODE_  =                   76;
      _LEAF_  =                   36;
      P_totalsal  =     27334.5348837209;
      V_totalsal  =     26263.3571428571;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                   49065 <= statesal  AND
    statesal  <                85460 THEN DO;
    _NODE_  =                   24;
    _LEAF_  =                   39;
    P_totalsal  =     82830.2948717948;
    V_totalsal  =          81943.09375;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                   85460 <= statesal  AND
    statesal  <             134216.5 THEN DO;
    _NODE_  =                   25;
    _LEAF_  =                   40;
    P_totalsal  =     125090.743589743;
    V_totalsal  =     124927.304347826;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                134216.5 <= statesal  THEN DO;
    _NODE_  =                   26;
    _LEAF_  =                   41;
    P_totalsal  =     200156.390243902;
    V_totalsal  =             200526.9;
    END;
  ELSE DO;
    IF  NOT MISSING(statesal ) AND 
                     36361 <= statesal  THEN DO;
      _NODE_  =                   78;
      _LEAF_  =                   38;
      P_totalsal  =     58524.2857142857;
      V_totalsal  =     60014.2857142857;
      END;
    ELSE DO;
      _NODE_  =                   77;
      _LEAF_  =                   37;
      P_totalsal  =     44565.9066666666;
      V_totalsal  =     43145.8529411764;
      END;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
               26786.5 <= nonstsal  AND
  nonstsal  <                51797 THEN DO;
  IF  NOT MISSING(statesal ) AND 
                 27607.5 <= statesal  AND
    statesal  <              60796.5 THEN DO;
    _NODE_  =                   28;
    _LEAF_  =                   53;
    P_totalsal  =     80460.7692307692;
    V_totalsal  =     85355.1538461538;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                 60796.5 <= statesal  AND
    statesal  <               117809 THEN DO;
    _NODE_  =                   29;
    _LEAF_  =                   54;
    P_totalsal  =     126801.807692307;
    V_totalsal  =             126895.4;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                  117809 <= statesal  THEN DO;
    _NODE_  =                   30;
    _LEAF_  =                   55;
    P_totalsal  =               199768;
    V_totalsal  =     223880.210526315;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND 
      nonstsal  <              30002.5 THEN DO;
      _NODE_  =                   79;
      _LEAF_  =                   42;
      P_totalsal  =     29660.3404255319;
      V_totalsal  =     29332.8157894736;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                   30002.5 <= nonstsal  AND
      nonstsal  <              32912.5 THEN DO;
      _NODE_  =                   80;
      _LEAF_  =                   43;
      P_totalsal  =     32646.8823529411;
      V_totalsal  =     32581.3269230769;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                   32912.5 <= nonstsal  AND
      nonstsal  <                35442 THEN DO;
      _NODE_  =                   81;
      _LEAF_  =                   44;
      P_totalsal  =      34749.993670886;
      V_totalsal  =     34296.7627118644;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                     35442 <= nonstsal  AND
      nonstsal  <              38155.5 THEN DO;
      _NODE_  =                   82;
      _LEAF_  =                   45;
      P_totalsal  =     37205.9365853658;
      V_totalsal  =      37600.884057971;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                   38155.5 <= nonstsal  AND
      nonstsal  <              39506.5 THEN DO;
      _NODE_  =                   83;
      _LEAF_  =                   46;
      P_totalsal  =     39013.6282051282;
      V_totalsal  =     38824.7727272727;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                     42793 <= nonstsal  AND
      nonstsal  <              45730.5 THEN DO;
      IF  NOT MISSING(nonstsal ) AND 
        nonstsal  <              44018.5 THEN DO;
        _NODE_  =                   97;
        _LEAF_  =                   48;
        P_totalsal  =     43731.5058823529;
        V_totalsal  =     44168.4324324324;
        END;
      ELSE DO;
        _NODE_  =                   98;
        _LEAF_  =                   49;
        P_totalsal  =     45077.7786885245;
        V_totalsal  =     45933.7916666666;
        END;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                   45730.5 <= nonstsal  AND
      nonstsal  <                47558 THEN DO;
      _NODE_  =                   86;
      _LEAF_  =                   50;
      P_totalsal  =            46831.256;
      V_totalsal  =     47493.3191489361;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                     47558 <= nonstsal  AND
      nonstsal  <              50208.5 THEN DO;
      _NODE_  =                   87;
      _LEAF_  =                   51;
      P_totalsal  =     49519.0833333333;
      V_totalsal  =     49248.1666666666;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                   50208.5 <= nonstsal  THEN DO;
      _NODE_  =                   88;
      _LEAF_  =                   52;
      P_totalsal  =     51346.8932038835;
      V_totalsal  =     51338.8723404255;
      END;
    ELSE DO;
      _NODE_  =                   84;
      _LEAF_  =                   47;
      P_totalsal  =     41779.1944444444;
      V_totalsal  =     42223.2222222222;
      END;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
                 51797 <= nonstsal  AND
  nonstsal  <                70457 THEN DO;
  IF  NOT MISSING(statesal ) AND 
                   51837 <= statesal  THEN DO;
    _NODE_  =                   32;
    _LEAF_  =                   67;
    P_totalsal  =     153876.069767441;
    V_totalsal  =     170139.576923076;
    END;
  ELSE DO;
    IF  NOT MISSING(statesal ) AND 
                     10205 <= statesal  THEN DO;
      _NODE_  =                   90;
      _LEAF_  =                   66;
      P_totalsal  =     89068.1951219512;
      V_totalsal  =            86172.875;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND 
        nonstsal  <                52996 THEN DO;
        _NODE_  =                   99;
        _LEAF_  =                   56;
        P_totalsal  =     52729.8918918919;
        V_totalsal  =             52482.75;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       52996 <= nonstsal  AND
        nonstsal  <              54987.5 THEN DO;
        _NODE_  =                  100;
        _LEAF_  =                   57;
        P_totalsal  =                53967;
        V_totalsal  =     53882.1764705882;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                     54987.5 <= nonstsal  AND
        nonstsal  <                56486 THEN DO;
        _NODE_  =                  101;
        _LEAF_  =                   58;
        P_totalsal  =           55653.4375;
        V_totalsal  =     55692.4137931034;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       56486 <= nonstsal  AND
        nonstsal  <              58607.5 THEN DO;
        _NODE_  =                  102;
        _LEAF_  =                   59;
        P_totalsal  =     57490.9615384615;
        V_totalsal  =     57694.6756756756;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                     58607.5 <= nonstsal  AND
        nonstsal  <                60581 THEN DO;
        _NODE_  =                  103;
        _LEAF_  =                   60;
        P_totalsal  =     59667.3974358974;
        V_totalsal  =     59686.6470588235;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                     63456.5 <= nonstsal  AND
        nonstsal  <                65655 THEN DO;
        _NODE_  =                  105;
        _LEAF_  =                   63;
        P_totalsal  =     64527.9358974359;
        V_totalsal  =           64930.9375;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       65655 <= nonstsal  AND
        nonstsal  <                67531 THEN DO;
        _NODE_  =                  106;
        _LEAF_  =                   64;
        P_totalsal  =     66650.9873417721;
        V_totalsal  =     66545.3636363636;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       67531 <= nonstsal  THEN DO;
        _NODE_  =                  107;
        _LEAF_  =                   65;
        P_totalsal  =     69505.2235294117;
        V_totalsal  =                69243;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND 
          nonstsal  <                61572 THEN DO;
          _NODE_  =                  116;
          _LEAF_  =                   61;
          P_totalsal  =     61170.1111111111;
          V_totalsal  =     61061.5333333333;
          END;
        ELSE DO;
          _NODE_  =                  117;
          _LEAF_  =                   62;
          P_totalsal  =     62624.6944444444;
          V_totalsal  =              62469.1;
          END;
        END;
      END;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
                 70457 <= nonstsal  AND
  nonstsal  <              95900.5 THEN DO;
  IF  NOT MISSING(statesal ) AND 
                 54317.5 <= statesal  THEN DO;
    _NODE_  =                   34;
    _LEAF_  =                   77;
    P_totalsal  =     183768.173913043;
    V_totalsal  =     198501.166666666;
    END;
  ELSE DO;
    IF  NOT MISSING(statesal ) AND 
                     10823 <= statesal  THEN DO;
      _NODE_  =                   92;
      _LEAF_  =                   76;
      P_totalsal  =             110741.7;
      V_totalsal  =            110485.15;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND 
        nonstsal  <                72600 THEN DO;
        _NODE_  =                  108;
        _LEAF_  =                   68;
        P_totalsal  =     72030.0754716981;
        V_totalsal  =     71317.3478260869;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       75556 <= nonstsal  AND
        nonstsal  <                78992 THEN DO;
        _NODE_  =                  110;
        _LEAF_  =                   70;
        P_totalsal  =     77606.1282051282;
        V_totalsal  =           77376.5625;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       78992 <= nonstsal  AND
        nonstsal  <                80506 THEN DO;
        _NODE_  =                  111;
        _LEAF_  =                   71;
        P_totalsal  =            80025.825;
        V_totalsal  =            79747.875;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       80506 <= nonstsal  AND
        nonstsal  <              83768.5 THEN DO;
        _NODE_  =                  112;
        _LEAF_  =                   72;
        P_totalsal  =              82305.5;
        V_totalsal  =     82647.3333333333;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                     83768.5 <= nonstsal  AND
        nonstsal  <                88770 THEN DO;
        _NODE_  =                  113;
        _LEAF_  =                   73;
        P_totalsal  =     86396.2435897436;
        V_totalsal  =     86042.1470588235;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                       88770 <= nonstsal  AND
        nonstsal  <              92549.5 THEN DO;
        _NODE_  =                  114;
        _LEAF_  =                   74;
        P_totalsal  =     90686.9615384615;
        V_totalsal  =             90521.12;
        END;
      ELSE IF  NOT MISSING(nonstsal ) AND 
                     92549.5 <= nonstsal  THEN DO;
        _NODE_  =                  115;
        _LEAF_  =                   75;
        P_totalsal  =     94544.3846153846;
        V_totalsal  =     95027.2142857143;
        END;
      ELSE DO;
        _NODE_  =                  109;
        _LEAF_  =                   69;
        P_totalsal  =     74443.3717948718;
        V_totalsal  =     74648.0666666666;
        END;
      END;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
               95900.5 <= nonstsal  AND
  nonstsal  <               115051 THEN DO;
  IF  NOT MISSING(nonstsal ) AND 
    nonstsal  <               102849 THEN DO;
    _NODE_  =                   35;
    _LEAF_  =                   78;
    P_totalsal  =     108507.506172839;
    V_totalsal  =             110875.2;
    END;
  ELSE DO;
    _NODE_  =                   36;
    _LEAF_  =                   79;
    P_totalsal  =               127176;
    V_totalsal  =     128875.069767441;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
                115051 <= nonstsal  AND
  nonstsal  <               180090 THEN DO;
  IF  NOT MISSING(statesal ) AND 
                   14944 <= statesal  THEN DO;
    _NODE_  =                   38;
    _LEAF_  =                   84;
    P_totalsal  =     201597.469135802;
    V_totalsal  =     194628.918918918;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND 
      nonstsal  <             127467.5 THEN DO;
      _NODE_  =                   93;
      _LEAF_  =                   80;
      P_totalsal  =     122518.037735849;
      V_totalsal  =     122570.428571428;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                  147144.5 <= nonstsal  AND
      nonstsal  <             168130.5 THEN DO;
      _NODE_  =                   95;
      _LEAF_  =                   82;
      P_totalsal  =      158757.91025641;
      V_totalsal  =     157981.185185185;
      END;
    ELSE IF  NOT MISSING(nonstsal ) AND 
                  168130.5 <= nonstsal  THEN DO;
      _NODE_  =                   96;
      _LEAF_  =                   83;
      P_totalsal  =      175840.43902439;
      V_totalsal  =     175610.823529411;
      END;
    ELSE DO;
      _NODE_  =                   94;
      _LEAF_  =                   81;
      P_totalsal  =     138160.102564102;
      V_totalsal  =          137587.1875;
      END;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
                180090 <= nonstsal  AND
  nonstsal  <             254978.5 THEN DO;
  IF  NOT MISSING(nonstsal ) AND 
    nonstsal  <             194816.5 THEN DO;
    _NODE_  =                   39;
    _LEAF_  =                   85;
    P_totalsal  =     201038.382978723;
    V_totalsal  =               199390;
    END;
  ELSE IF  NOT MISSING(nonstsal ) AND 
                194816.5 <= nonstsal  AND
    nonstsal  <             209437.5 THEN DO;
    _NODE_  =                   40;
    _LEAF_  =                   86;
    P_totalsal  =             209783.2;
    V_totalsal  =     209436.277777777;
    END;
  ELSE IF  NOT MISSING(nonstsal ) AND 
                209437.5 <= nonstsal  AND
    nonstsal  <             226186.5 THEN DO;
    _NODE_  =                   41;
    _LEAF_  =                   87;
    P_totalsal  =     233720.761904761;
    V_totalsal  =            240252.65;
    END;
  ELSE DO;
    _NODE_  =                   42;
    _LEAF_  =                   88;
    P_totalsal  =     248026.803030303;
    V_totalsal  =           249788.625;
    END;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
              254978.5 <= nonstsal  AND
  nonstsal  <             319837.5 THEN DO;
  _NODE_  =                   10;
  _LEAF_  =                   89;
  P_totalsal  =     295589.682926829;
  V_totalsal  =     290507.363636363;
  END;
ELSE IF  NOT MISSING(nonstsal ) AND 
              319837.5 <= nonstsal  THEN DO;
  _NODE_  =                   11;
  _LEAF_  =                   90;
  P_totalsal  =             430459.4;
  V_totalsal  =     417005.789473684;
  END;
ELSE DO;
  IF  NOT MISSING(statesal ) AND 
    statesal  <                23640 THEN DO;
    IF  NOT MISSING(statesal ) AND 
      statesal  <                14517 THEN DO;
      _NODE_  =                   43;
      _LEAF_  =                    1;
      P_totalsal  =               9340.7;
      V_totalsal  =              9291.48;
      END;
    ELSE DO;
      _NODE_  =                   44;
      _LEAF_  =                    2;
      P_totalsal  =     18778.4081632653;
      V_totalsal  =     18900.3666666666;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                   23640 <= statesal  AND
    statesal  <                32259 THEN DO;
    IF  NOT MISSING(statesal ) AND 
                     27576 <= statesal  AND
      statesal  <                29005 THEN DO;
      _NODE_  =                   46;
      _LEAF_  =                    4;
      P_totalsal  =     28793.0930232558;
      V_totalsal  =              28399.7;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     29005 <= statesal  THEN DO;
      _NODE_  =                   47;
      _LEAF_  =                    5;
      P_totalsal  =     30887.5512820512;
      V_totalsal  =     30838.6857142857;
      END;
    ELSE DO;
      _NODE_  =                   45;
      _LEAF_  =                    3;
      P_totalsal  =     26586.1349693251;
      V_totalsal  =             26462.65;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                 45650.5 <= statesal  AND
    statesal  <              59016.5 THEN DO;
    IF  NOT MISSING(statesal ) AND 
      statesal  <              47405.5 THEN DO;
      _NODE_  =                   56;
      _LEAF_  =                   14;
      P_totalsal  =      46716.914893617;
      V_totalsal  =      46991.303030303;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     49470 <= statesal  AND
      statesal  <                52034 THEN DO;
      _NODE_  =                   58;
      _LEAF_  =                   16;
      P_totalsal  =     51208.1898734177;
      V_totalsal  =     50894.7333333333;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     52034 <= statesal  AND
      statesal  <              53886.5 THEN DO;
      _NODE_  =                   59;
      _LEAF_  =                   17;
      P_totalsal  =            53774.325;
      V_totalsal  =     53131.4736842105;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                   53886.5 <= statesal  AND
      statesal  <                57451 THEN DO;
      _NODE_  =                   60;
      _LEAF_  =                   18;
      P_totalsal  =     56976.4487179487;
      V_totalsal  =      56346.641025641;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     57451 <= statesal  THEN DO;
      _NODE_  =                   61;
      _LEAF_  =                   19;
      P_totalsal  =     59281.1136363636;
      V_totalsal  =     58615.7272727272;
      END;
    ELSE DO;
      _NODE_  =                   57;
      _LEAF_  =                   15;
      P_totalsal  =     48956.7037037037;
      V_totalsal  =              48801.5;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                 59016.5 <= statesal  AND
    statesal  <                72450 THEN DO;
    IF  NOT MISSING(statesal ) AND 
      statesal  <              62381.5 THEN DO;
      _NODE_  =                   62;
      _LEAF_  =                   20;
      P_totalsal  =         60716.953125;
      V_totalsal  =     60668.3913043478;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     66339 <= statesal  AND
      statesal  <              70382.5 THEN DO;
      _NODE_  =                   64;
      _LEAF_  =                   22;
      P_totalsal  =     68910.8717948718;
      V_totalsal  =     69456.3571428571;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                   70382.5 <= statesal  THEN DO;
      _NODE_  =                   65;
      _LEAF_  =                   23;
      P_totalsal  =              71726.2;
      V_totalsal  =                71677;
      END;
    ELSE DO;
      _NODE_  =                   63;
      _LEAF_  =                   21;
      P_totalsal  =      64567.782051282;
      V_totalsal  =      64690.744680851;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                   72450 <= statesal  AND
    statesal  <                85976 THEN DO;
    IF  NOT MISSING(statesal ) AND 
      statesal  <                74875 THEN DO;
      _NODE_  =                   66;
      _LEAF_  =                   24;
      P_totalsal  =            73999.825;
      V_totalsal  =     73990.7142857143;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     74875 <= statesal  AND
      statesal  <                76825 THEN DO;
      _NODE_  =                   67;
      _LEAF_  =                   25;
      P_totalsal  =     75918.0727272727;
      V_totalsal  =             76147.75;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     81804 <= statesal  THEN DO;
      _NODE_  =                   69;
      _LEAF_  =                   27;
      P_totalsal  =     84299.5409836065;
      V_totalsal  =     84580.2758620689;
      END;
    ELSE DO;
      _NODE_  =                   68;
      _LEAF_  =                   26;
      P_totalsal  =     79944.8354430379;
      V_totalsal  =     79243.1842105263;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                   85976 <= statesal  AND
    statesal  <               106097 THEN DO;
    IF  NOT MISSING(statesal ) AND 
      statesal  <                89871 THEN DO;
      _NODE_  =                   70;
      _LEAF_  =                   28;
      P_totalsal  =             88603.75;
      V_totalsal  =     88720.3846153846;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                   96287.5 <= statesal  THEN DO;
      _NODE_  =                   72;
      _LEAF_  =                   30;
      P_totalsal  =     101598.911764705;
      V_totalsal  =     100679.238095238;
      END;
    ELSE DO;
      _NODE_  =                   71;
      _LEAF_  =                   29;
      P_totalsal  =     93173.0384615384;
      V_totalsal  =          93346.90625;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                  106097 <= statesal  AND
    statesal  <             128426.5 THEN DO;
    IF  NOT MISSING(statesal ) AND 
                  116079.5 <= statesal  THEN DO;
      _NODE_  =                   74;
      _LEAF_  =                   32;
      P_totalsal  =     123124.837209302;
      V_totalsal  =               122048;
      END;
    ELSE DO;
      _NODE_  =                   73;
      _LEAF_  =                   31;
      P_totalsal  =     111279.364864864;
      V_totalsal  =     110914.058823529;
      END;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                128426.5 <= statesal  AND
    statesal  <               160454 THEN DO;
    _NODE_  =                   20;
    _LEAF_  =                   33;
    P_totalsal  =     143790.692307692;
    V_totalsal  =     142375.538461538;
    END;
  ELSE IF  NOT MISSING(statesal ) AND 
                  160454 <= statesal  THEN DO;
    _NODE_  =                   21;
    _LEAF_  =                   34;
    P_totalsal  =     201690.156862745;
    V_totalsal  =               215049;
    END;
  ELSE DO;
    IF  NOT MISSING(statesal ) AND 
      statesal  <                35298 THEN DO;
      _NODE_  =                   48;
      _LEAF_  =                    6;
      P_totalsal  =     34575.2571428571;
      V_totalsal  =                34988;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     35298 <= statesal  AND
      statesal  <              37119.5 THEN DO;
      _NODE_  =                   49;
      _LEAF_  =                    7;
      P_totalsal  =     36653.8536585365;
      V_totalsal  =     37409.6206896551;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                   37119.5 <= statesal  AND
      statesal  <                38254 THEN DO;
      _NODE_  =                   50;
      _LEAF_  =                    8;
      P_totalsal  =             37993.75;
      V_totalsal  =     38384.2272727272;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     38254 <= statesal  AND
      statesal  <                39394 THEN DO;
      _NODE_  =                   51;
      _LEAF_  =                    9;
      P_totalsal  =             39163.85;
      V_totalsal  =      39154.409090909;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     41017 <= statesal  AND
      statesal  <              42620.5 THEN DO;
      _NODE_  =                   53;
      _LEAF_  =                   11;
      P_totalsal  =     42441.3846153846;
      V_totalsal  =     42088.5517241379;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                   42620.5 <= statesal  AND
      statesal  <                44338 THEN DO;
      _NODE_  =                   54;
      _LEAF_  =                   12;
      P_totalsal  =     44047.7325581395;
      V_totalsal  =     44212.8333333333;
      END;
    ELSE IF  NOT MISSING(statesal ) AND 
                     44338 <= statesal  THEN DO;
      _NODE_  =                   55;
      _LEAF_  =                   13;
      P_totalsal  =     45200.5405405405;
      V_totalsal  =             45332.76;
      END;
    ELSE DO;
      _NODE_  =                   52;
      _LEAF_  =                   10;
      P_totalsal  =     40950.3218390804;
      V_totalsal  =     40552.1081081081;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

