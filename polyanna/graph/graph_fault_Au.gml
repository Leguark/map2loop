# --- COLUMN NAMES IN CSV DATA FILES: -------------------------------------------------------------
# OBJECT COORDINATES              =WKT
# FAULT: ID                       =OBJECTID
# FAULT: FEATURE                  =FEATURE
# POLYGON: ID                     =OBJECTID
# POLYGON: LEVEL1 NAME            =PARENTCODE
# POLYGON: LEVEL2 NAME            =GROUP_
# POLYGON: MIN AGE                =MIN_AGE_MA
# POLYGON: MAX AGE                =MAX_AGE_MA
# POLYGON: CODE                   =CODE
# POLYGON: DESCRIPTION            =DESCRIPTN
# POLYGON: ROCKTYPE1              =ROCKTYPE1
# POLYGON: ROCKTYPE2              =ROCKTYPE2
# DEPOSIT: SITE CODE              =site_code
# DEPOSIT: SITE TYPE              =site_type_
# DEPOSIT: SITE COMMODITY         =site_commo
# --- SOME CONSTANTS: ----------------------------------------------------------------------------
# FAULT AXIAL FEATURE NAME        =Fold axial trace
# SILL UNIT DESCRIPTION CONTAINS  =sill
# IGNEOUS ROCKTYPE CONTAINS                           =intrusive
# VOLCANIC ROCKTYPE CONTAINS                          =volcanic
# IGNORE DEPOSITS WITH SITE TYPE                      =Infrastructure
# Intersect Contact With Fault: angle epsilon (deg)   =1.0
# Intersect Contact With Fault: distance epsilon (m)  =15.0
# Distance buffer (fault stops on another fault) (m)  =20.0
# Distance buffer (point on contact) (m)              =500.0
# Intersect polygons distance buffer (for bad maps)   =3.
# ------------------------------------------------------------------------------------------------
# Path to the output data folder                      =../polyanna/graph/
# Path to geology data file                           =../polyanna/tmp/geology_file.csv
# Path to faults data file                            =../polyanna/tmp/fault_file.csv
# Path to mineral deposits data file                  =../polyanna/tmp/mindep_file.csv
# ------------------------------------------------------------------------------------------------
# Clipping window X1 Y1 X2 Y2 (zeros for infinite)    =278190 7419758 576400 7723202
# Min length fraction for strat/fault graphs          =0.0
# Graph edge width categories (three doubles)         =2000. 20000. 200000.
# Graph edge direction (0-min age, 1-max age, 2-avg)  =2
# Deposit names for adding info on the graph          =Fe,Cu,Au,NONE
# Partial graph polygon ID                            =32
# Partial graph depth                                 =4
# Map subregion size dx, dy [m] (zeros for full map)  =0. 0.
# ------------------------------------------------------------------------------------------------
Creator "map2model-cpp"
graph [
  hierarchic 1
  directed 1
  node [
    id -14
    LabelGraphics [ text "Canning Basin" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -29
    LabelGraphics [ text "Collier Basin" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -1
    LabelGraphics [ text "Fortescue Group" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -8
    LabelGraphics [ text "Gorge Creek Group" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -9
    LabelGraphics [ text "Gregory Range Suite" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -11
    LabelGraphics [ text "Hamersley Group" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -15
    LabelGraphics [ text "Kalkarindji Suite" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -26
    LabelGraphics [ text "Lamil Group of Yeneena Basin" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -49
    LabelGraphics [ text "OCallaghans Supersuite" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -22
    LabelGraphics [ text "Officer Basin" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -12
    LabelGraphics [ text "Pilbara Craton Inlier" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -54
    LabelGraphics [ text "Tabletop Domain Rudall Complex" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -51
    LabelGraphics [ text "Talbot and Connaughton Domains Rudall Complex" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id -44
    LabelGraphics [ text "Throssell Range Group of Yeneena Basin" anchor "n" fontStyle "bold" fontSize 14 ]
    isGroup 1
    graphics [ fill "#FAFAFA" ]
  ]
  node [
    id 58
    LabelGraphics [ text "A-FO-od" fontSize 14 ]
    gid -1
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 55
    LabelGraphics [ text "A-FOh-xs-f[1]" fontSize 14 ]
    gid -1
    graphics [ fill "#f7fff7" w 150 ]
  ]
  node [
    id 56
    LabelGraphics [ text "A-FOj-s" fontSize 14 ]
    gid -1
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 31
    LabelGraphics [ text "A-FOj-xs-b" fontSize 14 ]
    gid -1
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 26
    LabelGraphics [ text "A-FOk-b" fontSize 14 ]
    gid -1
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 23
    LabelGraphics [ text "A-FOm-b" fontSize 14 ]
    gid -1
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 21
    LabelGraphics [ text "A-FOt-xb-k" fontSize 14 ]
    gid -1
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 53
    LabelGraphics [ text "A-GCe-ca" fontSize 14 ]
    gid -8
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 54
    LabelGraphics [ text "A-GR-gv" fontSize 14 ]
    gid -9
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 50
    LabelGraphics [ text "A-GR-mg" fontSize 14 ]
    gid -9
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 25
    LabelGraphics [ text "A-HAc-kds" fontSize 14 ]
    gid -11
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 27
    LabelGraphics [ text "A-g-PBK" fontSize 14 ]
    gid -12
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 22
    LabelGraphics [ text "AP_-_pj-ccx" fontSize 14 ]
    gid -11
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 10
    LabelGraphics [ text "CP-_pa-sepg[2]" fontSize 14 ]
    gid -14
    graphics [ fill "#eeffee" w 150 ]
  ]
  node [
    id 6
    LabelGraphics [ text "E-_dv-od" fontSize 14 ]
    gid -15
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 19
    LabelGraphics [ text "K-_an-st[10]" fontSize 14 ]
    gid -14
    graphics [ fill "#a8ffa8" w 150 ]
  ]
  node [
    id 2
    LabelGraphics [ text "K-_ca-sp" fontSize 14 ]
    gid -14
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 0
    LabelGraphics [ text "K-_fz-st[8]" fontSize 14 ]
    gid -14
    graphics [ fill "#b9ffb9" w 150 ]
  ]
  node [
    id 18
    LabelGraphics [ text "P-LI-s" fontSize 14 ]
    gid -14
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 17
    LabelGraphics [ text "P-_no-sf" fontSize 14 ]
    gid -14
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 16
    LabelGraphics [ text "P-_po-st" fontSize 14 ]
    gid -14
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 48
    LabelGraphics [ text "P_-BU-xs-k" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 28
    LabelGraphics [ text "P_-DIm-st" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 37
    LabelGraphics [ text "P_-DIt-ss" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 33
    LabelGraphics [ text "P_-DIw-ss" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 1
    LabelGraphics [ text "P_-LAm-stq[29]" fontSize 14 ]
    gid -26
    graphics [ fill "#00ff00" w 150 ]
  ]
  node [
    id 13
    LabelGraphics [ text "P_-LAp-kd[9]" fontSize 14 ]
    gid -26
    graphics [ fill "#b0ffb0" w 150 ]
  ]
  node [
    id 12
    LabelGraphics [ text "P_-LAw-stq" fontSize 14 ]
    gid -26
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 15
    LabelGraphics [ text "P_-MN-s" fontSize 14 ]
    gid -29
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 44
    LabelGraphics [ text "P_-MNw-sf" fontSize 14 ]
    gid -29
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 32
    LabelGraphics [ text "P_-SUc-sg" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 34
    LabelGraphics [ text "P_-SUm-ss" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 42
    LabelGraphics [ text "P_-SUw-ss" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 43
    LabelGraphics [ text "P_-TA-sk" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 51
    LabelGraphics [ text "P_-TAa-kt" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 39
    LabelGraphics [ text "P_-TAb-st" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 38
    LabelGraphics [ text "P_-TAc-sg" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 47
    LabelGraphics [ text "P_-TAg-sg" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 29
    LabelGraphics [ text "P_-TAk-sp[1]" fontSize 14 ]
    gid -22
    graphics [ fill "#f7fff7" w 150 ]
  ]
  node [
    id 35
    LabelGraphics [ text "P_-TAn-kt" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 40
    LabelGraphics [ text "P_-TAo-ssqv" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 46
    LabelGraphics [ text "P_-TAw-ktsv" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 45
    LabelGraphics [ text "P_-TAy-sk" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 41
    LabelGraphics [ text "P_-TH-xs-kx" fontSize 14 ]
    gid -44
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 11
    LabelGraphics [ text "P_-THb-shh" fontSize 14 ]
    gid -44
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 9
    LabelGraphics [ text "P_-THc-stq[3]" fontSize 14 ]
    gid -44
    graphics [ fill "#e5ffe5" w 150 ]
  ]
  node [
    id 4
    LabelGraphics [ text "P_-THt-sta" fontSize 14 ]
    gid -44
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 36
    LabelGraphics [ text "P_-_bo-sepg" fontSize 14 ]
    gid -22
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 3
    LabelGraphics [ text "P_-_cr-g" fontSize 14 ]
    gid -49
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 30
    LabelGraphics [ text "P_-_is-kx[3]" fontSize 14 ]
    gid -44
    graphics [ fill "#e5ffe5" w 150 ]
  ]
  node [
    id 14
    LabelGraphics [ text "P_-_ya-mls[2]" fontSize 14 ]
    gid -51
    graphics [ fill "#eeffee" w 150 ]
  ]
  node [
    id 7
    LabelGraphics [ text "P_-md-PTRB[2]" fontSize 14 ]
    gid -51
    graphics [ fill "#eeffee" w 150 ]
  ]
  node [
    id 8
    LabelGraphics [ text "P_-mgnu-PTRO" fontSize 14 ]
    gid -51
    graphics [ fill "#ffffff" w 150 ]
  ]
  node [
    id 20
    LabelGraphics [ text "P_-xg-mn-PTRT[2]" fontSize 14 ]
    gid -54
    graphics [ fill "#eeffee" w 150 ]
  ]
  node [
    id 24
    LabelGraphics [ text "P_-xmb-md-PTRC[3]" fontSize 14 ]
    gid -51
    graphics [ fill "#e5ffe5" w 150 ]
  ]
  edge [
    source 0
    target 19
    graphics [ style "line" arrow "both" width 7 fill "#000bf3" ]
    LabelGraphics [ text "2" fill "#eeffee" fontSize 14 fontStyle "bold" model "centered" position "center" outline "#000000"]
  ]
  edge [
    source 2
    target 17
    graphics [ style "line" arrow "last" width 5 fill "#008c72" ]
  ]
  edge [
    source 3
    target 13
    graphics [ style "line" arrow "last" width 5 fill "#002cd2" ]
  ]
  edge [
    source 4
    target 9
    graphics [ style "line" arrow "both" width 5 fill "#0059a5" ]
  ]
  edge [
    source 6
    target 25
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 8
    target 7
    graphics [ style "line" arrow "last" width 7 fill "#00aa54" ]
  ]
  edge [
    source 9
    target 7
    graphics [ style "line" arrow "last" width 5 fill "#00a25c" ]
  ]
  edge [
    source 9
    target 8
    graphics [ style "line" arrow "last" width 7 fill "#00c03e" ]
  ]
  edge [
    source 9
    target 24
    graphics [ style "line" arrow "last" width 3 fill "#4faf00" ]
  ]
  edge [
    source 9
    target 43
    graphics [ style "line" arrow "last" width 5 fill "#003dc1" ]
  ]
  edge [
    source 10
    target 8
    graphics [ style "line" arrow "last" width 5 fill "#0002fc" ]
  ]
  edge [
    source 11
    target 24
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 8
    target 14
    graphics [ style "line" arrow "last" width 5 fill "#001de1" ]
  ]
  edge [
    source 6
    target 22
    graphics [ style "line" arrow "last" width 5 fill "#36c800" ]
  ]
  edge [
    source 6
    target 15
    graphics [ style "line" arrow "last" width 5 fill "#000cf2" ]
  ]
  edge [
    source 12
    target 13
    graphics [ style "line" arrow "both" width 7 fill "#00728c" ]
  ]
  edge [
    source 13
    target 30
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 7
    graphics [ style "line" arrow "last" width 3 fill "#08f600" ]
  ]
  edge [
    source 15
    target 22
    graphics [ style "line" arrow "last" width 7 fill "#006b93" ]
  ]
  edge [
    source 15
    target 25
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 9
    target 11
    graphics [ style "line" arrow "both" width 7 fill "#0030ce" ]
  ]
  edge [
    source 18
    target 17
    graphics [ style "line" arrow "last" width 5 fill "#002cd2" ]
  ]
  edge [
    source 17
    target 9
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 18
    target 9
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 18
    target 10
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 18
    target 16
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 18
    target 30
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 18
    target 11
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 29
    target 20
    graphics [ style "line" arrow "last" width 5 fill "#00aa54" ]
  ]
  edge [
    source 21
    target 27
    graphics [ style "line" arrow "last" width 3 fill "#001ee0" ]
  ]
  edge [
    source 10
    target 22
    graphics [ style "line" arrow "last" width 5 fill "#0004fa" ]
  ]
  edge [
    source 22
    target 25
    graphics [ style "line" arrow "last" width 7 fill "#0010ee" ]
  ]
  edge [
    source 44
    target 22
    graphics [ style "line" arrow "last" width 5 fill "#004faf" ]
  ]
  edge [
    source 15
    target 27
    graphics [ style "line" arrow "last" width 5 fill "#006797" ]
  ]
  edge [
    source 15
    target 21
    graphics [ style "line" arrow "last" width 5 fill "#0023db" ]
  ]
  edge [
    source 37
    target 15
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 46
    target 15
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 34
    target 15
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 10
    target 15
    graphics [ style "line" arrow "last" width 5 fill "#007688" ]
  ]
  edge [
    source 39
    target 15
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 15
    target 23
    graphics [ style "line" arrow "last" width 5 fill "#f80600" ]
  ]
  edge [
    source 10
    target 23
    graphics [ style "line" arrow "last" width 5 fill "#0009f5" ]
  ]
  edge [
    source 31
    target 23
    graphics [ style "line" arrow "last" width 7 fill "#0034ca" ]
  ]
  edge [
    source 23
    target 26
    graphics [ style "line" arrow "last" width 5 fill "#008678" ]
    LabelGraphics [ text "1" fill "#f7fff7" fontSize 14 fontStyle "bold" model "centered" position "center" outline "#000000"]
  ]
  edge [
    source 25
    target 23
    graphics [ style "line" arrow "last" width 5 fill "#7b8300" ]
  ]
  edge [
    source 22
    target 23
    graphics [ style "line" arrow "last" width 5 fill "#de2000" ]
  ]
  edge [
    source 24
    target 7
    graphics [ style "line" arrow "both" width 3 fill "#ff0000" ]
  ]
  edge [
    source 7
    target 14
    graphics [ style "line" arrow "both" width 5 fill "#002ed0" ]
  ]
  edge [
    source 10
    target 7
    graphics [ style "line" arrow "last" width 5 fill "#001de1" ]
  ]
  edge [
    source 43
    target 7
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 26
    target 27
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 8
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 38
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 43
    graphics [ style "line" arrow "last" width 7 fill "#00bb43" ]
  ]
  edge [
    source 11
    target 47
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 39
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 46
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 11
    target 45
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 28
    target 34
    graphics [ style "line" arrow "last" width 5 fill "#25d900" ]
  ]
  edge [
    source 28
    target 48
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 29
    target 24
    graphics [ style "line" arrow "last" width 5 fill "#00ed11" ]
  ]
  edge [
    source 29
    target 43
    graphics [ style "line" arrow "both" width 3 fill "#ff0000" ]
  ]
  edge [
    source 10
    target 9
    graphics [ style "line" arrow "last" width 7 fill "#0021dd" ]
    LabelGraphics [ text "1" fill "#f7fff7" fontSize 14 fontStyle "bold" model "centered" position "center" outline "#000000"]
  ]
  edge [
    source 1
    target 30
    graphics [ style "line" arrow "last" width 5 fill "#0043bb" ]
    LabelGraphics [ text "5" fill "#d4ffd4" fontSize 14 fontStyle "bold" model "centered" position "center" outline "#000000"]
  ]
  edge [
    source 16
    target 9
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 10
    target 30
    graphics [ style "line" arrow "last" width 7 fill "#0008f6" ]
    LabelGraphics [ text "1" fill "#f7fff7" fontSize 14 fontStyle "bold" model "centered" position "center" outline "#000000"]
  ]
  edge [
    source 20
    target 24
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 41
    target 24
    graphics [ style "line" arrow "last" width 5 fill "#28d600" ]
  ]
  edge [
    source 43
    target 24
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 10
    target 26
    graphics [ style "line" arrow "last" width 3 fill "#009e60" ]
  ]
  edge [
    source 10
    target 25
    graphics [ style "line" arrow "last" width 5 fill "#0009f5" ]
  ]
  edge [
    source 33
    target 37
    graphics [ style "line" arrow "both" width 5 fill "#58a600" ]
  ]
  edge [
    source 33
    target 40
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 33
    target 43
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 36
    target 34
    graphics [ style "line" arrow "last" width 5 fill "#003fbf" ]
  ]
  edge [
    source 35
    target 43
    graphics [ style "line" arrow "both" width 1 fill "#ff0000" ]
  ]
  edge [
    source 8
    target 24
    graphics [ style "line" arrow "last" width 7 fill "#00946a" ]
  ]
  edge [
    source 11
    target 20
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 16
    target 20
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 36
    target 48
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 37
    target 36
    graphics [ style "line" arrow "last" width 5 fill "#00d22c" ]
  ]
  edge [
    source 37
    target 43
    graphics [ style "line" arrow "last" width 5 fill "#00ca34" ]
  ]
  edge [
    source 25
    target 31
    graphics [ style "line" arrow "last" width 5 fill "#0026d8" ]
  ]
  edge [
    source 22
    target 31
    graphics [ style "line" arrow "last" width 5 fill "#009965" ]
  ]
  edge [
    source 39
    target 47
    graphics [ style "line" arrow "both" width 3 fill "#c83600" ]
  ]
  edge [
    source 38
    target 39
    graphics [ style "line" arrow "both" width 1 fill "#ff0000" ]
  ]
  edge [
    source 9
    target 45
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 9
    target 39
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 43
    target 48
    graphics [ style "line" arrow "last" width 5 fill "#007589" ]
  ]
  edge [
    source 37
    target 45
    graphics [ style "line" arrow "last" width 3 fill "#00bd41" ]
  ]
  edge [
    source 37
    target 34
    graphics [ style "line" arrow "last" width 5 fill "#4bb300" ]
  ]
  edge [
    source 46
    target 44
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 47
    target 44
    graphics [ style "line" arrow "last" width 5 fill "#0004fa" ]
  ]
  edge [
    source 44
    target 23
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 39
    target 44
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 10
    target 47
    graphics [ style "line" arrow "last" width 5 fill "#003bc3" ]
  ]
  edge [
    source 10
    target 39
    graphics [ style "line" arrow "last" width 3 fill "#008678" ]
  ]
  edge [
    source 46
    target 47
    graphics [ style "line" arrow "both" width 5 fill "#000bf3" ]
  ]
  edge [
    source 46
    target 31
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 46
    target 23
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 10
    target 6
    graphics [ style "line" arrow "last" width 3 fill "#699500" ]
  ]
  edge [
    source 6
    target 44
    graphics [ style "line" arrow "last" width 3 fill "#002ed0" ]
  ]
  edge [
    source 51
    target 23
    graphics [ style "line" arrow "last" width 3 fill "#6b9300" ]
  ]
  edge [
    source 44
    target 25
    graphics [ style "line" arrow "last" width 3 fill "#8d7100" ]
  ]
  edge [
    source 47
    target 26
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 9
    target 47
    graphics [ style "line" arrow "last" width 5 fill "#ff0000" ]
  ]
  edge [
    source 26
    target 50
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 46
    target 26
    graphics [ style "line" arrow "last" width 3 fill "#1ce200" ]
  ]
  edge [
    source 10
    target 44
    graphics [ style "line" arrow "last" width 3 fill "#0026d8" ]
  ]
  edge [
    source 23
    target 55
    graphics [ style "line" arrow "last" width 3 fill "#02fc00" ]
  ]
  edge [
    source 31
    target 53
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 31
    target 55
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 26
    target 55
    graphics [ style "line" arrow "last" width 7 fill "#1be300" ]
  ]
  edge [
    source 22
    target 55
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 55
    target 54
    graphics [ style "line" arrow "last" width 5 fill "#007886" ]
  ]
  edge [
    source 25
    target 56
    graphics [ style "line" arrow "last" width 5 fill "#0005f9" ]
  ]
  edge [
    source 50
    target 54
    graphics [ style "line" arrow "last" width 5 fill "#7c8200" ]
  ]
  edge [
    source 26
    target 54
    graphics [ style "line" arrow "last" width 1 fill "#ff0000" ]
  ]
  edge [
    source 55
    target 50
    graphics [ style "line" arrow "last" width 5 fill "#08f600" ]
  ]
  edge [
    source 58
    target 50
    graphics [ style "line" arrow "last" width 3 fill "#ff0000" ]
  ]
  edge [
    source 22
    target 56
    graphics [ style "line" arrow "last" width 3 fill "#00708e" ]
  ]
  edge [
    source 4
    target 24
    graphics [ style "line" arrow "last" width 5 fill "#002ed0" ]
  ]
  edge [
    source 17
    target 10
    graphics [ style "line" arrow "last" width 1 fill "#007d81" ]
  ]
  edge [
    source 15
    target 31
    graphics [ style "line" arrow "last" width 3 fill "#004ab4" ]
  ]
  edge [
    source 32
    target 15
    graphics [ style "line" arrow "last" width 5 fill "#e51900" ]
  ]
  edge [
    source 28
    target 36
    graphics [ style "line" arrow "last" width 5 fill "#00cd31" ]
  ]
  edge [
    source 28
    target 37
    graphics [ style "line" arrow "both" width 5 fill "#00946a" ]
  ]
  edge [
    source 41
    target 29
    graphics [ style "line" arrow "last" width 5 fill "#00c539" ]
  ]
  edge [
    source 29
    target 48
    graphics [ style "line" arrow "last" width 5 fill "#f60800" ]
  ]
  edge [
    source 9
    target 14
    graphics [ style "line" arrow "last" width 3 fill "#00b549" ]
  ]
  edge [
    source 9
    target 20
    graphics [ style "line" arrow "last" width 5 fill "#00ef0f" ]
  ]
  edge [
    source 20
    target 8
    graphics [ style "line" arrow "last" width 5 fill "#cb3300" ]
  ]
  edge [
    source 32
    target 42
    graphics [ style "line" arrow "both" width 3 fill "#00b648" ]
  ]
  edge [
    source 33
    target 38
    graphics [ style "line" arrow "last" width 3 fill "#f60800" ]
  ]
  edge [
    source 33
    target 34
    graphics [ style "line" arrow "last" width 5 fill "#0022dc" ]
  ]
  edge [
    source 16
    target 11
    graphics [ style "line" arrow "last" width 3 fill "#005aa4" ]
  ]
  edge [
    source 37
    target 48
    graphics [ style "line" arrow "last" width 5 fill "#f90500" ]
  ]
  edge [
    source 40
    target 43
    graphics [ style "line" arrow "both" width 5 fill "#0031cd" ]
  ]
  edge [
    source 37
    target 38
    graphics [ style "line" arrow "last" width 5 fill "#00c13d" ]
  ]
  edge [
    source 38
    target 45
    graphics [ style "line" arrow "both" width 5 fill "#0056a8" ]
  ]
  edge [
    source 44
    target 50
    graphics [ style "line" arrow "last" width 3 fill "#986600" ]
  ]
  edge [
    source 47
    target 31
    graphics [ style "line" arrow "last" width 3 fill "#39c500" ]
  ]
  edge [
    source 34
    target 43
    graphics [ style "line" arrow "last" width 3 fill "#6f8f00" ]
  ]
  edge [
    source 23
    target 50
    graphics [ style "line" arrow "last" width 3 fill "#00c638" ]
  ]
  edge [
    source 31
    target 26
    graphics [ style "line" arrow "last" width 3 fill "#fe0000" ]
  ]
  edge [
    source 51
    target 26
    graphics [ style "line" arrow "last" width 3 fill "#00fc02" ]
  ]
  edge [
    source 22
    target 53
    graphics [ style "line" arrow "last" width 3 fill "#b44a00" ]
  ]
  edge [
    source 22
    target 26
    graphics [ style "line" arrow "last" width 3 fill "#db2300" ]
  ]
  edge [
    source 9
    target 46
    graphics [ style "line" arrow "last" width 3 fill "#f60800" ]
  ]
]