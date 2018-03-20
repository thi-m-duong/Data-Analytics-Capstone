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
              142105.5 <= nonstsal  THEN DO;
  IF  NOT MISSING(nonstsal ) AND
                  257551 <= nonstsal  THEN DO;
    IF  NOT MISSING(nonstsal ) AND
                    427413 <= nonstsal  THEN DO;
      IF  NOT MISSING(nonstsal ) AND
                      567741 <= nonstsal  THEN DO;
        _NODE_  =                   31;
        _LEAF_  =                   45;
        P_totalsal  =             611716.6;
        V_totalsal  =     607240.666666666;
        END;
      ELSE DO;
        _NODE_  =                   30;
        _LEAF_  =                   44;
        P_totalsal  =           521971.875;
        V_totalsal  =            532350.25;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND
                    338125.5 <= nonstsal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                      371950.5 <= nonstsal  THEN DO;
          _NODE_  =                   53;
          _LEAF_  =                   43;
          P_totalsal  =             400897.9;
          V_totalsal  =             398676.5;
          END;
        ELSE DO;
          _NODE_  =                   52;
          _LEAF_  =                   42;
          P_totalsal  =     351456.166666666;
          V_totalsal  =     356450.166666666;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
                         34392 <= statesal  THEN DO;
          _NODE_  =                   51;
          _LEAF_  =                   41;
          P_totalsal  =     352268.833333333;
          V_totalsal  =               363181;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                        291542.5 <= nonstsal  THEN DO;
            _NODE_  =                   89;
            _LEAF_  =                   40;
            P_totalsal  =             314226.5;
            V_totalsal  =               320814;
            END;
          ELSE DO;
            _NODE_  =                   88;
            _LEAF_  =                   39;
            P_totalsal  =     275364.629629629;
            V_totalsal  =     273615.260869565;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND
      nonstsal  <               183867 THEN DO;
      IF  NOT MISSING(statesal ) AND
                     44947.5 <= statesal  THEN DO;
        _NODE_  =                   25;
        _LEAF_  =                   33;
        P_totalsal  =           233816.875;
        V_totalsal  =     237704.571428571;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                      167821.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                        178494.5 <= nonstsal  THEN DO;
            _NODE_  =                   83;
            _LEAF_  =                   32;
            P_totalsal  =     182467.631578947;
            V_totalsal  =            186190.05;
            END;
          ELSE DO;
            _NODE_  =                   82;
            _LEAF_  =                   31;
            P_totalsal  =     174872.464285714;
            V_totalsal  =            178329.28;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                            4018 <= statesal  THEN DO;
            _NODE_  =                   81;
            _LEAF_  =                   30;
            P_totalsal  =      169738.59090909;
            V_totalsal  =     176313.066666666;
            END;
          ELSE DO;
            _NODE_  =                   80;
            _LEAF_  =                   29;
            P_totalsal  =     155154.785714285;
            V_totalsal  =     154453.341463414;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                       47595 <= statesal  THEN DO;
        _NODE_  =                   27;
        _LEAF_  =                   38;
        P_totalsal  =     320474.428571428;
        V_totalsal  =     296871.555555555;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                        225350 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                          244061 <= nonstsal  THEN DO;
            _NODE_  =                   87;
            _LEAF_  =                   37;
            P_totalsal  =     255835.833333333;
            V_totalsal  =     249894.833333333;
            END;
          ELSE DO;
            _NODE_  =                   86;
            _LEAF_  =                   36;
            P_totalsal  =     238680.777777777;
            V_totalsal  =     237330.529411764;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                          209221 <= nonstsal  THEN DO;
            _NODE_  =                   85;
            _LEAF_  =                   35;
            P_totalsal  =     219275.807692307;
            V_totalsal  =      219809.52173913;
            END;
          ELSE DO;
            _NODE_  =                   84;
            _LEAF_  =                   34;
            P_totalsal  =     200004.162790697;
            V_totalsal  =     202964.210526315;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(statesal ) AND
                 95081.5 <= statesal  THEN DO;
    IF  NOT MISSING(statesal ) AND
                    187639 <= statesal  THEN DO;
      IF  NOT MISSING(statesal ) AND
                      262595 <= statesal  THEN DO;
        _NODE_  =                   23;
        _LEAF_  =                   28;
        P_totalsal  =     363639.666666666;
        V_totalsal  =             338269.8;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                         44658 <= nonstsal  THEN DO;
          _NODE_  =                   45;
          _LEAF_  =                   27;
          P_totalsal  =             311581.8;
          V_totalsal  =             294867.8;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                        220524.5 <= statesal  THEN DO;
            _NODE_  =                   79;
            _LEAF_  =                   26;
            P_totalsal  =     255085.083333333;
            V_totalsal  =             244866.6;
            END;
          ELSE DO;
            _NODE_  =                   78;
            _LEAF_  =                   25;
            P_totalsal  =             218236.5;
            V_totalsal  =     203885.769230769;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(nonstsal ) AND
                     35397.5 <= nonstsal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                       57899.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(statesal ) AND
            statesal  <             120066.5 THEN DO;
            _NODE_  =                   76;
            _LEAF_  =                   23;
            P_totalsal  =     204187.727272727;
            V_totalsal  =     195505.857142857;
            END;
          ELSE DO;
            _NODE_  =                   77;
            _LEAF_  =                   24;
            P_totalsal  =     241542.533333333;
            V_totalsal  =     230451.785714285;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                        124404.5 <= statesal  THEN DO;
            _NODE_  =                   75;
            _LEAF_  =                   22;
            P_totalsal  =     189478.533333333;
            V_totalsal  =     193500.111111111;
            END;
          ELSE DO;
            _NODE_  =                   74;
            _LEAF_  =                   21;
            P_totalsal  =     158600.666666666;
            V_totalsal  =     150150.333333333;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
                        127580 <= statesal  THEN DO;
          IF  NOT MISSING(statesal ) AND
                          158500 <= statesal  THEN DO;
            _NODE_  =                   73;
            _LEAF_  =                   20;
            P_totalsal  =               183126;
            V_totalsal  =     176907.678571428;
            END;
          ELSE DO;
            _NODE_  =                   72;
            _LEAF_  =                   19;
            P_totalsal  =     149618.147058823;
            V_totalsal  =     145208.080645161;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                          5691.5 <= nonstsal  THEN DO;
            _NODE_  =                   71;
            _LEAF_  =                   18;
            P_totalsal  =         129906.78125;
            V_totalsal  =     128715.346938775;
            END;
          ELSE DO;
            _NODE_  =                   70;
            _LEAF_  =                   17;
            P_totalsal  =             109183.6;
            V_totalsal  =     108602.939655172;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(nonstsal ) AND
                     71025 <= nonstsal  THEN DO;
      IF  NOT MISSING(nonstsal ) AND
                    104008.5 <= nonstsal  THEN DO;
        IF  NOT MISSING(statesal ) AND
                       28529.5 <= statesal  THEN DO;
          IF  NOT MISSING(statesal ) AND
            statesal  <              46022.5 THEN DO;
            _NODE_  =                   68;
            _LEAF_  =                   15;
            P_totalsal  =           154123.375;
            V_totalsal  =          158260.8125;
            END;
          ELSE DO;
            _NODE_  =                   69;
            _LEAF_  =                   16;
            P_totalsal  =     183416.923076923;
            V_totalsal  =      191435.23076923;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                          126029 <= nonstsal  THEN DO;
            _NODE_  =                   67;
            _LEAF_  =                   14;
            P_totalsal  =     136792.017241379;
            V_totalsal  =     137273.897959183;
            END;
          ELSE DO;
            _NODE_  =                   66;
            _LEAF_  =                   13;
            P_totalsal  =     117611.030927835;
            V_totalsal  =     116832.344827586;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(statesal ) AND
                         34287 <= statesal  THEN DO;
          IF  NOT MISSING(statesal ) AND
                         59791.5 <= statesal  THEN DO;
            _NODE_  =                   65;
            _LEAF_  =                   12;
            P_totalsal  =     160797.952380952;
            V_totalsal  =     157452.153846153;
            END;
          ELSE DO;
            _NODE_  =                   64;
            _LEAF_  =                   11;
            P_totalsal  =            129032.25;
            V_totalsal  =     133091.133333333;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(nonstsal ) AND
                         85304.5 <= nonstsal  THEN DO;
            _NODE_  =                   63;
            _LEAF_  =                   10;
            P_totalsal  =     94757.2010869565;
            V_totalsal  =     94938.4093959731;
            END;
          ELSE DO;
            _NODE_  =                   62;
            _LEAF_  =                    9;
            P_totalsal  =         78784.609375;
            V_totalsal  =      79604.995215311;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(statesal ) AND
                     57682.5 <= statesal  THEN DO;
        IF  NOT MISSING(nonstsal ) AND
                       16096.5 <= nonstsal  THEN DO;
          IF  NOT MISSING(nonstsal ) AND
                         39552.5 <= nonstsal  THEN DO;
            _NODE_  =                   61;
            _LEAF_  =                    8;
            P_totalsal  =            129338.56;
            V_totalsal  =     129553.294117647;
            END;
          ELSE DO;
            _NODE_  =                   60;
            _LEAF_  =                    7;
            P_totalsal  =      99634.862745098;
            V_totalsal  =            103126.04;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                           75026 <= statesal  THEN DO;
            _NODE_  =                   59;
            _LEAF_  =                    6;
            P_totalsal  =     85431.8474576271;
            V_totalsal  =     85650.7678571428;
            END;
          ELSE DO;
            _NODE_  =                   58;
            _LEAF_  =                    5;
            P_totalsal  =     67123.1872659176;
            V_totalsal  =     67725.4292035398;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(nonstsal ) AND
                         44985 <= nonstsal  THEN DO;
          IF  NOT MISSING(statesal ) AND
                         19163.5 <= statesal  THEN DO;
            _NODE_  =                   57;
            _LEAF_  =                    4;
            P_totalsal  =      92320.027027027;
            V_totalsal  =     93543.2222222222;
            END;
          ELSE DO;
            _NODE_  =                   56;
            _LEAF_  =                    3;
            P_totalsal  =     56711.6608695652;
            V_totalsal  =     56481.7465437788;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(statesal ) AND
                         40326.5 <= statesal  THEN DO;
            _NODE_  =                   55;
            _LEAF_  =                    2;
            P_totalsal  =     50289.2837573385;
            V_totalsal  =     50750.9772151898;
            END;
          ELSE DO;
            _NODE_  =                   54;
            _LEAF_  =                    1;
            P_totalsal  =     35287.5783709787;
            V_totalsal  =     35748.6993339676;
            END;
          END;
        END;
      END;
    END;
  END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
