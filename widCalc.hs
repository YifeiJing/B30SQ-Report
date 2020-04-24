epsilon_r = 4.3
thickness = 1.6
-- calcA :: (Float a) => a -> a
calcA z = z / 60 * (sqrt ((epsilon_r + 1) / 2.0)) + (epsilon_r - 1) / (epsilon_r + 1) * (0.23 + 0.11 / epsilon_r)
-- calcB :: (Float a) => a -> a
calcB z = 377 * pi / 2.0 / z / (sqrt epsilon_r)
-- w_A :: (Float a) => a -> a
w_A a = 8 * thickness * (exp a) / (exp (2 * a - 2))
-- w_B :: (Float a) => a -> a
w_B b = 2 * thickness / pi * (b - 1 - (log (2 * b - 1)) + (epsilon_r - 1) / (2 * epsilon_r) * ( (log (b - 1)) + 0.39 - 0.61 / epsilon_r) )
-- w :: (Float a) => a -> a
w z = if (w_A (calcA z)) < 2 * thickness
        then w_A (calcA z)
        else w_B (calcB z)
