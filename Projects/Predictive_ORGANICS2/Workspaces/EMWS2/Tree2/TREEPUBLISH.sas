****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
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
label I_TargetBuy = 'Into: TargetBuy' ;
label U_TargetBuy = 'Unnormalized Into: TargetBuy' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_1 $      1; DROP _ARBFMT_1; 
_ARBFMT_1 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_10 $     10; DROP _ARBFMT_10; 
_ARBFMT_10 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(DemAge ) AND 
  DemAge  <                 44.5 THEN DO;
  _ARBFMT_1 = PUT( DemGender , $1.);
   %DMNORMIP( _ARBFMT_1);
  IF _ARBFMT_1 IN ('F' ) THEN DO;
    IF  NOT MISSING(DemAffl ) AND 
      DemAffl  <                 10.5 THEN DO;
      _NODE_  =                  120;
      _LEAF_  =                    2;
      P_TargetBuy0  =     0.49622166246851;
      P_TargetBuy1  =     0.50377833753148;
      Q_TargetBuy0  =     0.49622166246851;
      Q_TargetBuy1  =     0.50377833753148;
      V_TargetBuy0  =     0.48356807511737;
      V_TargetBuy1  =     0.51643192488262;
      I_TargetBuy  = '1' ;
      U_TargetBuy  =                    1;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( DemTVReg , $12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('MIDLANDS' ,'EAST' ,'S & S EAST' ,'YORKSHIRE' ,
      'N WEST' ,'BORDER' ) THEN DO;
        _NODE_  =                  140;
        _LEAF_  =                    3;
        P_TargetBuy0  =     0.25670498084291;
        P_TargetBuy1  =     0.74329501915708;
        Q_TargetBuy0  =     0.25670498084291;
        Q_TargetBuy1  =     0.74329501915708;
        V_TargetBuy0  =     0.20918367346938;
        V_TargetBuy1  =     0.79081632653061;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      ELSE DO;
        _ARBFMT_10 = PUT( DemReg , $10.);
         %DMNORMIP( _ARBFMT_10);
        IF _ARBFMT_10 IN ('MIDLANDS' ,'SOUTH EAST' ,'SCOTTISH' ,'SOUTH WEST' )
           THEN DO;
          _NODE_  =                  160;
          _LEAF_  =                    4;
          P_TargetBuy0  =     0.16438356164383;
          P_TargetBuy1  =     0.83561643835616;
          Q_TargetBuy0  =     0.16438356164383;
          Q_TargetBuy1  =     0.83561643835616;
          V_TargetBuy0  =     0.17535545023696;
          V_TargetBuy1  =     0.82464454976303;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        ELSE DO;
          _NODE_  =                  161;
          _LEAF_  =                    5;
          P_TargetBuy0  =                 0.04;
          P_TargetBuy1  =                 0.96;
          Q_TargetBuy0  =                 0.04;
          Q_TargetBuy1  =                 0.96;
          V_TargetBuy0  =     0.14814814814814;
          V_TargetBuy1  =     0.85185185185185;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                   94;
    _LEAF_  =                    1;
    P_TargetBuy0  =     0.65809768637532;
    P_TargetBuy1  =     0.34190231362467;
    Q_TargetBuy0  =     0.65809768637532;
    Q_TargetBuy1  =     0.34190231362467;
    V_TargetBuy0  =     0.67051070840197;
    V_TargetBuy1  =     0.32948929159802;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  END;
ELSE DO;
  _NODE_  =                   57;
  _LEAF_  =                    6;
  P_TargetBuy0  =     0.84062917346787;
  P_TargetBuy1  =     0.15937082653212;
  Q_TargetBuy0  =     0.84062917346787;
  Q_TargetBuy1  =     0.15937082653212;
  V_TargetBuy0  =     0.84559855624624;
  V_TargetBuy1  =     0.15440144375375;
  I_TargetBuy  = '0' ;
  U_TargetBuy  =                    0;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

