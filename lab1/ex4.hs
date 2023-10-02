sqr :: Double -> Double
sqr x = x * x

vec2DLen :: (Double, Double) -> Double
vec2DLen (x, y) = sqrt (x^2 + y^2)

vec3DLen :: (Double, Double, Double) -> Double
vec3DLen (x,y,z) = sqrt(x^2 + y^2 + z^2)

swap :: (Int, Char) -> (Char, Int)
swap (a,b) = (b,a)

threeEqual :: (Int, Int, Int) -> Bool
threeEqual (x, y, z) = x == y && y == z

-- triangleArea :: Num a => (a,a,a) -> a
-- triangleArea (a,b,c) = sqrt(0.5*(a+b+c)*0.5*(b+c-a)*0.5*(a+c-b)*0.5*(a+b-c))
triangleArea :: Floating a => (a, a, a) -> a
triangleArea (a, b, c) = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2