  DO $$
 DECLARE
 a numeric(7,4);
 b numeric(7,4);
 x numeric(7,4);
 y numeric(7,4);
 x1 numeric(7,4);
 y1 numeric(7,4);
 n integer;
 v varchar;
 BEGIN
 a := 1.4;
 b := 0.3;
 x := 0.0;
 y := 0.0;
 x1 := 0.0;
 y1 := 0.0;
 n := 1;
 WHILE(-1.4 < x) AND(x < 1.4) LOOP
 
 --cálculo da fórmula
 x := 1 -a * x1 * x1 + y1;
 y := b * x1;
 RAISE NOTICE ' , % , % , %', n, x, y;
 x1 := x;
 y1 := y;
 
 --condição de parada, caso x se mantenha dentro do intervalo
 EXIT WHEN n = 1000;
 n := n + 1;
 END LOOP;
 END $$;