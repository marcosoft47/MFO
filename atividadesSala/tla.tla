-------------- MODULE ExerciciosAula1 ----------

quadrado(S) == { x*x: x \in S}

testeQuadrado == quadrado((1,2,3,4))

pares(S) == {x \in S: x % 2 = 0}

testePares == pares((1,2,3,4))