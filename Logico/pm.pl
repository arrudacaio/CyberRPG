/*
LISTA DE EVENTOS E SUAS DESCRICOES:

'evento 0': Momento em que o usuario acabou de entrar no jogo.

'noticia 1 lida': Momento em que o texto 1 da aba Noticias foi lido pelo jogador.

'noticia 2 lida': Momento em que o texto 2 da aba Noticias foi lido pelo jogador.

'noticia 1 e 2 lida': Momento em que os dois primeiros textos da aba Noticias foram lidos pelo jogador, desbloquando a primeira mensagem.

'inicio do contrato': Momento em que a missao fica disponivel.

'contrato finalizado': Termino da missao e inicio do ultimo dialogo em Mensagens.

'ultima mensagem': Ultimo dialogo finalizado. A ultima noticia eh liberada.

'fim de jogo': Nao ha mais eventos para ocorrer.
*/


getRandom(N1, N2, R):- R = random_between(0, 100, R).


getCabecalho('1', '\n\n\n\n\n\n\n:::::::::::::MENSAGENS:::::::::::::\n\n').
getCabecalho('2', '\n\n\n\n\n\n\n:::::::::::::PERFIL:::::::::::::\n\n').
getCabecalho('3', '\n\n\n\n\n\n\n:::::::::::::CONTRATOS:::::::::::::\n\n').
getCabecalho('4', '\n\n\n\n\n\n\n:::::::::::::NOTÍCIAS:::::::::::::\n\n').
getCabecalho('5', '\n\n\n\n\n\n\n:::::::::::::DESENVOLVEDORES:::::::::::::').
getCabecalho('chat', '\n\n\n\n\n\n\n:::::::::::::M3lch10r:::::::::::::\n\n').
getCabecalho('ninho', '\n\n\n\n\n\n\n:::::::::::::O Ninho da Aranha:::::::::::::\n\n').

getOpcaoInvalida:- 
  writeln('Opção inválida. Tente novamente').


getMenu('evento 0', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias(2)\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('noticia 1 lida', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias(1)\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('noticia 2 lida', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias(1)\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('noticia 1 e 2 lida', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens(!)\n 2. Perfil\n 3. Contratos\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('inicio do contrato', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos(!)\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('contrato finalizado', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens(!)\n 2. Perfil\n 3. Contratos\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('ultima noticia','\n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias (1)\n 5. Crédito aos Desenvolvedores\n \n Digite o número da operação desejada: \n').













getNoticia('evento 0', 'Você possui 0 novas notícias.\n (!)1.Tecnologia: Projeto Connected World É Um Sucesso!\n (!)2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('noticia 1 lida', 'Você possui 0 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n (!)2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('noticia 2 lida', 'Você possui 0 novas notícias.\n (!)1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('noticia 1 e 2 lida', 'Você possui 0 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('ultima noticia', 'Você possui 1 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n 3.(!) URGENTE: Projeto Connected Word É Um Golpe de Nível Mundial! \n 4. Voltar ao Menu \nDigite o número da opção desejada').
getNoticia('noticia 3 lida','Você possui 0 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n 3.URGENTE: Projeto Connected Word É Um Golpe de Nível Mundial! \n 4. Voltar ao Menu \nDigite o número da opção desejada').

getDesenvolvedores('dev','1. Caio José dos Santos Arruda\n2. Enock Bezerra Ferreira de Souza\n3. João Vitor Patrício Romão\n4. Jonatha Kennedy Monteiro da Costa\n5. Thiago Farias de Almeida\n\nDigite(1) para Voltar ao Menu:').
  

getContrato('tela 1',
'*********ATIVOS*********
Você possui 0 contratos ativos.

******FINALIZADOS*******
Você possui 0 contratos finalizados.

1. Voltar ao Menu

Digite o número da operação desejada: ').

getContrato('tela 2',
'*********ATIVOS*********
Você possui 1 contrato ativo.

1. (!) O Ninho da Aranha

******FINALIZADOS*******
Você possui 0 contratos finalizados.

2. Voltar ao Menu

Digite o número da operação desejada: ').

getContrato('tela 3',
'*********ATIVOS*********
Você possui 0 contratos ativos.

******FINALIZADOS*******
Você possui 1 contrato finalizado.

O Ninho da Aranha

1. Voltar ao Menu

Digite o número da operação desejada: ').


getMensagem('evento 0', 'Você possui 0 novas mensagens. \n\n\n 1. Voltar ao Menu. \n\n Digite o número da operação desejada').
getMensagem('noticia 1 e 2 lida', 'Você possui 1 novas mensagens.\n\n1. (!) M3lch10r: Oi, ouvi falar que você sabe hackear coisas... \n2. Voltar ao Menu\n\n Digite o número da operação desejada:').
getMensagem('inicio do contrato', 'Você possui 0 novas mensagens\n\nM3lch10r: Fico no aguardo.\n\n1. Voltar ao Menu\n\nDigite o número da operação desejada: ').
getMensagem('contrato finalizado', 'Você possui 1 nova mensagem\n\n1.(!) M3lch10r: Você realmente conseguiu\n\n2. Voltar ao Menu.\n\nDigite o número da operação desejada.').
getMensagem('ultima mensagem', 'Você possui 0 novas mensagens\n\nM3lch10r saiu.\n\n1. Voltar ao Menu\n\nDigite o número da operação desejada:  ').


mensagem('mensagem 1', 'M3lch10r: Oi, ouvi falar que você sabe hackear coisas. Gostaria que fizesse um pequeno serviço pra mim.').
mensagem('mensagem 2', 'M3lch10r: Você sabe como isso aqui funciona. Só usuários \"verificados\" pelos chefões do Abyss podem entrar\nem contato com vocês. Além disso, mesmo se eu fosse um tira, o que diabos eu poderia fazer? Todo mundo é\npraticamente irrastreável aqui, contanto que não façam nada muito estúpido. Agora, você quer o trabalho\nou não?\n').
mensagem('mensagem 3', 'M3lch10r: E eu aqui achando que você levaria o trabalho a sério. Tudo bem. Mas supondo que eu não tenha\nouvido errado, enquanto eu não achar alguém mais disposto a me ajudar, vou estar por aqui se mudar de\nideia (mas não por muito tempo).').
mensagem('mensagem 4', 'M3lch10r: Sabe a Digital Spider? Então, preciso que você invada ela e \"pegue emprestado\" alguns dados\npra mim. Quero tudo o que você puder encontrar sobre a GhostWeb, sobre o projeto Connected World, e, se\npossível, sobre algo chamado \"Puppet_M@ster\". Não se preocupe se não achar nada sobre este último. Ele\né mais uma lenda urbana do que qualquer outra coisa. Enfim, se olhar em sua conta bancária do Abyss,\nverá que o pagamento já foi enviado e só aguarda a confirmação de que nosso contrato foi concluído para\nque você de fato receba o dinheiro. Verá também que é uma quantia bem generosa. Posso contar com seus\nserviços?').
mensagem('mensagem 5', 'M3lch10r: Fico no aguardo.').
mensagem('mensagem 6', 'M3lch10r: Você realmente conseguiu! Eu admito, por vários momentos duvidei de\nvocê. Tenho que aprender a confiar mais na minha rede de contatos. Enfim, saiba\nque você não apenas prestou a MIM um grande serviço, mas provavelmente ao\nmundo inteiro. Te agradeço de verdade.').
mensagem('mensagem 7', 'M3lch10r: Sabe aquela \"lenda urbana\" que eu te falei? Aquilo sobre um tal de Puppet_M@ster? Acontece que\nessa coisa é muito mais real do que eu gostaria. Acho que não preciso te explicar. Se quiser saber mais,\napenas fique de olho nas notícias. Tenho certeza de que não vai demorar muito até aqueles desgraçados da\nDigital Spider serem desmascarados globalmente. Ah, já ia esquecendo: eu faço parte da AGI (Agência Global\nde Inteligência). Sim, sim, acontece que eu SOU um \"tira\", como vocês malandros dizem. Mas não se preocupe.\nJá que você foi tão cooperativo, não tenho interesse em te prender... ainda. Mas saiba que você se daria\nmuito bem por aqui na AGI. Sempre precisamos de pessoas com suas... habilidades. Pense no assunto. Você sabe\nonde nos encontrar se estiver interessado. Agora eu pretendo desaparecer dessa rede. Acho que os chefões\ndo Abyss vão me deletar daqui em breve de qualquer forma. Mais uma vez, em nome de toda a AGI e, pra ser\nsincero, de todo o mundo: muito obrigado.').


getNoticia1 :-
  getCabecalho('4', R),
  writeln(R),
  writeln('\n \n ------------------------------------------------------------------------------------------------------------------------'),
  writeln('\n \n ****************************Tecnologia: Projeto Connected World É Um Sucesso!****************************'),
  writeln('Após anos de desenvolvimento, hoje, no dia 26/04/2048, a Digital Spider, maior empresa distribuidora'),
  writeln('de internet do mundo, anunciou que o projeto Connected World está oficialmente finalizado.'),
  writeln('\n Nas palavras de Edwart T. Johnson, fundador da Digital Spider e atualmente a pessoa mais rica do mundo:'),
  writeln('\"Vivemos em uma era em que a internet se faz um recurso tão essencial quanto água, comida ou energia'),
  writeln('elétrica. Sabendo disso, nossa empresa, com o apoio de vários países, iniciou um projeto que, dentre'),
  writeln('outros objetivos, visava tornar a internet um recurso acessível e, mais importante, gratuito para todos.'),
  writeln('Estamos orgulhosos em anunciar a concretização deste feito.\".'),
  writeln('\n A nova radiofrequência desenvolvida nos laboratórios da Digital Spider, popularmente conhecida como'),
  writeln('GhostWeb, é em grande parte responsável pelo sucesso do projeto. A tecnologia possibilitou alcance e'),
  writeln('velocidade nunca antes atingidos, além de apresentar 100% de imunidade a interferência.'),
  writeln('Atualmente, milhares de torres espalhadas ao redor do mundo cobrem praticamente todo o planeta com o'),
  writeln('sinal da GhostWeb, permitindo que qualquer pessoa, em qualquer lugar do mundo, tenha acesso gratuito a'),
  writeln('rede mundial de computadores.'),
  writeln('\nComo tamanha revolução afetará a sociedade contemporânea, só o tempo dirá. Mas uma coisa é certa: as'),
  writeln('expectativas são, em sua esmagadora maioria, otimistas. \n \n'),
  writeln('').
  
getNoticia2 :-
  getCabecalho('4', R),
  writeln(R),
  writeln('\n'),
  writeln('------------------------------------------------------------------------------------------------------------------------'),
  writeln('\n'),
  writeln('****************************Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.****************************'),
  writeln('\n A cyberpolicia atualmente investiga o caso do possível aparecimento de uma nova rede de comunicações criminosas no'),
  writeln('ambiente virtual conhecido como \"Dark Web\". Segundo suspeitas, a nova plataforma virtual conhecida como \"Abyss\" reúne'),
  writeln('cybercriminosos dos mais variados tipos, como traficantes, golpistas e, em especial, hackers. O AV (Ambiente Virtual)'),
  writeln('aparentemente permite que tais criminosos aceitem contratos para a venda de seus produtos/serviços.'),
  writeln('\nApesar de possuir tais informações a cyberpolicia atualmente se vê de mãos atadas, pois nada pode fazer para derrubar o'),
  writeln('ambiente, rastrear seus usuários, ou impedir as transações ilegais que, a todo momento, ocorrem no submundo da internet.'),
  writeln('Quando questionado sobre o plano de ação contra esta nova ameaça virtual, um dos cyberpoliciais que escolheu não se'),
  writeln('identificar respondeu: \"Estamos trabalhando nisso.\".'),
  writeln('\n').

getNoticia3 :-
  getCabecalho('4', R),
  writeln(R),
  writeln('------------------------------------------------------------------------------------------------------------------------'),
  writeln('\n****************************URGENTE: Projeto Connected World É Um Golpe de Nível Mundial!****************************'),
  writeln('\n O mundo está em caos desde que uma terrível verdade foi descoberta há poucos minutos. A Digital Spider arquitetou um'),
  writeln('golpe classificado como Crime contra a humanidade, o nível mais grave de ato criminoso.'),
  writeln('\n Através das ações de um agente da AGI (Agência Global de Inteligência) que preferiu se manter anônimo, e das'),
  writeln('habilidades de um misterioso hacker, a rede privada da Digital Spider foi invadida hoje. O que foi encontrado chocou o'),
  writeln('mundo: detalhes sobre um projeto secreto chamado de \"Puppet_M@ster\".'),
  writeln('\nSegundo os arquivos extraídos da Digital Spider, o tão aclamado projeto Connected World nada mais era do que uma farsa'),
  writeln('para o real objetivo da empresa. O que foi descoberto parece tema de ficção científica, mas a própria AGI divulgou'),
  writeln('publicamente que esta é uma ameaça real, e que deve ser tratada com o máximo de urgência.'),
  writeln('\nO projeto Puppet_M@ster envolve nada mais nada menos do que controlar as mentes humanas de todas as partes do mundo'),
  writeln('através da tecnologia da GhostWeb. Pelo que foi dito pela AGI, a nova radiofrequência possui a estranha capacidade de'),
  writeln('alterar as sinapses cerebrais, dessa forma se tornando um potencial controlador de mentes. Pelo que é dito nos'),
  writeln('arquivos, a Digital Spider faria uso de tal atrocidade para colocar a empresa permanentemente no topo de tudo e de'),
  writeln('todos. A Digital Spider seria bem-sucedida no que monstros históricos como Hitler apenas tentaram: ter o mundo inteiro'),
  writeln('nas palmas das mãos. É bem provável que o mundo deva o direito do livre arbítrio ao trabalho conjunto entre um agente'),
  writeln('da lei e um criminoso.'),
  writeln('\nAgora, a Digital Spider está sofrendo um imenso processo de queda, a medida que órgãos de todas as partes do mundo se'),
  writeln('unem para derrubar a grande besta empresarial pedaço por pedaço.'),
  writeln('\nHá aqueles que dizem que tudo isso é apenas o começo de uma guerra para adquirir o controle dessa aterrorizante'),
  writeln('tecnologia, e tal afirmação é difícil de ser negada atualmente.'),
  writeln('\nO que essa reviravolta assustadora trará para o futuro de nossa sociedade, só o tempo dirá. Mas uma coisa é certa: o'),
  writeln('mundo jamais será o mesmo.'),
  writeln('\n').
  
getGameOverMsg('::::::::::::NOTA OFICIAL DOS DESENVOLVEDORES::::::::::::\nNós do Abyss lamentamos seu miserável fracasso. Infelizmente, para você, não podemos deixar que sua\nincompetência nos arraste junto com você para a fossa. Você está imediatamente desligado do nosso sistema.\nA partir de agora, não temos ligação alguma com você, não o conhecemos, e, para prevenir que nenhuma de\nnossas informações será vazada para ouvidos indesejáveis, garantiremos que você permaneça em completo e\nabsoluto silêncio.\n\nObrigado por ter escolhido o Abyss!\n\nAh, e é melhor não pisar lá fora. Bem, na verdade não faz diferença. Eles já estão dentro :).\n\n#######GAME OVER#######\n').


operacaoInvalida() :- writeln('Operacao invalida! Tente novamente.').


noticia('evento 0') :-
  writeln('\n \n \n'),
  getNoticia('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 1 lida'); Option = '2' -> getNoticia2, noticia('noticia 2 lida'); Option = '3' -> menu('evento 0'); getOpcaoInvalida, noticia('evento 0')).

noticia('noticia 1 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 1 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 1 lida'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> menu('noticia 1 lida')),
  writeln('Digite uma opção válida'),
  noticia('noticia 1 lida').

noticia('noticia 2 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 1 e 2 lida'); Option = '2' -> getNoticia2, noticia('noticia 2 lida'); Option = '3' -> menu('noticia 2 lida')),
  writeln('Digite uma opção válida'),
  noticia('noticia 2 lida').
 
noticia('noticia 1 e 2 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 1 e 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('noticia 1 e 2 lida'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> menu('noticia 1 e 2 lida'); getOpcaoInvalida, noticia('noticia 1 e 2 lida')).

noticia('noticia 3 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 3 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 3 lida');Option = '2' -> getNoticia2, noticia('noticia 3 lida');Option = '3' -> getNoticia3, noticia('noticia 3 lida');Option = '4' -> menu('evento 0'); getOpcaoInvalida, noticia('noticia 3 lida')).

noticia('ultima noticia'):-
writeln('\n \n \n'),
  getNoticia('ultima noticia', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('ultima noticia');Option = '2' -> getNoticia2, noticia('ultima noticia');Option = '3' -> getNoticia3, noticia('noticia 3 lida');Option = '4' -> menu('ultima noticia');noticia('ultima noticia')).



noticia('ultima mensagem'):-
  writeln('\n \n \n'),
  getNoticia('ultima mensagem', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('ultima mensagem'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> getNoticia3, noticia('ultima mensagem'); Option =:= 4, menu('ultima mensagem'); getOpcaoInvalida, noticia('ultima mensagem')).

noticia('inicio do contrato'):-
  writeln('\n \n \n'),
  getNoticia('noticia 1 e 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('noticia 1 e 2 lida'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> menu('inicio do contrato'); getOpcaoInvalida, noticia('inicio do contrato')).

/* A partir daqui vai ser as funções de mensagem */

getChat('mensagem 1'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 1', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  writeln('2. E como sei que você não é um tira?'),
  writeln('3. Você ouviu errado. Cai fora.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); Option = '2' -> getChat('mensagem 2'); Option = '3' -> getChat('mensagem 3'); getChat('mensagem 1'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 1')).
  
getChat('mensagem 2'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 2', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  writeln('2. Você ouviu errado. Cai fora.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); Option = '2' -> getChat('mensagem 4'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 2')).

getChat('mensagem 3'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 3', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  writeln('2. E como sei que você não é um tira?'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); Option = '2' -> getChat('mensagem 6'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 3')).
 
getChat('mensagem 4'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 4', Text),
  writeln(Text),
  writeln('1. Considere feito.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('inicio do contrato');  writeln('Operação inválida! Tente novamente.'), getChat('mensagem 4')).


  
/*Se o for para mensagem 2  digitar 'voce ouviu errado, cai fora'  */
getChat('mensagem 5'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 3', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 5')).

/*Se o jogador for para mensagem 3 e digitar 'e como sei que vc n e um tira?'*/
getChat('mensagem 6'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 2', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 6')).


  getChat('mensagem 6finalizacao'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 6', Text),
  writeln(Text),
  writeln('\n1. Do que está falando?'),
  writeln('2. Voltar a Mensagens.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 7'); Option = '2' -> mensagemMenu('contrato finalizado') ;writeln('Operação inválida! Tente novamente.'), getChat('mensagem 6finalizacao')).

  getChat('mensagem 7'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 7', Text),
  writeln(Text),
  writeln('\n1. Voltar a Mensagens.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> mensagemMenu('ultima mensagem'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 7')).

mensagemMenu('evento 0'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('evento 0'); writeln('Operação inválida! Tente novamente'), mensagemMenu('evento 0')).
  
mensagemMenu('noticia 1 lida'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('noticia 1 lida'); writeln('Operação inválida! Tente novamente'), mensagemMenu('noticia 1 lida')).
  
mensagemMenu('noticia 2 lida'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('noticia 2 lida'); writeln('Operação inválida! Tente novamente'), mensagemMenu('noticia 2 lida')).

mensagemMenu('noticia 1 e 2 lida'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('noticia 1 e 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 1'); mensagemMenu('noticia 1 e 2 lida')).
  
mensagemMenu(''):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('inicio do contrato', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('inicio do contrato')).

mensagemMenu('contrato finalizado'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('contrato finalizado', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '2' -> menu('contrato finalizado'); Option = '1' -> getChat('mensagem 6finalizacao')).

  mensagemMenu('ultima mensagem'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('ultima mensagem', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('ultima noticia')).


/*INICIO DA TELA DE CONTRATOS*/

contratos('evento 0') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('evento 0');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('evento 0').

contratos('noticia 1 lida') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('noticia 1 lida');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('noticia 1 lida').

contratos('noticia 2 lida') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('noticia 2 lida');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('noticia 2 lida').

contratos('noticia 1 e 2 lida') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('noticia 1 e 2 lida');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('noticia 1 e 2 lida').

contratos('inicio do contrato') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 2', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' -> ninho1();
    Option == '2' -> menu('inicio do contrato');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('inicio do contrato')).

contratos('contrato finalizado') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 3', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('contrato finalizado');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('contrato finalizado').

contratos('ultima mensagem') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 3', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('ultima mensagem');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('ultima mensagem').

contratos('fim de jogo') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 3', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('fim de jogo');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('fim de jogo').

/*FIM DA TELA DE CONTRATOS*/

/*INICIO DA TELA DE DESENVOLVEDORES*/
desenvolvedores() :-
  getCabecalho('5',X),
  getDesenvolvedores('dev',Y),
  writeln(X),
  writeln(Y),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('evento 0'); writeln('Operação inválida! Tente novamente'), desenvolvedores()).

/*FIM DA TELA DE DESENVOLVEDORES*/

/*INICIO DA TELA DE "O NINHO DA ARANHA"*/
getBloqueioFail():-
  getCabecalho('ninho',X),
  writeln(X),
  writeln('\n\n'),
  writeln('Falha no bloqueio. Você foi rastreado! Sua identidade e localização foram comprometidos!'),
  getGameOverMsg(Msg),
  writeln(''),
  writeln(Msg),
  menu('inicio do contrato').

ninho1() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln('1. Analisar a rede interna da Digital Spider'),
    writeln('2. Voltar a Contratos'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' -> ninho2();
    Option == '2' -> contratos('inicio do contrato');
    operacaoInvalida()),
    ninho1().

ninho2() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln('Funcionarios online: 37'),
    writeln('Nivel de protecao da rede: Muito Alto'),
    writeln(''),
    writeln(''),
    writeln('Chance de o invasor ser rastreado ao invadir: Extremamente Alta.'),
    writeln('Dificuldade atual de uma invasao direta: Extremamente Alta.'),
    writeln('Melhor curso de acao: Diminuir seguranca antes de realizar a invasao.'),
    writeln(''),
    writeln(''),
    writeln('1. Iniciar invasao'),
    writeln('2. Derrubar funcionarios da rede'),
    writeln('3. Hackear drone'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' ->
        /*O CODIGO ABAIXO EH TEMPORARIO! Sera trocado pela chamada da funcao de invasao (favor remover este comentario quando esta for implementada).*/
        writeln('Iniciando invasao...'),
        writeln(''),
        writeln('Atravessando firewall...'),
        writeln(''),
        write('invasao com dificuldade extremamente alta');
    Option == '2' ->
        derrubaFuncs();
    Option == '3' ->
        drone());
    operacaoInvalida(),
    ninho2().
	
derrubaFuncs() :-
	random_between(10,25,Derrubados),
	writeln('Bloqueando o acesso dos funcionários online...'),
    writeln(''),
	FuncsRestantes is 37 - Derrubados,
	write(Derrubados),
	write(' funcionários bloqueados com sucesso. Restam '),
	write(FuncsRestantes),
	write(' online.'),
	writeln(''),
	(Derrubados > 18 ->
		writeln(''),
		writeln('Mais de 50% dos usuários online foram derrubados.'),
		writeln(''),
		writeln('Nível de proteção da rede Digital Spider diminuído!'),
		ninho3(FuncsRestantes));
	writeln('Poucos usuários derrubados. Ataque ineficaz.'),
	writeln('Nível de proteção da rede Digital Spider não sofreu alterações.'),
	writeln(''),
	writeln('Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
	random_between(0,100,Chance),
	(Chance < 40 ->getBloqueioFail()),
	writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
	ninho2().

ninho3(FuncsRestantes) :-
    getCabecalho('ninho',X),
    writeln(X),
    write('Funcionarios online: ' ),
    writeln(FuncsRestantes),
    writeln(''),
    writeln('Nivel de protecao da rede: Baixo'),
    writeln(''),
    writeln(''),
    writeln('Chance do invasor ser rastreado ao invadir: Baixo.'),
    writeln('Dificuldade atual de uma invasao direta: Baixo.'),
    writeln('Melhor curso de acao: Invasao direta.'),
    writeln(''),
    writeln('1. Iniciar invasao'),
    writeln('2. Hackear drone'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' ->
        writeln('Iniciando invasao...'),
        writeln(''),
        writeln('Atravessando firewall...'),
        writeln(''),
        /*O CODIGO ABAIXO EH TEMPORARIO! Sera trocado pela chamada da funcao de invasao (favor remover este comentario quando esta for implementada).*/
        writeln('Invasao bem sucedida!'),
        ninho4();
    Option == '2' ->
        writeln('Procurando drones...'),
        writeln(''),
        writeln('Nenhum drone foi detectado na rede.'),
        ninho3(FuncsRestantes);
    operacaoInvalida(),
    ninho3(FuncsRestantes)).
    
ninho4() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln(''),
    writeln('1. Enviar 3 arquivos baixados para M3lch10r'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' ->
        writeln('Enviando...'),
        writeln('1/3...'),
        writeln('2/3...'),
        writeln('3/3'),
        writeln('Envio completo!'),
        ninho5();
    operacaoInvalida(),
    ninho4()).

ninho5() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln(''),
    writeln('CONTRATO FINALIZADO!'),
    writeln(''),
    writeln('1. Voltar a Contratos'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
   (Option == '1' -> contratos('contrato finalizado');
   operacaoInvalida(),
   ninho5()).


drone():-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Detectando drones...\n'),
  writeln('DRONES DISPONÍVEIS:\n'),
  writeln('1. Tunderstorm#231982\n2. ZTX#53325\n3. Sphinx#142731\n\n4. Voltar'),
  writeln('\nDigite o número da operação desejada:'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> invadindoDrone('Tunderstorm#231982')),
  (Option == '2' -> invadindoDrone('ZTX#53325')),
  (Option == '3' -> invadindoDrone('Sphinx#142731')),
  (Option == '4' -> ninho2()),
  operacaoInvalida(),
  drone().

drone(FuncRestantes):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Detectando drones...\n'),
  writeln('DRONES DISPONÍVEIS:\n'),
  writeln('1. Tunderstorm#231982\n2. ZTX#53325\n3. Sphinx#142731\n4. Voltar'),
  writeln('\nDigite o número da operação desejada:'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> invadindoDrone('Tunderstorm#231982', FuncRestantes); Option =='2' -> invadindoDrone('ZTX#53325', FuncRestantes); Option == '3' -> invadindoDrone('Sphinx#142731', FuncRestantes); Option == '4' -> ninho3(FuncRestantes)),
  operacaoInvalida(),
  drone().
 
invadindoDrone(DroneName):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln(DroneName),
  writeln('\n\nSistema de armas: Online\nBateria: 80% carregada\nLocomoção: Aérea\nTamanho: Pequeno\nCondição da estrutura: 100% (Intacto)'),
  writeln('\n\n1. Tomar controle do drone\n2. Voltar\n\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneInvadido(DroneName)),
  (Option == '2' -> drone()),
  operacaoInvalida(),
  invadindoDrone(DroneName).

invadindoDrone(DroneName, FuncRestantes):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln(DroneName),
  writeln('\n\nSistema de armas: Online\nBateria: 80% carregada\nLocomoção: Aérea\nTamanho: Pequeno\nCondição da estrutura: 100% (Intacto)'),
  writeln('\n\n1. Tomar controle do drone\n\n2. Voltar'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> drone('invadindo')),
  (Option == '2' -> drone(FuncRestantes)),
  operacaoInvalida(),
  invadindoDrone(DroneName, FuncRestantes).

invadindoDrone2(DroneName):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Invadindo drone...'),
  random_between(0,100,Chance),
  (Chance >= 40 -> writeln('Invasão bem sucedida.'), droneInvadido(DroneName)),
  writeln('\n\nInvasão mal sucedida.\n\nVocê está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
  random_between(0,100, Chance2),
  (Chance2 < 40 -> getBloqueioFail()),
  writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
  drone().

invadindoDrone2(DroneName,FuncRestantes):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  random_between(0,100,Chance),
  (Chance >= 40 -> droneInvadido(DroneName, FuncRestantes)),
  writeln('\n\nInvasão mal sucedida.\n\nVocê está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
  random_between(0,100, Chance2),
  (Chance2 < 40 -> getBloqueioFail()),
  writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
  drone(FuncRestantes).
  
droneInvadido(DroneName):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  My_string = 'Você agora tem o controle do ',
  atom_concat(My_string, DroneName, Result),
  writeln(Result),
  writeln('\n1. Controlar drone.'),
  writeln('2. Voltar\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> virusInstalado(DroneName)),
  (Option == '2' -> drone()),
  operacaoInvalida(),
  droneInvadido(DroneName).

droneInvadido(DroneName, FuncRestantes):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  My_string = 'Você agora tem o controle do ',
  atom_concat(My_string, DroneName, Result),
  writeln(Result),
  writeln('1. Controlar drone.'),
  writeln('2. Voltar'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> virusInstalado(DroneName, FuncRestantes), Option == '2' -> drone(FuncRestantes)),
  operacaoInvalida(),
  droneInvadido(DroneName, FuncRestantes).
  
instalandoVirus(DroneName):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Virus instalado com êxito!'),
  virusInstalado(DroneName).

instalandoVirus(DroneName, FuncRestantes):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Virus instalado com êxito!'),
  virusInstalado(DroneName, FuncRestantes).
  
virusInstalado(DroneName):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),

  write(DroneName),
  write(': Iniciando sistema de vôo.'),
  writeln('\n\n'),
  write(DroneName),
  write(':Movendo-se para o ponto alvo...'),
  writeln('\n\n'),
  write(DroneName),
  write(':Atenção! 2 elementos hostils detectados! Como proceder?'),

  writeln('\n\n'),
  writeln('Inimigo1:\nTipo:Humano\nArma detectada:Fuzil de assalto\nID de Profissao: Segurança Particular\nSaúde:100%'),
  writeln('\n\n'),
  writeln('Inimigo2:\nTipo:Humano\nArma detectada:Fuzil de assalto\nID de Profissao: Segurança Particular\nSaúde:100%'),
  writeln('\n\n'),
  writeln('1. Eliminar alvos hostis\n2. Abandonar drone e voltar'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> combateDrone(DroneName, 100, 100, 100)),
  (Option == '2' -> drone()),
  operacaoInvalida(),
  virusInstalado(DroneName).

combateDroneMain(DroneName, DroneHp, Inimigo1, Inimigo2):-
  writeln('\n'),
  write(DroneName),
  write(' - '),
  write(DroneHp),
  write('%'),
  writeln('\n\n'),
  write('Inimigo 1 - '),
  write(Inimigo1),
  write('%\n'),
  write('Inimigo 2 - '),
  write(Inimigo2),
  write('%'),
  writeln('\n\n'),
  Inimigo1 == 0 -> combateDroneMain(DroneName, DroneHp, Inimigo2);
  Inimigo2 == 0 -> combateDroneMain(DroneName, DroneHp, Inimigo1);
  DroneHp == 0 -> writeln('Drone destruído.'), drone();
  ataqueInimigo(DroneHp, DroneHp1);
  DroneHp1 == 0 -> writeln('Drone destruído.'), drone();
  ataqueInimigo(DroneHp1, DroneHp2);
  DroneHp2 == 0 -> writeln('Drone destruído.'), drone();
  combateDrone(DroneName, DroneHp2, Inimigo1, Inimigo2).
  

combateDroneMain(DroneName, DroneHp, Inimigo):-
  (Inimigo == 0 -> fimCombate(Dronename)),
  (DroneHp == 0 -> writeln('Drone destruído.'), drone()),
  ataqueInimigo(DroneHp, DroneHp1),
  (DroneHp1 == 0 -> writeln('Drone destruído.'), drone()).


combateDrone(DroneName, DroneHp, Inimigo1, Inimigo2):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln('\n'),
  write(DroneName),
  write(' - '),
  write(DroneHp),
  write('%'),
  writeln('\n\n'),
  write('Inimigo 1 - '),
  write(Inimigo1),
  write('%\n'),
  write('Inimigo 2 - '),
  write(Inimigo2),
  write('%'),
  
  writeln('\n\n'),
  writeln('1. Atacar inimigo 1\n2. Atacar inimigo 2\n4. Abandonar Drone'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '4' -> drone(); Option == '1' -> ataqueDrone(DroneName, DroneHp, Inimigo1, Inimigo2, '1');  Option == '2' -> ataqueDrone(DroneName, DroneHp, Inimigo1, Inimigo2, '2')),
  operacaoInvalida(),
  combateDrone(DroneName, DroneHp, Inimigo1, Inimigo2).
  
combateDrone(DroneName, DroneHp, Inimigo) :-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  write(DroneName),
  write(' - '),
  write(DroneHp),
  write('%'),
  writeln('\n\n'),
  write('Inimigo 1 - '),
  write(Inimigo1),
  write('%\n\n'),
  writeln('1. Atacar inimigo 1\n2. Atacar inimigo 2\n 3. Abandonar Drone'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '3' -> drone()),
  (Option == '1' -> ataqueDrone(DroneName, DroneHp, Inimigo));
  operacaoInvalida(),
  combateDrone(DroneName, DroneHp, Inimigo1, Inimigo2).

ataqueDrone(DroneName, DroneHp, Inimigo1, Inimigo2, Alvo):-  
  (Alvo == '1' -> writeln('Rajada disparada em Inimigo 1'), R1 is Inimigo1 - 25, random_between(0,100, Chance1),
  (Chance1 >= 25 -> writeln('Inimigo 1 atingido!'), 
  combateDroneMain(DroneName, DroneHp, R1, Inimigo2); 
  writeln('Inimigo 1 não foi atingido'), 
  combateDroneMain(DroneName, DroneHp, Inimigo1, Inimigo2)));
  
  (Alvo == '2' -> writeln('Rajada disparada em Inimigo 2'), R2 is Inimigo2 - 25, random_between(0,100, Chance1),
  (Chance1 >= 25 -> writeln('Inimigo 2 atingido!'), 
  combateDroneMain(DroneName, DroneHp, Inimigo1, R2); 
  writeln('Inimigo 2 não foi atingido'),
  combateDroneMain(DroneName, DroneHp, Inimigo1, Inimigo2))).
  

ataqueDrone(DroneName, DroneHp, Inimigo):-
  writeln('Rajada disparada no Inimigo\n'),
  random_between(0, 100, Chance1),
  (Chance1 >= 25 -> writeln('Inimigo atingido!'),  combateDroneMain(DroneName, DroneHp, Inimigo)),
  (Chance1 < 25  -> writeln('Inimigo não foi atingido.'), combateDroneMain(DroneName, DroneHp, Inimigo)).

ataqueInimigo(DroneHp, DroneHpFinal):-
  writeln('Inimigo atira contra o drone.'),
  random_between(0, 100, Chance),
  (Chance >= 70 -> writeln('Drone atingido!'), DroneHpFinal is DroneHp - 25);
  random_between(0, 100, Chance1),
  (Chance1 < 70 -> writeln('Drone não foi atingido!'), DroneHpFinal is DroneHP).
 
fimCombate(DroneName):-
  writeln('FIM').
/*FIM DA TELA DE "O NINHO DA ARANHA"*/


  

/*Opcoes do MENU*/

getOption(Evento, '1') :- mensagemMenu(Evento).
getOption(Evento, '3') :- contratos(Evento).
getOption(Evento, '4') :- noticia(Evento).
getOption(Evento, '5') :- desenvolvedores().
getOption(Evento,_) :- writeln('Opção inválida'), menu(Evento).

/*Obter User Atual Logado*/
get_User_Atual(R) :- 
	open("userAtual.txt",read,X),
	read_line_to_codes(X, User),
	atom_codes(UserAtual, User),
    R = UserAtual.
	
/*Funcionalidade de Login*/
  
verifica_senha(Senha,SenhaArq,Arquivo):- Senha = SenhaArq, 
	open("userAtual.txt",write,X),
	string_length(Arquivo,Ta),
	Tamanho is Ta - 4,
	sub_string(Arquivo,_,Tamanho,_,UserAtual),
	write(X,UserAtual),
	close(X),
	menu('evento 0').
verifica_senha(Senha,SenhaArq,_):- Senha \= SenhaArq, writeln("Senha incorreta!!"),signIn.

verifica_existencia(Arquivo):- exists_file(Arquivo), login(Arquivo).
verifica_existencia(Arquivo):- not(exists_file(Arquivo)), writeln("Usuário não encontrado!"),main.

verifica_usuario(Arquivo):- not(exists_file(Arquivo)), signUp2(Arquivo).
verifica_usuario(Arquivo):- exists_file(Arquivo), writeln("Usuário já existente!! Tente outro!"), signUp.

login(Arquivo):-
    write("Senha: "),
	read_line_to_codes(user_input, Pass1),
	atom_codes(Senha, Pass1),
	open(Arquivo,read,X),
	read_line_to_codes(X, Pass),
	atom_codes(SenhaArq, Pass),
	verifica_senha(Senha,SenhaArq,Arquivo),
	close(X).

signUp:-
	write("Nome: "),
	read_line_to_codes(user_input, Nom1),
	atom_codes(Nome, Nom1),
	string_concat(Nome,".txt",Arquivo),
	verifica_usuario(Arquivo).
	
signUp2(Arquivo):-
	open(Arquivo,write,X),
	write("Senha: "),
	read_line_to_codes(user_input, Pass),
	atom_codes(Senha, Pass),
	write(X,Senha),
	close(X),
	write("Usuário criado com sucesso!!\n\n"),
	main.

	
signIn:-
    write("Nome: "),
	read_line_to_codes(user_input, Nom),
	atom_codes(Nome, Nom),
	string_concat(Nome,".txt",Arquivo),
	verifica_existencia(Arquivo).

main:-
 	writeln("\n\n\n\n««««««««ABYSS»»»»»»»»"),
    writeln("O ambiente de trabalho para aqueles que seguem suas próprias leis."),
    writeln(""),
    writeln(":::::::::::::LOGIN:::::::::::::"),
    writeln("Já possui uma conta? (S/N) ou Q para sair!"),
	read_line_to_codes(user_input, Op),
	atom_codes(Opp, Op),
	string_lower(Opp,Option),
    (Option = "s" -> signIn; Option = "n" -> signUp; Option = "q" -> write("ADEUS!"), halt; write("getOpcaoInvalida"), main).

menu(Evento) :-
  getMenu(Evento, Text),
  write(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  getOption(Evento, Option).

