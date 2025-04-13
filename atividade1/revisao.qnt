module revisao{
    
    // Escreva um operador que recebe um conjunto de inteiros positivos e retorna o maior valor.
    pure def atv1(x: Set[int]): int = {
        x.fold(0, (acc, i) => if (i > acc) i else acc)
    }

    // Dado um conjunto de records do tipo { nome: str, idade: int }, escreva um operador que 
    // recebe esse conjunto e retorna a diferença de idade entre o mais velho e o mais novo.
    pure def atv2(x: Set[{nome: str, idade: int}]): int = {
        val menor  = x.fold(9999, (acc, i) => if (i.idade < acc) i.idade else acc);
        val maior  = x.fold(0, (acc, i) => if (i.idade > acc) i.idade else acc);
        maior - menor
    }

    // Defina um valor que contenha todos os conjuntos possíveis com valores inteiros de 1 a 10,
    // com tamanho maior que 2 e menor que 5.
    pure def atv3(): Set[Set[int]] = {
        filter(1.to(10),n => n > 2 and n < 5).powerset()
    }

    // Escreva um operador que calcule o fatorial de um número. Lembre-se que recursão não é permitida.
    pure def atv4(x: int): int ={
        fold(1.to(x), 1, (acc, i) => acc * i)
    }

    // Escreva um operador que recebe uma lista e retorna um mapa onde as chaves são os elementos da lista,
    // e os valores são inteiros representando a quantidade de ocorrências daquele elemento na lista.
    pure def atv5(s)={
        
    }

}