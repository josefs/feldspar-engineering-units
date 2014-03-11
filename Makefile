Feldspar/EngineeringUnits.hs: engineering-units/Data/EngineeringUnits.hs
	sed 's/Double/(Data Double)/' $< | sed '/import Data.List/i\import Feldspar (Data)\nimport qualified Feldspar as F' | sed 's/ deriving (Show, Eq, Ord)//' | sed 's/Value pi/Value F.pi/' > $@
