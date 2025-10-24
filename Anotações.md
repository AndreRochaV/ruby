# Conceitos Gerais
+ Blocos de métodos começam e terminam com **def** e **end**;
  + Blocos if, elsif, while também são encerrados em **end**;
+ Um método sem declaração explícita de retorno, devolve, por padrão, o resultado da última expressão avaliada nele;
+ O valor nulo (nil) é um objeto que representa nada;
+ Símbolos são valores imutáveis declarados como `:simbolo` geralmente usados como chaves em Hashes;
+ A função gets é usada para receber input, por padrão da linha de comando, mas pode ser usada em conjunto com outras fontes;
+ O mesmo para a função puts que escreve para a linha de comando, por padrão, mas pode ser usada para escrever para outros dispositivos;
+ Comentários em ruby são prefixados por um # (Jogo da velha);
  + Eles são ignorados, no geral, entretanto diretivas como `# frozen_string_literal: true` e `encoding: true` podem ser usadas no início do arquivo, sem indentação, para configurar comportamentos;


### Nomenclatura:
+ Por convenção, de acordo com o escopo delas, nomes começam com:
  + **Variáveis Locais, Parâmetros e Métodos**: Letra minúscula ou um _ (subtraço);
  + **Variáveis Globais**: com $ (cifrão);
  + **Variavéis de Instância**: com @ (arroba);
  + **Variavéis de Classe**: com @@ (arroba duplo);
  + **Classes, Módulos e Constantes**: Letra maiúscula;
+ Os caracteres seguintes podem ser quase qualquer coisa;
+ Nomes de variáveis com múltiplas palavras usam snake_case;
+ Nomes de Classes com múltiplas palavras usam CamelCase;
+ Nomes de Constantes com múltiplas palavras usam TUDO_MAIÚSCULO;
+ Nomes de métodos podem acabar com ?, ! e =.

### Arranjo e Hashes
+ Arranjos e Hashes em ruby podem conter itens de diferentes tipos;
+ **Arranjos**:
  + Pode ser declarado com um literal: `a = [1,'gato',3.56]`;
  + Também pode ser declarado explicitamente: `arranjo = Array.new(3, true)` onde 3 (três) é o tamanho inicial e **true** é o valor padrão;
  + Itens podem ser adicionados ao fim do arranjo com `arranjo.push(5)` ou `arranjo << 6`;
  + Itens podem ser adicionado a qualquer posição com `arranjo.insert(posicao, valor)`;
+ **Hashes**:
  + Declarado de forma literal através de: `hash_name = {key1 => value1, key2 => value2}`;
  + Ou declarado com símbolos: `hash_name = {key1: value1, key2: value2}`;
  + Ou declarado via palavra-chave com `hash_name = Hash.new()`;
  + O valor padrão pode, por exemplo, ser definido como 0 (zero) com a declaração: `hash_name = Hash.new(0)`;
  + O valor chave pode ser recuperado com a mesma sintaxe que arranjos: `hash_name[key1]`;
  + Tentar recuperar uma chave que não existe devolve o valor nulo;
  + A ordem dos itens segue a ordem de inserção deles e é estável;

### Expressões Regulares (Regex)
+ São uma forma de de especificar um padrão de caracteres a serem encontrados numa string.
+ Em ruby, são geralmente declarados entre barras `/padrão/`;
+ É possível comparar uma string a um padrão com o operador **~=** ou **.match?()** usando `string ~= /padrao/`;
  + Se encontrada, retorna a posição inicial onde aparece;
  + Se não, retorna nulo;
+ Substitui a primeira ocorrência na string: `newline = line.sub(/Python/, 'Ruby')`;
+ Substitui todas as ocorrências na string: `newerline = line.gsub(/Python/, 'Ruby')`;
+ A porção de uma string que corresponde a um padrão pode ser capturada
+ Exemplos:
  + Contendo Ruby ou Rust - `/Ru(by|st)/`
  + Contend um *a*, um ou mais *b* e um *c* - `/ab+c/`;
  + Contendo um *a*, zero ou mais *b* e um *c* - `/ab*c/`;
  + Contendo espaços, tab, nova linha, etc - `/\s/`;
  + Contendo um dígito - `/\d/`;

### Blocos
+ Ruby suporta usar blocos de código como objetos;
+ Podem ser delimitados com chaves `foo.each { puts "Hello" }` ou `foo.each do puts "Hello" end`;
  + Geralmente, chaves são usadas para linhas únicas e do+end para múltiplas linhas;
+ Depois de associar um bloco de código a um método, ele pode ser chamado para execução dentro dele com a palavra-chave **yield**;
  + Argumentos podem ser definidos com `foo.each { |parametro1, parametro2| puts "#{parametro1} e #{parametro2}"}`;

### Argumentos de linha de comando
+ Assim como em outras linguagens, argumentos passados na linha de comando são armazenados num arranjo ARGV;
+ Alternativamente, é possível usar ARGF, que assume que todos os argumentos restantes no arranjo são arquivos e automaticamente os abre e fecha conforme o necessário;
