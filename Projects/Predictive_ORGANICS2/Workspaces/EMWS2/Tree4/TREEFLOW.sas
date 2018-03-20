****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_TargetBuy  $   12; 
LENGTH I_TargetBuy  $   12; 
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_TargetBuy0 = 'Predicted: TargetBuy=0' ;
label P_TargetBuy1 = 'Predicted: TargetBuy=1' ;
label Q_TargetBuy0 = 'Unadjusted P: TargetBuy=0' ;
label Q_TargetBuy1 = 'Unadjusted P: TargetBuy=1' ;
label V_TargetBuy0 = 'Validated: TargetBuy=0' ;
label V_TargetBuy1 = 'Validated: TargetBuy=1' ;
label R_TargetBuy0 = 'Residual: TargetBuy=0' ;
label R_TargetBuy1 = 'Residual: TargetBuy=1' ;
label F_TargetBuy = 'From: TargetBuy' ;
label I_TargetBuy = 'Into: TargetBuy' ;
label U_TargetBuy = 'Unnormalized Into: TargetBuy' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_1 $      1; DROP _ARBFMT_1; 
_ARBFMT_1 = ' '; /* Initialize to avoid warning. */


_ARBFMT_12 = PUT( TargetBuy , BEST12.);
 %DMNORMCP( _ARBFMT_12, F_TargetBuy );

******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(DemAge ) AND 
  DemAge  <                 44.5 THEN DO;
  IF  NOT MISSING(DemAffl ) AND 
    DemAffl  <                 10.5 THEN DO;
    _ARBFMT_1 = PUT( DemGender , $1.);
     %DMNORMIP( _ARBFMT_1);
    IF _ARBFMT_1 IN ('F' ) THEN DO;
      IF  NOT MISSING(DemAffl ) AND 
        DemAffl  <                  6.5 THEN DO;
        _NODE_  =                   16;
        _LEAF_  =                    1;
        P_TargetBuy0  =     0.64830508474576;
        P_TargetBuy1  =     0.35169491525423;
        Q_TargetBuy0  =     0.64830508474576;
        Q_TargetBuy1  =     0.35169491525423;
        V_TargetBuy0  =       0.626213592233;
        V_TargetBuy1  =     0.37378640776699;
        I_TargetBuy  = '0' ;
        U_TargetBuy  =                    0;
        END;
      ELSE DO;
        IF  NOT MISSING(DemAge ) AND 
                          39.5 <= DemAge  THEN DO;
          _NODE_  =                   31;
          _LEAF_  =                    3;
          P_TargetBuy0  =     0.55392156862745;
          P_TargetBuy1  =     0.44607843137254;
          Q_TargetBuy0  =     0.55392156862745;
          Q_TargetBuy1  =     0.44607843137254;
          V_TargetBuy0  =     0.52027027027027;
          V_TargetBuy1  =     0.47972972972972;
          I_TargetBuy  = '0' ;
          U_TargetBuy  =                    0;
          END;
        ELSE DO;
          _NODE_  =                   30;
          _LEAF_  =                    2;
          P_TargetBuy0  =     0.36158192090395;
          P_TargetBuy1  =     0.63841807909604;
          Q_TargetBuy0  =     0.36158192090395;
          Q_TargetBuy1  =     0.63841807909604;
          V_TargetBuy0  =     0.36140350877192;
          V_TargetBuy1  =     0.63859649122807;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        END;
      END;
    ELSE DO;
      _NODE_  =                    9;
      _LEAF_  =                    4;
      P_TargetBuy0  =     0.75140186915887;
      P_TargetBuy1  =     0.24859813084112;
      Q_TargetBuy0  =     0.75140186915887;
      Q_TargetBuy1  =     0.24859813084112;
      V_TargetBuy0  =     0.77239709443099;
      V_TargetBuy1  =       0.227602905569;
      I_TargetBuy  = '0' ;
      U_TargetBuy  =                    0;
      END;
    END;
  ELSE DO;
    _ARBFMT_1 = PUT( DemGender , $1.);
     %DMNORMIP( _ARBFMT_1);
    IF _ARBFMT_1 IN ('F' ) THEN DO;
      _NODE_  =                   11;
      _LEAF_  =                    7;
      P_TargetBuy0  =     0.20069204152249;
      P_TargetBuy1  =      0.7993079584775;
      Q_TargetBuy0  =     0.20069204152249;
      Q_TargetBuy1  =      0.7993079584775;
      V_TargetBuy0  =     0.18894009216589;
      V_TargetBuy1  =      0.8110599078341;
      I_TargetBuy  = '1' ;
      U_TargetBuy  =                    1;
      END;
    ELSE DO;
      IF  NOT MISSING(DemAffl ) AND 
                        12.5 <= DemAffl  THEN DO;
        _NODE_  =                   21;
        _LEAF_  =                    6;
        P_TargetBuy0  =     0.28155339805825;
        P_TargetBuy1  =     0.71844660194174;
        Q_TargetBuy0  =     0.28155339805825;
        Q_TargetBuy1  =     0.71844660194174;
        V_TargetBuy0  =     0.34177215189873;
        V_TargetBuy1  =     0.65822784810126;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      ELSE DO;
        _NODE_  =                   20;
        _LEAF_  =                    5;
        P_TargetBuy0  =     0.57857142857142;
        P_TargetBuy1  =     0.42142857142857;
        Q_TargetBuy0  =     0.57857142857142;
        Q_TargetBuy1  =     0.42142857142857;
        V_TargetBuy0  =     0.53043478260869;
        V_TargetBuy1  =      0.4695652173913;
        I_TargetBuy  = '0' ;
        U_TargetBuy  =                    0;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(DemAffl ) AND 
                    12.5 <= DemAffl  THEN DO;
    IF  NOT MISSING(DemAffl ) AND 
                      16.5 <= DemAffl  THEN DO;
      _NODE_  =                   15;
      _LEAF_  =                   10;
      P_TargetBuy0  =      0.2258064516129;
      P_TargetBuy1  =     0.77419354838709;
      Q_TargetBuy0  =      0.2258064516129;
      Q_TargetBuy1  =     0.77419354838709;
      V_TargetBuy0  =     0.26666666666666;
      V_TargetBuy1  =     0.73333333333333;
      I_TargetBuy  = '1' ;
      U_TargetBuy  =                    1;
      END;
    ELSE DO;
      _NODE_  =                   14;
      _LEAF_  =                    9;
      P_TargetBuy0  =     0.61950286806883;
      P_TargetBuy1  =     0.38049713193116;
      Q_TargetBuy0  =     0.61950286806883;
      Q_TargetBuy1  =     0.38049713193116;
      V_TargetBuy0  =     0.62268518518518;
      V_TargetBuy1  =     0.37731481481481;
      I_TargetBuy  = '0' ;
      U_TargetBuy  =                    0;
      END;
    END;
  ELSE DO;
    _NODE_  =                    6;
    _LEAF_  =                    8;
    P_TargetBuy0  =     0.86885513637106;
    P_TargetBuy1  =     0.13114486362894;
    Q_TargetBuy0  =     0.86885513637106;
    Q_TargetBuy1  =     0.13114486362894;
    V_TargetBuy0  =     0.87678571428571;
    V_TargetBuy1  =     0.12321428571428;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  END;

*****  RESIDUALS R_ *************;
IF  F_TargetBuy  NE '0' 
AND F_TargetBuy  NE '1'  THEN DO; 
        R_TargetBuy0  = .;
        R_TargetBuy1  = .;
 END;
 ELSE DO;
       R_TargetBuy0  =  -P_TargetBuy0 ;
       R_TargetBuy1  =  -P_TargetBuy1 ;
       SELECT( F_TargetBuy  );
          WHEN( '0'  ) R_TargetBuy0  = R_TargetBuy0  +1;
          WHEN( '1'  ) R_TargetBuy1  = R_TargetBuy1  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

