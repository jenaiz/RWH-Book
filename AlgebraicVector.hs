-- ch03 AlgebraicVector.hs


-- x and y coordinates or lengths. 
data Cartesian2D = Cartesian2D Double Double
					deriving (Eq, Show)

-- Angle and distance (magnitude). 
data Polar2D = Polar2D Double Double
				deriving (Eq, Show)

polar1 = Polar2D 2.0 3.4
polar2 = Polar2D 2.0 3.4

polar3 = Polar2D 2.0 3.39

