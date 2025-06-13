# Rede Neural com Algoritmo Genético - Jogo do Dinossauro

# Introdução

## O que é uma Rede Neural?

Uma **Rede Neural Artificial** é um modelo computacional inspirado no funcionamento do cérebro humano. Ela é composta por neurônios artificiais (nós) organizados em camadas que processam informações através de conexões ponderadas. As redes neurais são capazes de aprender padrões complexos através do ajuste desses pesos durante o processo de treinamento.

Principais características:
- **Camada de Entrada**: Recebe os dados de input
- **Camadas Ocultas**: Processam as informações através de funções de ativação
- **Camada de Saída**: Produz o resultado final
- **Pesos e Bias**: Parâmetros ajustáveis que determinam o comportamento da rede

## O que é um Algoritmo Genético?

O **Algoritmo Genético** é uma técnica de otimização inspirada na teoria da evolução de Darwin. Ele utiliza conceitos como seleção natural, cruzamento e mutação para encontrar soluções ótimas para problemas complexos.

Funcionamento básico:
1. **População Inicial**: Criação de um conjunto de soluções candidatas
2. **Avaliação**: Cada indivíduo é avaliado através de uma função de fitness
3. **Seleção**: Os melhores indivíduos são escolhidos para reprodução
4. **Cruzamento**: Combinação de características dos pais para gerar descendentes
5. **Mutação**: Introdução de variações aleatórias para manter diversidade
6. **Nova Geração**: Repetição do processo até encontrar uma solução satisfatória

## Motivação do Repositório

Este repositório contém **duas implementações independentes** do mesmo conceito: uma IA que aprende a jogar o jogo do dinossauro do Google Chrome usando Redes Neurais otimizadas por Algoritmos Genéticos. 

A motivação para manter duas versões separadas é **educacional e comparativa**:

- **Demonstrar versatilidade**: Mostrar como o mesmo conceito pode ser implementado em linguagens totalmente diferentes
- **Comparação de paradigmas**: C++ (orientado a performance) vs JavaScript (orientado a flexibilidade)
- **Referência múltipla**: Desenvolvedores podem escolher a implementação que melhor se adapta ao seu background
- **Estudo de caso**: Analisar como diferentes linguagens abordam o mesmo problema de IA

**IMPORTANTE**: As duas implementações são **completamente independentes** e **não se comunicam entre si**. Cada uma é um projeto autossuficiente que resolve o mesmo problema usando ferramentas e abordagens específicas de sua linguagem.

## Estrutura do Projeto

```
├── c-implementation-example/
│   └── main.cpp                 # Implementação completa em C++
└── js-implementation-example/
    └── index.js                 # Implementação completa em JavaScript
```

## Implementação C++ (c-implementation-example)

**Arquivo**: `main.cpp`

## Características da Implementação:

## Arquitetura da Rede Neural:
- **Entradas**: 6 neurônios
  - Distância do próximo obstáculo
  - Largura do obstáculo  
  - Altura do obstáculo
  - Comprimento do obstáculo
  - Velocidade atual
  - Posição Y do dinossauro
- **Camada oculta**: 6 neurônios
- **Saídas**: 3 neurônios (pular, abaixar, voar)

## Sistema de Jogo:
- **Jogo completo implementado do zero** usando biblioteca gráfica PIG
- **População**: 2000 dinossauros por geração
- **Estados do dinossauro**: em pé, deitado, pulando, morto, voando
- **Física realística**: gravidade, velocidade, colisões
- **Sistema de threading** para separar renderização do processamento

## Algoritmo Genético:
- **Seleção elitista**: preserva os melhores indivíduos
- **Mutação adaptativa**: taxa diminui ao longo das gerações
- **Três tipos de mutação**: valor aleatório, multiplicação, soma
- **Fitness**: baseado na distância percorrida

## Funcionalidades Específicas C++:
- Renderização gráfica em tempo real
- Persistência da melhor rede neural em arquivo
- Modo dual: treino automático ou jogável pelo usuário
- Visualização do progresso das gerações
- Performance otimizada para grandes populações

# Implementação JavaScript (js-implementation-example)

**Arquivo**: `index.js`

## Características da Implementação:

## Arquitetura do Sistema:
- **GameManipulator**: Controla o jogo real no navegador Chrome
- **Scanner**: Captura e analisa o estado da tela
- **Learner**: Implementa o algoritmo de aprendizado
- **UI**: Interface de monitoramento e logs

## Abordagem de Controle:
- **RobotJS**: Manipulação direta do jogo original via automação
- **Detecção de game position**: Localiza automaticamente o jogo na tela
- **Leitura de sensores**: Captura estado do jogo em tempo real
- **Controle de mouse/teclado**: Executa ações no jogo real

## Sistema de Aprendizado:
- **Rede Neural configurável**: 12 entradas, 4 saídas, taxa de aprendizado 0.2
- **Leitura contínua**: Sensores a cada 40ms, estado do jogo a cada 200ms
- **API de controle**: Sistema modular para iniciar/parar jogos

## Funcionalidades Específicas JavaScript:
- Automação de navegador web
- Arquitetura modular e extensível
- Logs detalhados do processo de aprendizado
- Interface de programação flexível

# Principais Diferenças entre as Implementações

| Aspecto | C++ Implementation | JavaScript Implementation |
|---------|-------------------|---------------------------|
| **Ambiente de Execução** | Jogo próprio implementado | Jogo original do Chrome |
| **Performance** | Máxima (código compilado) | Moderada (código interpretado) |
| **Dependências** | Biblioteca PIG (gráficos) | RobotJS (automação) |
| **Controle do Jogo** | Implementação própria | Automação externa |
| **Tamanho da População** | 2000 dinossauros | Configurável (menor) |
| **Renderização** | Gráficos próprios | Não há renderização |
| **Complexidade** | Sistema completo | Foco na IA |
| **Portabilidade** | Requer compilação | Node.js multiplataforma |
| **Tempo de Desenvolvimento** | Maior (implementação completa) | Menor (usa jogo existente) |
| **Precisão de Controle** | Total | Limitada pela automação |

# Como Executar

## C++ Implementation
```bash
cd c-implementation-example/
# Instalar dependências da biblioteca PIG
# Compilar o projeto
g++ -o dinosaur main.cpp -lpig -pthread
./dinosaur
```

## JavaScript Implementation
```bash
cd js-implementation-example/
npm install robotjs
# Abrir o jogo do dinossauro no Chrome (chrome://dino/)
node index.js
```

# Vantagens de Cada Abordagem

## C++ Implementation
- **Performance superior** para grandes populações
- **Controle total** sobre todos os aspectos do jogo
- **Visualização completa** do processo de treinamento
- **Determinismo** total nos resultados
- **Física realística** implementada do zero

## JavaScript Implementation
- **Desenvolvimento mais rápido** usando jogo existente
- **Flexibilidade** para adaptação a outros jogos
- **Modularidade** facilita manutenção e extensões
- **Prototipagem ágil** de conceitos de IA
- **Facilidade de deployment** em diferentes sistemas

## Conclusão

As duas implementações demonstram que o mesmo conceito de IA pode ser abordado de formas completamente diferentes, cada uma com suas vantagens específicas. A versão C++ oferece máximo controle e performance, ideal para pesquisa e desenvolvimento avançado. A versão JavaScript prioriza rapidez de desenvolvimento e flexibilidade, sendo excelente para prototipagem e demonstrações educacionais.

Ambas servem como excelentes materiais de estudo para compreender a aplicação prática de Redes Neurais e Algoritmos Genéticos em jogos, cada uma adequada a diferentes contextos e necessidades de desenvolvimento.
