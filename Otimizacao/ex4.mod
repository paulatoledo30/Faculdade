#   variaveis
    var senador {i} = Senadores elegíveis para fazer parte de uma comissão, i = senadores 1,2,3,4,5,6,7,8,9,10

#   Funcao objetiva
    Minimize : senador{1} + senador{2} + senador{3} + senador{4} + senador{5} + senador{6} + senador{7} + senador{8} + senador{9} + senador{10}

# Restricoes
    #   Grupos 
    Senadores do Sul : senador{1} + senador{2} + senador{3} + senador{4} + senador{5} >= 1;
    Senadores do Norte : senador{6} + senador{7} + senador{8} + senador{9} + senador{10} >= 1;
    Liberais : senador{2} + senador{3} + senador{8} + senador{9} >= 1;
    Conservadores : senador{5} + senador{6} + senador{7} >= 1;
    Democratas : senador{3} + senador{4} + senador{6} + senador{7} + senador{9} >= 1;
    Republicanos : senador{1} + senador{8} + senador{10} >= 1;
    #   Brigas
    EvitarBriga1_9 : senador{1} + senador{9}
<= 1;
    EvitarBriga2_6_7 : senador{1} + senador{8} + senador{10}
<= 1;
    
    # Binarios
    Binario : X{i} = {0,1}
    NaoNegatividadeVariaveis : senador{i} >
= 0 e inteiros