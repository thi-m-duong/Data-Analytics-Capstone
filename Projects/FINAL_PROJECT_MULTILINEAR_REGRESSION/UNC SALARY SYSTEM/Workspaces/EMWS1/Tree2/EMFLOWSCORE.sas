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
 
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(nonstsal ) AND
                115051 <= nonstsal  THEN DO;
  IF  NOT MISSING(nonstsal ) AND
                257529.5 <= nonstsal  THEN DO;
    IF  NOT MISSING(nonstsal ) AND
                  372771.5 <= nonstsal  THEN DO;
      IF  NOT MISSING(nonstsal ) AND
                    512979.5 <= nonstsal  THEN DO;
        _NODE_  =                   31;
        _LEAF_  =                   44;
        P_totalsal  =            582917.75;
        V_totalsal  =     596384.333333333;
        END;
      ELSE DO;
        _NODE_  =                   30;
        _LEAF_  =                   43;
        P_totalsal  =     449206.769230769;
        V_totalsal  =            420689.75;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND
                    315230.5 <= nonstsal  THEN DO;
        _NODE_  =                   29;
        _LEAF_  =                   42;
        P_totalsal  =            347255.75;
        V_totalsal  =               341249;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
                         70181 <= statesal  THEN DO;
          _NODE_  =                   55;
          _LEAF_  =                   41;
          P_totalsal  =     385892.666666666;
          V_totalsal  =               371409;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                          285730 <= nonstsal  THEN DO;
            _NODE_  =                   91;
            _LEAF_  =                   40;
            P_totalsal  =     305890.966666666;
            V_totalsal  =     301179.555555555;
            END;
          ELSE DO;
            _NODE_  =                   90;
            _LEAF_  =                   39;
            P_totalsal  =     274289.210526315;
            V_totalsal  =     277074.631578947;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND
                    180203 <= nonstsal  THEN DO;
      IF  NOT MISSING(statesal ) AND
                     51060.5 <= statesal  THEN DO;
        _NODE_  =                   27;
        _LEAF_  =                   38;
        P_totalsal  =     309176.928571428;
        V_totalsal  =     310101.888888888;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                        223651 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                        241883.5 <= nonstsal  THEN DO;
            _NODE_  =                   89;
            _LEAF_  =                   37;
            P_totalsal  =     253022.555555555;
            V_totalsal  =           250817.875;
            END;
          ELSE DO;
            _NODE_  =                   88;
            _LEAF_  =                   36;
            P_totalsal  =            235625.56;
            V_totalsal  =            239422.15;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                           27296 <= statesal  THEN DO;
            _NODE_  =                   87;
            _LEAF_  =                   35;
            P_totalsal  =             237379.8;
            V_totalsal  =               220000;
            END;
          ELSE DO;
            _NODE_  =                   86;
            _LEAF_  =                   34;
            P_totalsal  =     202236.918367347;
            V_totalsal  =             200073.6;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                     69813.5 <= statesal  THEN DO;
        IF  NOT MISSING(statesal ) AND
                      118874.5 <= statesal  THEN DO;
          _NODE_  =                   51;
          _LEAF_  =                   33;
          P_totalsal  =            320843.75;
          V_totalsal  =             305409.5;
          END;
        ELSE DO;
          _NODE_  =                   50;
          _LEAF_  =                   32;
          P_totalsal  =      228098.23076923;
          V_totalsal  =     237538.666666666;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
          nonstsal  <             140119.5 THEN DO;
          IF  NOT MISSING(statesal ) AND
                           36550 <= statesal  THEN DO;
            _NODE_  =                   83;
            _LEAF_  =                   29;
            P_totalsal  =     184263.533333333;
            V_totalsal  =     171906.142857142;
            END;
          ELSE DO;
            _NODE_  =                   82;
            _LEAF_  =                   28;
            P_totalsal  =     130354.704347826;
            V_totalsal  =     133023.814814814;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                         16167.5 <= statesal  THEN DO;
            _NODE_  =                   85;
            _LEAF_  =                   31;
            P_totalsal  =     187574.903225806;
            V_totalsal  =     189994.285714285;
            END;
          ELSE DO;
            _NODE_  =                   84;
            _LEAF_  =                   30;
            P_totalsal  =            161803.34;
            V_totalsal  =     161883.142857142;
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
                    217772.5 <= statesal  THEN DO;
        IF  NOT MISSING(statesal ) AND
                      300737.5 <= statesal  THEN DO;
          _NODE_  =                   47;
          _LEAF_  =                   27;
          P_totalsal  =            371259.25;
          V_totalsal  =     385116.666666666;
          END;
        ELSE DO;
          _NODE_  =                   46;
          _LEAF_  =                   26;
          P_totalsal  =     270754.181818181;
          V_totalsal  =     292902.833333333;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                         53207 <= nonstsal  THEN DO;
          _NODE_  =                   45;
          _LEAF_  =                   25;
          P_totalsal  =               259173;
          V_totalsal  =     242883.142857142;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                        193022.5 <= statesal  THEN DO;
            _NODE_  =                   81;
            _LEAF_  =                   24;
            P_totalsal  =            212712.05;
            V_totalsal  =     216177.153846153;
            END;
          ELSE DO;
            _NODE_  =                   80;
            _LEAF_  =                   23;
            P_totalsal  =     181393.888888888;
            V_totalsal  =             186975.5;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND
                     23033.5 <= nonstsal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                       75175.5 <= nonstsal  THEN DO;
          _NODE_  =                   43;
          _LEAF_  =                   22;
          P_totalsal  =     209111.866666666;
          V_totalsal  =     217810.166666666;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                          115253 <= statesal  THEN DO;
            _NODE_  =                   79;
            _LEAF_  =                   21;
            P_totalsal  =     169171.775510204;
            V_totalsal  =     176223.142857142;
            END;
          ELSE DO;
            _NODE_  =                   78;
            _LEAF_  =                   20;
            P_totalsal  =     143113.525423728;
            V_totalsal  =     141255.652173913;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
                      117576.5 <= statesal  THEN DO;
          IF  NOT MISSING(statesal ) AND
                          136441 <= statesal  THEN DO;
            _NODE_  =                   77;
            _LEAF_  =                   19;
            P_totalsal  =     149342.807017543;
            V_totalsal  =     150521.045454545;
            END;
          ELSE DO;
            _NODE_  =                   76;
            _LEAF_  =                   18;
            P_totalsal  =     131039.036144578;
            V_totalsal  =         128212.84375;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                        101772.5 <= statesal  THEN DO;
            _NODE_  =                   75;
            _LEAF_  =                   17;
            P_totalsal  =     113273.963503649;
            V_totalsal  =     111954.901639344;
            END;
          ELSE DO;
            _NODE_  =                   74;
            _LEAF_  =                   16;
            P_totalsal  =     95764.0754716981;
            V_totalsal  =      95716.012987013;
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
        IF  NOT MISSING(statesal ) AND
                       61462.5 <= statesal  THEN DO;
          _NODE_  =                   39;
          _LEAF_  =                   15;
          P_totalsal  =             158219.4;
          V_totalsal  =             156590.2;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
            nonstsal  <                88475 THEN DO;
            _NODE_  =                   70;
            _LEAF_  =                   13;
            P_totalsal  =     119892.210526315;
            V_totalsal  =     122956.166666666;
            END;
          ELSE DO;
            _NODE_  =                   71;
            _LEAF_  =                   14;
            P_totalsal  =     143362.045454545;
            V_totalsal  =             146798.3;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                       89303.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                        102882.5 <= nonstsal  THEN DO;
            _NODE_  =                   69;
            _LEAF_  =                   12;
            P_totalsal  =          111508.4125;
            V_totalsal  =     113460.117647058;
            END;
          ELSE DO;
            _NODE_  =                   68;
            _LEAF_  =                   11;
            P_totalsal  =             96066.02;
            V_totalsal  =     96570.5555555555;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                           79396 <= nonstsal  THEN DO;
            _NODE_  =                   67;
            _LEAF_  =                   10;
            P_totalsal  =     84476.4926108374;
            V_totalsal  =      84804.922077922;
            END;
          ELSE DO;
            _NODE_  =                   66;
            _LEAF_  =                    9;
            P_totalsal  =     74945.5723905724;
            V_totalsal  =     74261.4083333333;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                     51742.5 <= statesal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                       18694.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                           38297 <= nonstsal  THEN DO;
            _NODE_  =                   65;
            _LEAF_  =                    8;
            P_totalsal  =     116668.477272727;
            V_totalsal  =     123298.826086956;
            END;
          ELSE DO;
            _NODE_  =                   64;
            _LEAF_  =                    7;
            P_totalsal  =     96360.9090909091;
            V_totalsal  =     101708.111111111;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
            statesal  <              66247.5 THEN DO;
            _NODE_  =                   62;
            _LEAF_  =                    5;
            P_totalsal  =     60063.9938650306;
            V_totalsal  =      59998.981595092;
            END;
          ELSE DO;
            _NODE_  =                   63;
            _LEAF_  =                    6;
            P_totalsal  =            77416.455;
            V_totalsal  =     78184.9333333333;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                       47236.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(statesal ) AND
                         12307.5 <= statesal  THEN DO;
            _NODE_  =                   61;
            _LEAF_  =                    4;
            P_totalsal  =     85280.3333333333;
            V_totalsal  =     84780.2105263158;
            END;
          ELSE DO;
            _NODE_  =                   60;
            _LEAF_  =                    3;
            P_totalsal  =     56825.5541535226;
            V_totalsal  =     56393.1634146341;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                         39899.5 <= statesal  THEN DO;
            _NODE_  =                   59;
            _LEAF_  =                    2;
            P_totalsal  =     48164.7592920354;
            V_totalsal  =     48515.8536585365;
            END;
          ELSE DO;
            _NODE_  =                   58;
            _LEAF_  =                    1;
            P_totalsal  =      36420.600973236;
            V_totalsal  =     36209.7162471395;
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
