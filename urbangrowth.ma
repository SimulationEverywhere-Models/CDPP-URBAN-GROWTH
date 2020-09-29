[top]
components : urbangrowth


[urbangrowth]
type : cell
dim : (20,20,2)
delay : INERTIAL
defaultDelayTime : 50
border : wrapped
initialvalue : 5
initialCellsValue : urbangrowth.val
zone : Landuse { (0,0,0)..(19,19,0) }
zone : GeoPopu { (0,0,1)..(19,19,1) }
%neighborhood
neighbors :  		              urban_growth(-1,0,0)  
neighbors : urban_growth(0,-1,0)  urban_growth(0,0,0)  urban_growth(0,1,0)
neighbors :   		              urban_growth(1,0,0)  
neighbors :  		              urban_growth(-1,0,1) 
neighbors : urban_growth(0,-1,1)  urban_growth(0,0,1)  urban_growth(0,1,1)
neighbors :  		              urban_growth(1,0,1)  
[Landuse]
rule : 6 100 {(0,0,0)=5 and ((-1,0,1)=2 and (0,-1,1)=2 and (0,1,1)=2)}
rule : 6 100 {(0,0,0)=5 and ((-1,0,1)=2 and (0,-1,1)=2 and (1,0,1)=2)}
rule : 6 100 {(0,0,0)=5 and ((-1,0,1)=2 and (1,0,1)=2 and (0,1,1)=2)}
rule : 6 100 {(0,0,0)=5 and ((0,-1,1)=2 and (1,0,1)=2 and (0,1,1)=2)}
%5 is forest 6 is nonforest 7 is urban
rule : 6 100 {(0,0,0)=5 and ((-1,0,1)=3 and (0,-1,1)=3 and (0,1,1)=3)}
rule : 6 100 {(0,0,0)=5 and ((-1,0,1)=3 and (0,-1,1)=3 and (1,0,1)=3)}
rule : 6 100 {(0,0,0)=5 and ((-1,0,1)=3 and (1,0,1)=3 and (0,1,1)=3)}
rule : 6 100 {(0,0,0)=5 and ((0,-1,1)=3 and (1,0,1)=3 and (0,1,1)=3)}
%
rule : 7 100 {(0,0,0)=6 and ((-1,0,1)=2 and (0,-1,1)=2 and (0,1,1)=2)}
rule : 7 100 {(0,0,0)=6 and ((-1,0,1)=2 and (0,-1,1)=2 and (1,0,1)=2)}
rule : 7 100 {(0,0,0)=6 and ((-1,0,1)=2 and (1,0,1)=2 and (0,1,1)=2)}
rule : 7 100 {(0,0,0)=6 and ((0,-1,1)=2 and (1,0,1)=2 and (0,1,1)=2)}
%
rule : 7 100 {(0,0,0)=6 and ((-1,0,1)=3 and (0,-1,1)=3 and (0,1,1)=3)}
rule : 7 100 {(0,0,0)=6 and ((-1,0,1)=3 and (0,-1,1)=3 and (1,0,1)=3)}
rule : 7 100 {(0,0,0)=6 and ((-1,0,1)=3 and (1,0,1)=3 and (0,1,1)=3)}
rule : 7 100 {(0,0,0)=6 and ((0,-1,1)=3 and (1,0,1)=3 and (0,1,1)=3)}
%
rule : {(0,0,0)} 100 {t}

[GeoPopu]
rule : 3 100 {(0,0,0)=4 and ((-1,0,0)=3 and (0,-1,0)=3 ) }
rule : 3 100 {(0,0,0)=4 and ((-1,0,0)=3 and (1,0,0)=3) }
rule : 3 100 {(0,0,0)=4 and ((-1,0,0)=3 and (0,1,0)=3) }
rule : 3 100 {(0,0,0)=4 and ((0,-1,0)=3 and (0,1,0)=3) }
rule : 3 100 {(0,0,0)=4 and ((0,-1,0)=3 and (1,0,0)=3) }
rule : 3 100 {(0,0,0)=4 and ((1,0,0)=3 and (0,1,0)=3) }
%
rule : 2 100 {(0,0,0)=1 and ((-1,0,0)=2 and (0,-1,0)=2) }
rule : 2 100 {(0,0,0)=1 and ((-1,0,0)=2 and (1,0,0)=2) }
rule : 2 100 {(0,0,0)=1 and ((-1,0,0)=2 and (0,1,0)=2) }
rule : 2 100 {(0,0,0)=1 and ((0,-1,0)=2 and (0,1,0)=2) }
rule : 2 100 {(0,0,0)=1 and ((0,-1,0)=2 and (1,0,0)=2) }
rule : 2 100 {(0,0,0)=1 and ((1,0,0)=2 and (0,1,0)=2) }
%
rule : 2 100 {(0,0,0)=1 and ((-1,0,0)=3 and (0,-1,0)=3 ) }
rule : 2 100 {(0,0,0)=1 and ((-1,0,0)=3 and (1,0,0)=3) }
rule : 2 100 {(0,0,0)=1 and ((-1,0,0)=3 and (0,1,0)=3) }
rule : 2 100 {(0,0,0)=1 and ((0,-1,0)=3 and (0,1,0)=3) }
rule : 2 100 {(0,0,0)=1 and ((0,-1,0)=3 and (1,0,0)=3) }
rule : 2 100 {(0,0,0)=1 and ((1,0,0)=3 and (0,1,0)=3) }
%
rule : 2 100 {(0,0,0)=3 and ((-1,0,0)=2 and (0,-1,0)=2) }
rule : 2 100 {(0,0,0)=3 and ((-1,0,0)=2 and (1,0,0)=2) }
rule : 2 100 {(0,0,0)=3 and ((-1,0,0)=2 and (0,1,0)=2) }
rule : 2 100 {(0,0,0)=3 and ((0,-1,0)=2 and (0,1,0)=2) }
rule : 2 100 {(0,0,0)=3 and ((0,-1,0)=2 and (1,0,0)=2) }
rule : 2 100 {(0,0,0)=3 and ((1,0,0)=2 and (0,1,0)=2) }
rule : {(0,0,0)} 100 {t}




