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


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_30 $     30; DROP _ARBFMT_30; 
_ARBFMT_30 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_28 $     28; DROP _ARBFMT_28; 
_ARBFMT_28 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(nonstsal ) AND 
                115051 <= nonstsal  THEN DO;
  IF  NOT MISSING(nonstsal ) AND 
                257529.5 <= nonstsal  THEN DO;
    IF  NOT MISSING(nonstsal ) AND 
                  319837.5 <= nonstsal  THEN DO;
      _NODE_  =                   15;
      _LEAF_  =                   62;
      P_totalsal  =             430459.4;
      V_totalsal  =     417005.789473684;
      END;
    ELSE DO;
      _NODE_  =                   14;
      _LEAF_  =                   61;
      P_totalsal  =     298051.519480519;
      V_totalsal  =         291616.96875;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND 
                    180203 <= nonstsal  THEN DO;
      IF  NOT MISSING(nonstsal ) AND 
        nonstsal  <             209437.5 THEN DO;
        _NODE_  =                   26;
        _LEAF_  =                   59;
        P_totalsal  =     205348.279069767;
        V_totalsal  =     203595.418604651;
        END;
      ELSE DO;
        _NODE_  =                   27;
        _LEAF_  =                   60;
        P_totalsal  =     243136.530973451;
        V_totalsal  =     245666.222222222;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND 
                      7640.5 <= statesal  THEN DO;
        _NODE_  =                   25;
        _LEAF_  =                   58;
        P_totalsal  =     193310.744897959;
        V_totalsal  =     188562.465116279;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND 
                      148505.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND 
            nonstsal  <               163762 THEN DO;
            _NODE_  =                   58;
            _LEAF_  =                   56;
            P_totalsal  =            155528.94;
            V_totalsal  =     155128.277777777;
            END;
          ELSE DO;
            _NODE_  =                   59;
            _LEAF_  =                   57;
            P_totalsal  =     172026.475409836;
            V_totalsal  =     173655.545454545;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND 
                        131707.5 <= nonstsal  THEN DO;
            _NODE_  =                   57;
            _LEAF_  =                   55;
            P_totalsal  =     140011.491525423;
            V_totalsal  =     140091.541666666;
            END;
          ELSE DO;
            _NODE_  =                   56;
            _LEAF_  =                   54;
            P_totalsal  =        123389.078125;
            V_totalsal  =     123918.555555555;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(statesal ) AND 
                   87510 <= statesal  THEN DO;
    IF  NOT MISSING(statesal ) AND 
                    157105 <= statesal  THEN DO;
      IF  NOT MISSING(statesal ) AND 
                      192854 <= statesal  THEN DO;
        _NODE_  =                   23;
        _LEAF_  =                   53;
        P_totalsal  =     264361.269230769;
        V_totalsal  =     268468.275862069;
        END;
      ELSE DO;
        _NODE_  =                   22;
        _LEAF_  =                   52;
        P_totalsal  =     188379.583333333;
        V_totalsal  =     197484.576923076;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND 
                     23033.5 <= nonstsal  THEN DO;
        IF  NOT MISSING(statesal ) AND 
          statesal  <               111605 THEN DO;
          _NODE_  =                   36;
          _LEAF_  =                   50;
          P_totalsal  =     145322.421052631;
          V_totalsal  =     141973.761904761;
          END;
        ELSE DO;
          _NODE_  =                   37;
          _LEAF_  =                   51;
          P_totalsal  =     175551.742424242;
          V_totalsal  =     183700.727272727;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND 
                      117576.5 <= statesal  THEN DO;
          IF  NOT MISSING(statesal ) AND 
                          136441 <= statesal  THEN DO;
            _NODE_  =                   55;
            _LEAF_  =                   49;
            P_totalsal  =     149342.807017543;
            V_totalsal  =     150521.045454545;
            END;
          ELSE DO;
            _NODE_  =                   54;
            _LEAF_  =                   48;
            P_totalsal  =     131039.036144578;
            V_totalsal  =         128212.84375;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND 
                        101772.5 <= statesal  THEN DO;
            IF  NOT MISSING(statesal ) AND 
                            110326 <= statesal  THEN DO;
              _NODE_  =                   81;
              _LEAF_  =                   47;
              P_totalsal  =        117554.203125;
              V_totalsal  =            116456.85;
              END;
            ELSE DO;
              _NODE_  =                   80;
              _LEAF_  =                   46;
              P_totalsal  =     109521.424657534;
              V_totalsal  =     109758.829268292;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(statesal ) AND 
                           95789.5 <= statesal  THEN DO;
              _NODE_  =                   79;
              _LEAF_  =                   45;
              P_totalsal  =     101223.018518518;
              V_totalsal  =          99647.84375;
              END;
            ELSE DO;
              IF  NOT MISSING(statesal ) AND 
                               91975 <= statesal  THEN DO;
                _NODE_  =                  105;
                _LEAF_  =                   44;
                P_totalsal  =     95334.1960784313;
                V_totalsal  =             95030.85;
                END;
              ELSE DO;
                _NODE_  =                  104;
                _LEAF_  =                   43;
                P_totalsal  =     90711.1296296296;
                V_totalsal  =              91231.4;
                END;
              END;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND 
                     68358 <= nonstsal  THEN DO;
      IF  NOT MISSING(statesal ) AND 
                       27171 <= statesal  THEN DO;
        _NODE_  =                   19;
        _LEAF_  =                   42;
        P_totalsal  =     142233.363636363;
        V_totalsal  =     138015.111111111;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND 
                       89303.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND 
                        102882.5 <= nonstsal  THEN DO;
            _NODE_  =                   51;
            _LEAF_  =                   41;
            P_totalsal  =          111508.4125;
            V_totalsal  =     113460.117647058;
            END;
          ELSE DO;
            IF  NOT MISSING(nonstsal ) AND 
                             95966 <= nonstsal  THEN DO;
              _NODE_  =                   77;
              _LEAF_  =                   40;
              P_totalsal  =     100421.356164383;
              V_totalsal  =     100345.344827586;
              END;
            ELSE DO;
              IF  NOT MISSING(nonstsal ) AND 
                             92349.5 <= nonstsal  THEN DO;
                _NODE_  =                  103;
                _LEAF_  =                   39;
                P_totalsal  =              95371.3;
                V_totalsal  =            96703.375;
                END;
              ELSE DO;
                _NODE_  =                  102;
                _LEAF_  =                   38;
                P_totalsal  =     91942.7910447761;
                V_totalsal  =              90884.6;
                END;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND 
                           79396 <= nonstsal  THEN DO;
            IF  NOT MISSING(nonstsal ) AND 
                           84951.5 <= nonstsal  THEN DO;
              _NODE_  =                   75;
              _LEAF_  =                   37;
              P_totalsal  =     87713.6266666666;
              V_totalsal  =          86818.59375;
              END;
            ELSE DO;
              IF  NOT MISSING(nonstsal ) AND 
                               82225 <= nonstsal  THEN DO;
                _NODE_  =                  101;
                _LEAF_  =                   36;
                P_totalsal  =              83984.8;
                V_totalsal  =     85157.4782608695;
                END;
              ELSE DO;
                _NODE_  =                  100;
                _LEAF_  =                   35;
                P_totalsal  =     81679.0512820512;
                V_totalsal  =     81507.3636363636;
                END;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(nonstsal ) AND 
                             73932 <= nonstsal  THEN DO;
              _NODE_  =                   73;
              _LEAF_  =                   34;
              P_totalsal  =     77790.8088235294;
              V_totalsal  =     77070.1896551724;
              END;
            ELSE DO;
              IF  NOT MISSING(nonstsal ) AND 
                nonstsal  <                70266 THEN DO;
                _NODE_  =                   98;
                _LEAF_  =                   32;
                P_totalsal  =         70739.328125;
                V_totalsal  =             69560.12;
                END;
              ELSE DO;
                _NODE_  =                   99;
                _LEAF_  =                   33;
                P_totalsal  =     73731.6288659793;
                V_totalsal  =                73035;
                END;
              END;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND 
                     51742.5 <= statesal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND 
                       18694.5 <= nonstsal  THEN DO;
          _NODE_  =                   31;
          _LEAF_  =                   31;
          P_totalsal  =     105386.494949494;
          V_totalsal  =     113819.975609756;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND 
            statesal  <              66247.5 THEN DO;
            IF  NOT MISSING(statesal ) AND 
                             59398 <= statesal  THEN DO;
              IF  NOT MISSING(statesal ) AND 
                             63139.5 <= statesal  THEN DO;
                _NODE_  =                   93;
                _LEAF_  =                   25;
                P_totalsal  =     65855.1803278688;
                V_totalsal  =     65535.5142857143;
                END;
              ELSE DO;
                _NODE_  =                   92;
                _LEAF_  =                   24;
                P_totalsal  =                62329;
                V_totalsal  =     62293.6363636363;
                END;
              END;
            ELSE DO;
              IF  NOT MISSING(statesal ) AND 
                statesal  <                54315 THEN DO;
                _NODE_  =                   90;
                _LEAF_  =                   22;
                P_totalsal  =     54687.5932203389;
                V_totalsal  =     55166.5151515151;
                END;
              ELSE DO;
                _NODE_  =                   91;
                _LEAF_  =                   23;
                P_totalsal  =     58492.0076335878;
                V_totalsal  =     58224.2903225806;
                END;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(statesal ) AND 
                             77561 <= statesal  THEN DO;
              IF  NOT MISSING(statesal ) AND 
                             82821.5 <= statesal  THEN DO;
                _NODE_  =                   97;
                _LEAF_  =                   30;
                P_totalsal  =              86975.4;
                V_totalsal  =     86406.1428571428;
                END;
              ELSE DO;
                _NODE_  =                   96;
                _LEAF_  =                   29;
                P_totalsal  =     81559.6236559139;
                V_totalsal  =     80036.2647058823;
                END;
              END;
            ELSE DO;
              IF  NOT MISSING(statesal ) AND 
                statesal  <              71563.5 THEN DO;
                _NODE_  =                   94;
                _LEAF_  =                   26;
                P_totalsal  =     70544.2612612612;
                V_totalsal  =     71108.8409090909;
                END;
              ELSE DO;
                IF  NOT MISSING(statesal ) AND 
                  statesal  <                74875 THEN DO;
                  _NODE_  =                  120;
                  _LEAF_  =                   27;
                  P_totalsal  =     73895.7868852459;
                  V_totalsal  =     75461.8484848484;
                  END;
                ELSE DO;
                  _NODE_  =                  121;
                  _LEAF_  =                   28;
                  P_totalsal  =     76233.8923076923;
                  V_totalsal  =     77924.7037037037;
                  END;
                END;
              END;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND 
                       47236.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND 
                         57561.5 <= nonstsal  THEN DO;
            IF  NOT MISSING(nonstsal ) AND 
                             64045 <= nonstsal  THEN DO;
              _NODE_  =                   67;
              _LEAF_  =                   21;
              P_totalsal  =     67651.3558282208;
              V_totalsal  =             67018.65;
              END;
            ELSE DO;
              _NODE_  =                   66;
              _LEAF_  =                   20;
              P_totalsal  =     62452.1654411764;
              V_totalsal  =     62460.6293103448;
              END;
            END;
          ELSE DO;
            _ARBFMT_28 = PUT( position , $28.);
             %DMNORMIP( _ARBFMT_28);
            IF _ARBFMT_28 IN ('OTHER' ,'ADMIN' ,'ASSISTANT OTHER' ,
            'BUILDING' ,'CLINICAL OTHER' ,'CLINICAL RESEARCH' ,'DATA' ,
            'EXECUTIVE' ,'RESEARCH OTHER' ,'OTHER PROGRAM' ,
            'PROJECT MANAGER' ,'RESEARCH ASSISTANT' ,'RESEARCH ASSOCIATE' ,
              'RESEARCH SPECIALIST' ,'RESEARCH TECHNICIAN' ) THEN DO;
              IF  NOT MISSING(nonstsal ) AND 
                             52314.5 <= nonstsal  THEN DO;
                IF  NOT MISSING(nonstsal ) AND 
                  nonstsal  <                54069 THEN DO;
                  _NODE_  =                  118;
                  _LEAF_  =                   17;
                  P_totalsal  =     53463.0326086956;
                  V_totalsal  =     53454.8205128205;
                  END;
                ELSE DO;
                  _NODE_  =                  119;
                  _LEAF_  =                   18;
                  P_totalsal  =     56112.2881355932;
                  V_totalsal  =     56244.7291666666;
                  END;
                END;
              ELSE DO;
                IF  NOT MISSING(nonstsal ) AND 
                               50208.5 <= nonstsal  THEN DO;
                  _NODE_  =                  117;
                  _LEAF_  =                   16;
                  P_totalsal  =     51353.1333333333;
                  V_totalsal  =     51452.6818181818;
                  END;
                ELSE DO;
                  IF  NOT MISSING(nonstsal ) AND 
                    nonstsal  <              48572.5 THEN DO;
                    _NODE_  =                  128;
                    _LEAF_  =                   14;
                    P_totalsal  =     48331.1384615384;
                    V_totalsal  =     48000.1891891891;
                    END;
                  ELSE DO;
                    _NODE_  =                  129;
                    _LEAF_  =                   15;
                    P_totalsal  =     49615.2093023255;
                    V_totalsal  =     49436.8378378378;
                    END;
                  END;
                END;
              END;
            ELSE DO;
              _NODE_  =                   65;
              _LEAF_  =                   19;
              P_totalsal  =             59423.75;
              V_totalsal  =     58581.1666666666;
              END;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND 
                         39899.5 <= statesal  THEN DO;
            IF  NOT MISSING(nonstsal ) AND 
                           11020.5 <= nonstsal  THEN DO;
              _NODE_  =                   63;
              _LEAF_  =                   13;
              P_totalsal  =     70818.3703703703;
              V_totalsal  =            76347.125;
              END;
            ELSE DO;
              IF  NOT MISSING(statesal ) AND 
                             46728.5 <= statesal  THEN DO;
                IF  NOT MISSING(statesal ) AND 
                                 49470 <= statesal  THEN DO;
                  _NODE_  =                  115;
                  _LEAF_  =                   12;
                  P_totalsal  =     51269.5405405405;
                  V_totalsal  =     50776.3703703703;
                  END;
                ELSE DO;
                  _NODE_  =                  114;
                  _LEAF_  =                   11;
                  P_totalsal  =     48737.9183673469;
                  V_totalsal  =     48443.6041666666;
                  END;
                END;
              ELSE DO;
                IF  NOT MISSING(statesal ) AND 
                                 43211 <= statesal  THEN DO;
                  IF  NOT MISSING(statesal ) AND 
                                 44928.5 <= statesal  THEN DO;
                    _NODE_  =                  127;
                    _LEAF_  =                   10;
                    P_totalsal  =              45916.1;
                    V_totalsal  =     46094.6470588235;
                    END;
                  ELSE DO;
                    _NODE_  =                  126;
                    _LEAF_  =                    9;
                    P_totalsal  =     44672.6947368421;
                    V_totalsal  =     44674.4871794871;
                    END;
                  END;
                ELSE DO;
                  _NODE_  =                  112;
                  _LEAF_  =                    8;
                  P_totalsal  =     42302.3103448275;
                  V_totalsal  =      41848.527027027;
                  END;
                END;
              END;
            END;
          ELSE DO;
            IF  NOT MISSING(nonstsal ) AND 
                             36731 <= nonstsal  THEN DO;
              IF  NOT MISSING(nonstsal ) AND 
                nonstsal  <                41994 THEN DO;
                IF  NOT MISSING(nonstsal ) AND 
                  nonstsal  <              39506.5 THEN DO;
                  _NODE_  =                  108;
                  _LEAF_  =                    5;
                  P_totalsal  =     39119.9294117647;
                  V_totalsal  =     38680.7432432432;
                  END;
                ELSE DO;
                  _NODE_  =                  109;
                  _LEAF_  =                    6;
                  P_totalsal  =      41742.612745098;
                  V_totalsal  =     42987.9304347826;
                  END;
                END;
              ELSE DO;
                _NODE_  =                   85;
                _LEAF_  =                    7;
                P_totalsal  =     45920.9526315789;
                V_totalsal  =      45435.050955414;
                END;
              END;
            ELSE DO;
              _ARBFMT_30 = PUT( exempt2 , $30.);
               %DMNORMIP( _ARBFMT_30);
              IF _ARBFMT_30 IN ('NON-PERMANENT' ) THEN DO;
                _NODE_  =                   83;
                _LEAF_  =                    4;
                P_totalsal  =     18065.0520833333;
                V_totalsal  =                16201;
                END;
              ELSE DO;
                IF  NOT MISSING(statesal ) AND 
                               30203.5 <= statesal  THEN DO;
                  _NODE_  =                  107;
                  _LEAF_  =                    3;
                  P_totalsal  =     38949.9046153846;
                  V_totalsal  =     38674.6518518518;
                  END;
                ELSE DO;
                  IF  NOT MISSING(nonstsal ) AND 
                    nonstsal  <                13312 THEN DO;
                    _NODE_  =                  122;
                    _LEAF_  =                    1;
                    P_totalsal  =      26887.873076923;
                    V_totalsal  =              27700.2;
                    END;
                  ELSE DO;
                    _NODE_  =                  123;
                    _LEAF_  =                    2;
                    P_totalsal  =     33620.4532258064;
                    V_totalsal  =     33052.4937238493;
                    END;
                  END;
                END;
              END;
            END;
          END;
        END;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

