import Data.Char


newtype FirstName = FirstName String
formatFstName :: FirstName -> String
formatFstName (FirstName s) = case s of
    (x:xs) -> toUpper x : map toLower xs
    [] -> []


-- definiowanie typow
-- rekurcja strkturalna - struktura drzewiasta
-- instacja klas typow


polarToCartesian :: Floating a => (a,a) -> (a,a)
polarToCartesian (r,phi) = (r * cos phi, r * sin phi)


newtype CartesianCoord'' a = MkCartesianCoord'' (a,a)
newtype PolarCoord'' a = MkPolarCoord'' (a,a)

polarToCartesian'' :: Floating a => PolarCoord'' a -> CartesianCoord'' a
polarToCartesian'' (MkPolarCoord'' (r,phi)) = MkCartesianCoord'' (r * cos phi, r * sin phi)