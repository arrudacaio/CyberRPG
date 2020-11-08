import System.Directory
import System.IO
import System.Random

optionMenu :: Int -> String -> IO()
optionMenu 1 evento = mensagens evento
optionMenu 2 evento = perfil evento
optionMenu 3 evento = contratos evento
optionMenu 4 evento = noticia evento
optionMenu 5 evento = desenvolvedores evento
optionMenu _ evento = do
  putStrLn operacaoInvalida
  menu evento


{-FUNÇÕES DE RETORNO DE TEXTO-}
--Retorna o cabeçalho que antecede a tela de notícias
cabecalhoNoticias :: String
cabecalhoNoticias =
  "-----------------------------------------------\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n:::::::::::::NOTICIAS:::::::::::::\
  \\n\
  \\n"

cabecalhoContratos :: String
cabecalhoContratos =
  "-----------------------------------------------\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n:::::::::::::CONTRATOS:::::::::::::\
  \\n\
  \\n"

cabecalhoContrato1 :: String
cabecalhoContrato1 =
  "-----------------------------------------------\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n:::::::::::::O Ninho da Aranha:::::::::::::\
  \\n\
  \\n"

--Retorna o cabeçalho que antecede a tela de mensagens
cabecalhoMensagens :: String
cabecalhoMensagens =
  "-----------------------------------------------\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n\
  \\n:::::::::::::MENSAGENS:::::::::::::\
  \\n\
  \\n"

--Retorna o cabeçalho que antecede a tela de chat com M3lch10r
cabecalhoChat :: String
cabecalhoChat =
  "\
  \\n:::::::::::::M3lch10r:::::::::::::\
  \\n\
  \\n"

--Retorna texto de operação inválida.
operacaoInvalida :: String
operacaoInvalida = "Operação inválida! Tente novamente."


-- Abaixo fica todos os principais textos do jogo, como noticias e mensagens
noticia1 :: String
noticia1 =
  "------------------------------------------------------------------------------------------------------------------------\
  \\n\
  \\n****************************Tecnologia: Projeto Connected World É Um Sucesso!****************************\
  \\n\
  \\nApós anos de desenvolvimento, hoje, no dia 26/04/2048, a Digital Spider, maior empresa distribuidora\
  \\nde internet do mundo, anunciou que o projeto Connected World está oficialmente finalizado.\
  \\n\
  \\nNas palavras de Edwart T. Johnson, fundador da Digital Spider e atualmente a pessoa mais rica do mundo:\
  \\n\"Vivemos em uma era em que a internet se faz um recurso tão essencial quanto água, comida ou energia\
  \\nelétrica. Sabendo disso, nossa empresa, com o apoio de vários países, iniciou um projeto que, dentre\
  \\noutros objetivos, visava tornar a internet um recurso acessível e, mais importante, gratuito para todos.\
  \\nEstamos orgulhosos em anunciar a concretização deste feito.\".\
  \\n\
  \\nA nova radiofrequência desenvolvida nos laboratórios da Digital Spider, popularmente conhecida como\
  \\nGhostWeb, é em grande parte responsável pelo sucesso do projeto. A tecnologia possibilitou alcance e\
  \\nvelocidade nunca antes atingidos, além de apresentar 100% de imunidade a interferência.\
  \\nAtualmente, milhares de torres espalhadas ao redor do mundo cobrem praticamente todo o planeta com o\
  \\nsinal da GhostWeb, permitindo que qualquer pessoa, em qualquer lugar do mundo, tenha acesso gratuito a\
  \\nrede mundial de computadores.\
  \\n\
  \\nComo tamanha revolução afetará a sociedade contemporânea, só o tempo dirá. Mas uma coisa é certa: as\
  \\nexpectativas são, em sua esmagadora maioria, otimistas.\
  \\n"


noticia2 :: String
noticia2 =
  "------------------------------------------------------------------------------------------------------------------------\
  \\n\
  \\n****************************Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.****************************\
  \\n\
  \\nA cyberpolicia atualmente investiga o caso do possível aparecimento de uma nova rede de comunicações criminosas no\
  \\nambiente virtual conhecido como \"Dark Web\". Segundo suspeitas, a nova plataforma virtual conhecida como \"Abyss\" reúne\
  \\ncybercriminosos dos mais variados tipos, como traficantes, golpistas e, em especial, hackers. O AV (Ambiente Virtual)\
  \\naparentemente permite que tais criminosos aceitem contratos para a venda de seus produtos/serviços.\
  \\n\
  \\nApesar de possuir tais informações a cyberpolicia atualmente se vê de mãos atadas, pois nada pode fazer para derrubar o\
  \\nambiente, rastrear seus usuários, ou impedir as transações ilegais que, a todo momento, ocorrem no submundo da internet.\
  \\nQuando questionado sobre o plano de ação contra esta nova ameaça virtual, um dos cyberpoliciais que escolheu não se\
  \\nidentificar respondeu: \"Estamos trabalhando nisso.\".\
  \\n"
  
  
noticia3 :: String
noticia3 =
  "------------------------------------------------------------------------------------------------------------------------\
  \\n\
  \\n****************************URGENTE: Projeto Connected World É Um Golpe de Nível Mundial!****************************\
  \\n\
  \\nO mundo está em caos desde que uma terrível verdade foi descoberta há poucos minutos. A Digital Spider arquitetou um\
  \\ngolpe classificado como Crime contra a humanidade, o nível mais grave de ato criminoso.\
  \\n\
  \\nAtravés das ações de um agente da AGI (Agência Global de Inteligência) que preferiu se manter anônimo, e das\
  \\nhabilidades de um misterioso hacker, a rede privada da Digital Spider foi invadida hoje. O que foi encontrado chocou o\
  \\nmundo: detalhes sobre um projeto secreto chamado de \"Puppet_M@ster\".\
  \\n\
  \\nSegundo os arquivos extraídos da Digital Spider, o tão aclamado projeto Connected World nada mais era do que uma farsa\
  \\npara o real objetivo da empresa. O que foi descoberto parece tema de ficção científica, mas a própria AGI divulgou\
  \\npublicamente que esta é uma ameaça real, e que deve ser tratada com o máximo de urgência.\
  \\n\
  \\nO projeto Puppet_M@ster envolve nada mais nada menos do que controlar as mentes humanas de todas as partes do mundo\
  \\natravés da tecnologia da GhostWeb. Pelo que foi dito pela AGI, a nova radiofrequência possui a estranha capacidade de\
  \\nalterar as sinapses cerebrais, dessa forma se tornando um potencial controlador de mentes. Pelo que é dito nos\
  \\narquivos, a Digital Spider faria uso de tal atrocidade para colocar a empresa permanentemente no topo de tudo e de\
  \\ntodos. A Digital Spider seria bem-sucedida no que monstros históricos como Hitler apenas tentaram: ter o mundo inteiro\
  \\nnas palmas das mãos. É bem provável que o mundo deva o direito do livre arbítrio ao trabalho conjunto entre um agente\
  \\nda lei e um criminoso. \
  \\n\
  \\nAgora, a Digital Spider está sofrendo um imenso processo de queda, a medida que órgãos de todas as partes do mundo se\
  \\nunem para derrubar a grande besta empresarial pedaço por pedaço.\
  \\n\
  \\nHá aqueles que dizem que tudo isso é apenas o começo de uma guerra para adquirir o controle dessa aterrorizante\
  \\ntecnologia, e tal afirmação é difícil de ser negada atualmente.\
  \\n\
  \\nO que essa reviravolta assustadora trará para o futuro de nossa sociedade, só o tempo dirá. Mas uma coisa é certa: o\
  \\nmundo jamais será o mesmo.\
  \\n"


mensagem1 :: String
mensagem1 =
  "M3lch10r: Oi, ouvi falar que você sabe hackear coisas. Gostaria que fizesse um pequeno serviço pra mim."


mensagem2 :: String
mensagem2 =
  "M3lch10r: Você sabe como isso aqui funciona. Só usuários \"verificados\" pelos chefões do Abyss podem entrar\
  \\nem contato com vocês. Além disso, mesmo se eu fosse um tira, o que diabos eu poderia fazer? Todo mundo é\
  \\npraticamente irrastreável aqui, contanto que não façam nada muito estúpido. Agora, você quer o trabalho\
  \\nou não?\
  \\n"


mensagem3 :: String
mensagem3 =
  "M3lch10r: E eu aqui achando que você levaria o trabalho a sério. Tudo bem. Mas supondo que eu não tenha\
  \\nouvido errado, enquanto eu não achar alguém mais disposto a me ajudar, vou estar por aqui se mudar de\
  \\nideia (mas não por muito tempo).\
  \\n"


mensagem4 :: String
mensagem4 =
  "M3lch10r: Sabe a Digital Spider? Então, preciso que você invada ela e \"pegue emprestado\" alguns dados\
  \\npra mim. Quero tudo o que você puder encontrar sobre a GhostWeb, sobre o projeto Connected World, e, se\
  \\npossível, sobre algo chamado \"Puppet_M@ster\". Não se preocupe se não achar nada sobre este último. Ele\
  \\né mais uma lenda urbana do que qualquer outra coisa. Enfim, se olhar em sua conta bancária do Abyss,\
  \\nverá que o pagamento já foi enviado e só aguarda a confirmação de que nosso contrato foi concluído para\
  \\nque você de fato receba o dinheiro. Verá também que é uma quantia bem generosa. Posso contar com seus\
  \\nserviços?\
  \\n"


mensagem5 :: String
mensagem5 =
  "M3lch10r: Fico no aguardo.\
  \\n"

mensagem6 :: String
mensagem6 =
  "M3lch10r: Você realmente conseguiu! Eu admito, por vários momentos duvidei de\
  \\nvocê. Tenho que aprender a confiar mais na minha rede de contatos. Enfim, saiba\
  \\nque você não apenas prestou a MIM um grande serviço, mas provavelmente ao\
  \\nmundo inteiro. Te agradeço de verdade.\
  \\n"

mensagem7 :: String
mensagem7 =
  "M3lch10r: Sabe aquela \"lenda urbana\" que eu te falei? Aquilo sobre um tal de Puppet_M@ster? Acontece que\
  \\nessa coisa é muito mais real do que eu gostaria. Acho que não preciso te explicar. Se quiser saber mais,\
  \\napenas fique de olho nas notícias. Tenho certeza de que não vai demorar muito até aqueles desgraçados da\
  \\nDigital Spider serem desmascarados globalmente. Ah, já ia esquecendo: eu faço parte da AGI (Agência Global\
  \\nde Inteligência). Sim, sim, acontece que eu SOU um \"tira\", como vocês malandros dizem. Mas não se preocupe.\
  \\nJá que você foi tão cooperativo, não tenho interesse em te prender... ainda. Mas saiba que você se daria\
  \\nmuito bem por aqui na AGI. Sempre precisamos de pessoas com suas... habilidades. Pense no assunto. Você sabe\
  \\nonde nos encontrar se estiver interessado. Agora eu pretendo desaparecer dessa rede. Acho que os chefões\
  \\ndo Abyss vão me deletar daqui em breve de qualquer forma. Mais uma vez, em nome de toda a AGI e, pra ser\
  \\nsincero, de todo o mundo: muito obrigado.\
  \\n"

gameOverMsg :: String
gameOverMsg =
  "::::::::::::NOTA OFICIAL DOS DESENVOLVEDORES::::::::::::\
  \\n\
  \\nNós do Abyss lamentamos seu miserável fracasso. Infelizmente, para você, não podemos deixar que sua\
  \\nincompetência nos arraste junto com você para a fossa. Você está imediatamente desligado do nosso sistema.\
  \\nA partir de agora, não temos ligação alguma com você, não o conhecemos, e, para prevenir que nenhuma de\
  \\nnossas informações será vazada para ouvidos indesejáveis, garantiremos que você permaneça em completo e\
  \\nabsoluto silêncio.\
  \\n\
  \\nObrigado por ter escolhido o Abyss!\
  \\n\
  \\nAh, e é melhor não pisar lá fora. Bem, na verdade não faz diferença. Eles já estão dentro :).\
  \\n\
  \\n#######GAME OVER#######\
  \\n"


gameOver :: IO()
gameOver = do
  putStrLn gameOverMsg
  menu "inicio do contrato"


derrubaFuncs :: IO()
derrubaFuncs = do
 num <- randomRIO (10,25::Int)
 putStrLn "Bloqueando o acesso dos funcionários online..."
 putStrLn ""
 let funcsRestantes = (37 - num)
 putStrLn ((show num) ++ " funcionários bloqueados com sucesso. Restam " ++ (show funcsRestantes) ++ " online.")
 if num > 18 then do
  putStrLn ""
  putStrLn "Mais de 50% dos usuários online foram derrubados."
  putStrLn ""
  putStrLn "Nível de proteção da rede Digital Spider diminuído!"
  ninhoDaAranhaMenu2 funcsRestantes
 else do
  putStrLn "Poucos usuários derrubados. Ataque ineficaz."
  putStrLn "Nível de proteção da rede Digital Spider não sofreu alterações."
  putStrLn ""
  putStrLn "Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador..."
  putStrLn ""
  putStrLn ""
  putStrLn "Falha no bloqueio. Você foi rastreado! Sua identidade e localização foram comprometidos!"
  gameOver

ninhoDaAranhaMenu :: IO()
ninhoDaAranhaMenu = do
  putStrLn cabecalhoContrato1
  putStrLn ""
  putStrLn "Funcionários online: 37"
  putStrLn "Nível de proteção da rede: Muito Alto"
  putStrLn ""
  putStrLn ""
  putStrLn "Chance do invasor ser rastreado ao invadir: Extremamente Alta."
  putStrLn "Dificuldade atual de uma invasão direta: Extremamente Alta."
  putStrLn "Melhor curso de ação: diminuir segurança antes de realizar a invasão."
  putStrLn ""
  putStrLn ""
  putStrLn "1. Iniciar invasão"
  putStrLn "2. Derrubar funcionários da rede"
  putStrLn "3. Hackear drone <Indisponível>"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  op <- getLine
  if op == "1"
    then do
      putStrLn "Iniciando invasão..."
      putStrLn ""
      putStrLn "Atravessando firewall..."
      putStrLn ""
      invasao "extremamente alta"
  else if op == "2"
    then do 
      derrubaFuncs
  else if op == "3"
    then do 
      putStrLn "OPERAÇÃO ATUALMENTE INDISPONÍVEL!"
      ninhoDaAranhaMenu
  else do
    putStrLn operacaoInvalida
    contratoNinhoDaAranha

-- ninho da Aranha após derrubar funcionários
ninhoDaAranhaMenu2 :: Int -> IO()
ninhoDaAranhaMenu2 funcsRestantes = do
  putStrLn cabecalhoContrato1
  putStrLn ""
  putStrLn ("Funcionários online: " ++ (show funcsRestantes))
  putStrLn "Nível de proteção da rede: Baixo"
  putStrLn ""
  putStrLn ""
  putStrLn "Chance do invasor ser rastreado ao invadir: Baixo."
  putStrLn "Dificuldade atual de uma invasão direta: Baixo."
  putStrLn "Melhor curso de ação: Invasão direta."
  putStrLn ""
  putStrLn ""
  putStrLn "1. Iniciar invasão"
  putStrLn "2. Hackear drone <Indisponível>"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  op <- getLine
  if op == "1"
    then do
      putStrLn "Iniciando invasão..."
      putStrLn ""
      putStrLn "Atravessando firewall..."
      putStrLn ""
      invasao "baixa"
  else if op == "2"
    then do 
      putStrLn "OPERAÇÃO ATUALMENTE INDISPONÍVEL!"
      ninhoDaAranhaMenu2 funcsRestantes
  else do
    putStrLn operacaoInvalida
    ninhoDaAranhaMenu2 funcsRestantes

ninhoDaAranhaMenu3 :: IO()
ninhoDaAranhaMenu3 = do
  putStrLn cabecalhoContrato1
  putStrLn ""
  putStrLn "1. Enviar 3 arquivos baixados para M3lch10r"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  op <- getLine
  if op == "1"
    then do
      putStrLn "Enviando..."
      putStrLn "1/3..."
      putStrLn "2/3..."
      putStrLn "3/3"
      putStrLn "Envio completo!"
      ninhoDaAranhaMenu4
  else do
    putStrLn operacaoInvalida
    ninhoDaAranhaMenu3

ninhoDaAranhaMenu4 :: IO()
ninhoDaAranhaMenu4 = do
  putStrLn cabecalhoContrato1
  putStrLn ""
  putStrLn "CONTRATO FINALIZADO!"
  putStrLn ""
  putStrLn "1. Voltar a Contratos"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  op <- getLine
  if op == "1"
    then do
      contratos "contrato finalizado"
  else do
    putStrLn operacaoInvalida
    ninhoDaAranhaMenu4


-- Contrato 1 : Ninho da Aranha.
contratoNinhoDaAranha :: IO()
contratoNinhoDaAranha = do
  putStrLn cabecalhoContrato1
  putStrLn ""
  putStrLn "1. Analisar a rede interna da Digital Spider"
  putStrLn "2. Voltar a Contratos"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then do
    ninhoDaAranhaMenu
  else if operacao == "2"
    then do 
      contratos "inicio do contrato"
  else do
    putStrLn operacaoInvalida
    contratos "inicio do contrato"


-- Main, inicia o jogo na tela de login
main = do
  login

-- Retorna nome de usuario logado
lerUserAtual :: IO String
lerUserAtual = do
 arq <- openFile "atualUser.txt" ReadMode
 user <- hGetContents arq
 return user

-- Primeira tela de interação com o usuário. Nela, o usuário escolhe entra cadastrar uma
-- nova conta, acessar uma conta já existente ou sair da aplicação.
login :: IO()
login = do
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::LOGIN:::::::::::::"
  putStrLn "Já possui uma conta? (S/N) ou Q para sair!"
  possuiConta <- getLine
  case possuiConta of
   "S" -> signIn
   "N" -> signUp
   "Q" -> putStrLn "\nADEUS!!"
   _ -> do 
    putStrLn "Opção Inválida!"
    login

-- Menu de login: Procura um arquivo com o nome do login do usuário
-- Se não existir, retorna erro, caso contrário, acessa o arquivo
-- E compara as senhas. Se as senhas forem diferentes, retorna erro.
signIn :: IO()
signIn = do
 putStrLn "LOGIN: "
 log <- getLine
 fileExists <- doesFileExist (log ++ ".txt")
 if fileExists
  then do 
  arq <- openFile (log ++ ".txt") ReadMode
  user <- hGetContents arq
  putStrLn "SENHA: "
  senha <- getLine
  if senha == user
   then do
   hClose arq
   arq <- openFile "atualUser.txt" WriteMode
   hPutStr arq log
   hFlush arq
   hClose arq
   menu "evento 0"
   else do
   putStrLn "SENHA INCORRETA!!!\n\n\n\n"
   hClose arq
   signIn
  else do
  putStrLn "Usuário não encontrado!\n\n\n\n"
  login

--Menu de Cadastro: Cadastra um novo usuário. O login é usado como nome do arquivo, onde serao
--guardadas informações como senha, e os dados de permanencia. A senha é usada para acessar o arquivo dentro
--da aplicação.
signUp :: IO()
signUp = do
 putStrLn "LOGIN DESEJADO: "
 log <- getLine
 fileExists <- doesFileExist (log ++ ".txt")
 if fileExists
  then do
  putStrLn "LOGIN JÁ EXISTE!!\nEscolha Outro!\n\n"
  signUp
  else do
  arq <- openFile (log ++ ".txt") WriteMode
  putStrLn "SENHA: "
  senha <- getLine
  hPutStr arq senha
  putStrLn "Usuário criado com sucesso!!\n\n\n\n"
  hFlush arq
  hClose arq
  login


--Menu interno depois de fazer login.
--Nele é possivel acessar outros menus. Parâmetro serve como um marcador
--Para indicar o progresso do jogador na aplicação.
menu :: String -> IO()
menu "evento 0" = do
  userAtual <- lerUserAtual
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ("Olá " ++ (userAtual) ++ ", seja bem-vindo!")
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (2)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "evento 0"

menu "noticia 1 lida" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (1)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "noticia 1 lida"

menu "noticia 2 lida" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (1)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "noticia 2 lida"

menu "noticias 1 e 2 lidas" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens (1)"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "noticias 1 e 2 lidas"

menu "inicio do contrato" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos (1)"
  putStrLn "4. Notícias"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "inicio do contrato"

menu "contrato finalizado" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens (1)"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "contrato finalizado" -- ATENÇÃO! TODAS AS FUNÇÕES PRECISAM SER APTAS A RECEBER ESSE EVENTO!

menu "ultima mensagem" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (1)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "ultima mensagem"

menu evento = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) evento

--Tela de mensagens. Onde fica armazenado as mensagens recebidas por
--NPCs do jogo, para contatos e contratos.
-- Assim como no menu, o parâmetro serve como um marcador do progresso do usuário
mensagens :: String -> IO()
mensagens "evento 0" = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 0 novas mensagens"
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then menu "evento 0"
  else do
    putStrLn operacaoInvalida
    mensagens "evento 0"

mensagens "noticias 1 e 2 lidas" = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 1 nova mensagem"
  putStrLn ""
  putStrLn "1. (!) M3lch10r: Oi, ouvi falar que você sabe hackear coisas..."
  putStrLn "2. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then chatPrivado [""]
  else if operacao == "2" then menu "noticias 1 e 2 lidas"
  else do
    putStrLn operacaoInvalida
    mensagens "noticias 1 e 2 lidas"

mensagens "inicio do contrato" = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 0 novas mensagens"
  putStrLn ""
  putStrLn "M3lch10r: Fico no aguardo."
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then menu "inicio do contrato"
  else do
    putStrLn operacaoInvalida
    mensagens "inicio do contrato"

mensagens "contrato finalizado" = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 1 nova mensagem"
  putStrLn ""
  putStrLn "1. (!) M3lch10r: Você realmente conseguiu!"
  putStrLn ""
  putStrLn "2. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then chatPrivado2 ""
  else if operacao == "2" then menu "contrato finalizado"
  else do
    putStrLn operacaoInvalida
    mensagens "contrato finalizado"

mensagens "ultima mensagem" = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 0 novas mensagens"
  putStrLn ""
  putStrLn "M3lch10r saiu."
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then menu "ultima mensagem"
  else do
    putStrLn operacaoInvalida
    mensagens "ultima mensagem"

mensagens "fim de jogo" = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 0 novas mensagens"
  putStrLn ""
  putStrLn "M3lch10r saiu."
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then menu "fim de jogo"
  else do
    putStrLn operacaoInvalida
    mensagens "fim de jogo"

mensagens evento = do
  putStrLn cabecalhoMensagens
  putStrLn "Você possui 0 novas mensagens"
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" then menu evento
  else do
    putStrLn operacaoInvalida
    mensagens evento


verificaMsgs :: String -> [String] -> IO()
verificaMsgs msg msgsAnteriores
  | not (msg `elem` msgsAnteriores) = putStrLn msg
  | otherwise = putStr ""


-- Chat interagível com NPC
-- Nele é possível ter várias opções de conversa
chatPrivado :: [String] -> IO()
chatPrivado msgsEnviadas@(ultimaMsg:msgsAnteriores) = do
  putStrLn ""
  if ultimaMsg == "" then do
    putStrLn mensagem1
    putStrLn ""
    putStrLn "-> Ok, pode mandar."
    putStrLn "-> E como sei que você não é um tira?"
    putStrLn "-> Você ouviu errado. Cai fora."
    putStrLn ""
    putStrLn "Digite sua resposta: "
    resposta <- getLine
    putStrLn ""
    if resposta == "Ok, pode mandar." then do
      putStrLn "<usuario>: Ok, pode mandar."
      chatPrivado (["-> Ok, pode mandar."] ++ msgsEnviadas)
    else if resposta == "E como sei que você não é um tira?" then do
      putStrLn "<usuario>: E como sei que você não é um tira?"
      chatPrivado (["-> E como sei que você não é um tira?"] ++ msgsEnviadas)
    else if resposta == "Você ouviu errado. Cai fora." then do
      putStrLn "<usuario>: Você ouviu errado. Cai fora."
      chatPrivado (["-> Você ouviu errado. Cai fora."] ++ msgsEnviadas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      chatPrivado msgsEnviadas
  
  else if ultimaMsg == "-> E como sei que você não é um tira?" then do
    putStrLn mensagem2
    putStrLn ""
    verificaMsgs "-> Ok, pode mandar." msgsEnviadas
    verificaMsgs "-> Você ouviu errado. Cai fora." msgsEnviadas
    putStrLn ""
    putStrLn "Digite sua resposta: "
    resposta <- getLine
    putStrLn ""
    if resposta == "Ok, pode mandar." then do
      putStrLn "<usuario>: Ok, pode mandar."
      chatPrivado (["-> Ok, pode mandar."] ++ msgsEnviadas)
    else if resposta == "Você ouviu errado. Cai fora." then do
      putStrLn "<usuario>: Você ouviu errado. Cai fora."
      chatPrivado (["-> Você ouviu errado. Cai fora."] ++ msgsEnviadas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      chatPrivado msgsEnviadas
  
  else if ultimaMsg == "-> Você ouviu errado. Cai fora." then do
    putStrLn mensagem3
    putStrLn ""
    verificaMsgs "-> Ok, pode mandar." msgsEnviadas
    verificaMsgs "-> E como sei que você não é um tira?" msgsEnviadas
    putStrLn ""
    putStrLn "Digite sua resposta: "
    resposta <- getLine
    putStrLn ""
    if resposta == "Ok, pode mandar." then do
      putStrLn "<usuario>: Ok, pode mandar."
      chatPrivado (["-> Ok, pode mandar."] ++ msgsEnviadas)
    else if resposta == "E como sei que você não é um tira?" then do
      putStrLn "<usuario>: E como sei que você não é um tira?"
      chatPrivado (["-> E como sei que você não é um tira?"] ++ msgsEnviadas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      chatPrivado msgsEnviadas
  
  else if ultimaMsg == "-> Ok, pode mandar." then do
    putStrLn mensagem4
    putStrLn ""
    putStrLn "-> Considere feito."
    putStrLn ""
    putStrLn "Digite sua resposta: "
    resposta <- getLine
    putStrLn ""
    if resposta == "E como sei que você não é um tira?" then do
      putStrLn "<usuario>: E como sei que você não é um tira?"
      chatPrivado (["-> E como sei que você não é um tira?"] ++ msgsEnviadas)
    else if resposta == "Você ouviu errado. Cai fora." then do
      putStrLn "<usuario>: Você ouviu errado. Cai fora."
      chatPrivado (["-> Você ouviu errado. Cai fora."] ++ msgsEnviadas)
    else if resposta == "Considere feito." then do
      putStrLn "<usuario>: Considere feito."
      chatPrivado (["-> Considere feito."] ++ msgsEnviadas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      chatPrivado msgsEnviadas
  
  else if ultimaMsg == "-> Considere feito." then do
    putStrLn mensagem5
    putStrLn ""
    putStrLn "1. Voltar ao Menu"
    putStrLn ""
    putStrLn "Digite o número da operação desejada: "
    operacao <- getLine
    putStrLn ""
    if operacao == "1" then do mensagens "inicio do contrato"
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      chatPrivado msgsEnviadas
  
  else (chatPrivado msgsEnviadas)


chatPrivado2 :: String -> IO()
chatPrivado2 "" = do 
  putStrLn ""
  putStrLn mensagem6
  putStrLn ""
  putStrLn "-> Do que está falando?"
  putStrLn ""
  putStrLn "Digite sua resposta: "
  resposta <- getLine
  putStrLn ""
  if resposta == "Do que está falando?" then do
    putStrLn "<usuario>: Do que está falando?"
    putStrLn ""
    chatPrivado2 "ultima mensagem"
  else do
    putStrLn operacaoInvalida
    chatPrivado2 ""
chatPrivado2 "ultima mensagem" = do
  putStrLn ""
  putStrLn mensagem7
  putStrLn ""
  putStrLn "M3lch10r saiu."
  putStrLn ""
  putStrLn "1. Voltar a Mensagens."
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  resposta <- getLine
  putStrLn ""
  if resposta == "1" then mensagens "ultima mensagem"
  else do
    putStrLn operacaoInvalida
    chatPrivado2 "ultima mensagem"

--Tela de perfil do usuário
--Será mostrado detalhes do perfil do usuário

perfil :: String -> IO()
perfil evento = do
  userAtual <- lerUserAtual
  arq <- openFile (userAtual ++ ".txt") ReadMode
  senha <- hGetContents arq
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ":::::::::::::PERFIL:::::::::::::"
  putStrLn ""
  putStrLn "***********ID***********"
  putStrLn ("Nickname:" ++ (userAtual))
  putStr ""
  putStrLn ("Senha: " ++ (senha))
  putStrLn ""
  putStrLn "*****HABILIDADES*****"
  putStrLn ""
  putStrLn "AQUI VAI A LISTA DE HABILIDADES"
  putStrLn ""
  putStrLn "*****EXPERIÊNCIA*****"
  putStrLn "Pontos: <quantidade de pontos>"
  putStrLn "Fama: Stalker Amador"
  putStrLn ""
  putStrLn "1.Melhoria de Habilidade"
  putStrLn "2.Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada:"
  operacao <- getLine
  if operacao == "1" then perfil evento{-MAIS UM PARÂMETRO ADC-}
  else if operacao == "2" then menu evento{-TEMPORARIO-}
  else do
    putStrLn operacaoInvalida
    perfil evento



--Tela de contratos do usuário
--Será mostrado detalhes das missões do usuário(objetivo, recompensas etc)
contratos :: String -> IO()
contratos "evento 0" = do
  putStrLn cabecalhoContratos
  putStrLn "*********ATIVOS**********"
  putStrLn "Você possui 0 contrato(s) ativo(s)."
  putStrLn ""
  putStrLn "******FINALIZADOS*******"
  putStrLn "Você possui 0 contrato(s) finalizado(s)."
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      menu "evento 0"
  else do
    putStrLn operacaoInvalida
    contratos "evento 0"

contratos "inicio do contrato" = do
  putStrLn cabecalhoContratos
  putStrLn "*********ATIVOS**********"
  putStrLn "Você possui 1 contrato(s) ativo(s)."
  putStrLn ""
  putStrLn "1. (!) O Ninho da Aranha"
  putStrLn ""
  putStrLn "******FINALIZADOS*******"
  putStrLn "Você possui 0 contrato(s) finalizado(s)."
  putStrLn ""
  putStrLn "2. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      contratoNinhoDaAranha
      contratos "inicio do contrato"
  else if operacao == "2"
    then do
      menu "inicio do contrato"
  else do
    putStrLn operacaoInvalida
    contratos "inicio do contrato"

contratos "contrato finalizado" = do
  putStrLn cabecalhoContratos
  putStrLn "*********ATIVOS**********"
  putStrLn "Você possui 0 contrato(s) ativo(s)."
  putStrLn ""
  putStrLn "******FINALIZADOS*******"
  putStrLn "Você possui 1 contrato(s) finalizado(s)."
  putStrLn "O Ninho da Aranha"
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      menu "contrato finalizado"
  else do
    putStrLn operacaoInvalida
    contratos "contrato finalizado"

contratos "ultima mensagem" = do
  putStrLn cabecalhoContratos
  putStrLn "*********ATIVOS**********"
  putStrLn "Você possui 0 contrato(s) ativo(s)."
  putStrLn ""
  putStrLn "******FINALIZADOS*******"
  putStrLn "Você possui 1 contrato(s) finalizado(s)."
  putStrLn "O Ninho da Aranha"
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      menu "ultima mensagem"
  else do
    putStrLn operacaoInvalida
    contratos "ultima mensagem"

contratos "fim de jogo" = do
  putStrLn cabecalhoContratos
  putStrLn "*********ATIVOS**********"
  putStrLn "Você possui 0 contrato(s) ativo(s)."
  putStrLn ""
  putStrLn "******FINALIZADOS*******"
  putStrLn "Você possui 1 contrato(s) finalizado(s)."
  putStrLn "O Ninho da Aranha"
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      menu "fim de jogo"
  else do
    putStrLn operacaoInvalida
    contratos "fim de jogo"

contratos evento = do
  putStrLn cabecalhoContratos
  putStrLn "*********ATIVOS**********"
  putStrLn "Você possui 0 contrato(s) ativo(s)."
  putStrLn ""
  putStrLn "******FINALIZADOS*******"
  putStrLn "Você possui 0 contrato(s) finalizado(s)."
  putStrLn ""
  putStrLn "1. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      menu evento
  else do
    putStrLn operacaoInvalida
    contratos evento


-- FUNÇÕES PARA INVASÃO:
  

invasao :: String -> IO() -- TEMPORARIO! Deve retornar um IO()
invasao "extremamente alta" = do
  dado1 <- getStdRandom $ randomR (1, 6 :: Int)
  dado2 <- getStdRandom $ randomR (1, 6 :: Int)
  dado3 <- getStdRandom $ randomR (1, 6 :: Int)
  if (dado1 > 4 && dado2 > 4 && dado3 > 4) then do
    putStrLn "Rede interna Digital Spider invadida com sucesso!"
    roubarArquivos [""]
  else do
    putStrLn "Acesso bloqueado. Invasão mal sucedida."
    putStrLn ""
    putStrLn "Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador..."
    putStrLn ""
    putStrLn "Falha no bloqueio. Você foi rastreado! Sua identidade e localização foram comprometidos!"
    putStrLn ""
    gameOver
invasao "baixa" = do
  dado1 <- getStdRandom $ randomR (1, 6 :: Int)
  dado2 <- getStdRandom $ randomR (1, 6 :: Int)
  dado3 <- getStdRandom $ randomR (1, 6 :: Int)
  if (dado1 > 2 || dado2 > 2 || dado3 > 2) then do
    putStrLn "Rede interna Digital Spider invadida com sucesso!"
    roubarArquivos [""]
  else do
    putStrLn "Acesso bloqueado. Invasão mal sucedida."
    putStrLn ""
    putStrLn "Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador..."
    putStrLn ""
    putStrLn "Falha no bloqueio. Você foi rastreado! Sua identidade e localização foram comprometidos!"
    putStrLn ""
    gameOver


verificaPesquisa :: String -> [String] -> IO()
verificaPesquisa pesquisa pesquisasAnteriores
  | not (pesquisa `elem` pesquisasAnteriores) = putStrLn pesquisa
  | otherwise = putStr ""


roubarArquivos :: [String] -> IO()
roubarArquivos pesquisasFeitas@(ultimaPesquisa:pesquisasAnteriores) = do
  putStrLn "DIGITAL SPIDER - BANCO DE DADOS"
  putStrLn ""
  if ultimaPesquisa == "" then do
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn "Informações a pesquisar:"
    putStrLn ""
    putStrLn "-> Connected World"
    putStrLn "-> GhostWeb"
    putStrLn "-> Pupp3t_M@st3r"
    putStrLn ""
    putStrLn "Pesquise por um arquivo digitando seu nome: "
    resposta <- getLine
    putStrLn ""
    if resposta == "Connected World" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "Connected_World.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      roubarArquivos (["-> Connected World"] ++ pesquisasFeitas)
    else if resposta == "GhostWeb" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "GhostWeb.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      roubarArquivos (["-> GhostWeb"] ++ pesquisasFeitas)
    else if resposta == "Pupp3t_M@st3r" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "Pupp3t_M@ster.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      roubarArquivos (["-> Pupp3t_M@st3r"] ++ pesquisasFeitas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      roubarArquivos pesquisasFeitas
  
  else if ultimaPesquisa == "-> Connected World" then do
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn "Informações a pesquisar:"
    putStrLn ""
    verificaPesquisa "-> GhostWeb" pesquisasFeitas
    verificaPesquisa "-> Pupp3t_M@st3r" pesquisasFeitas
    putStrLn ""
    putStrLn "Pesquise por um arquivo digitando seu nome: "
    resposta <- getLine
    putStrLn ""
    if resposta == "GhostWeb" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "GhostWeb.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      if ("-> Pupp3t_M@st3r" `elem` pesquisasFeitas) then
        roubarArquivos ["finalizado"]
      else roubarArquivos (["-> GhostWeb"] ++ pesquisasFeitas)
    else if resposta == "Pupp3t_M@st3r" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "Pupp3t_M@ster.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      if ("-> GhostWeb" `elem` pesquisasFeitas) then
        roubarArquivos ["finalizado"]
      else roubarArquivos (["-> Pupp3t_M@st3r"] ++ pesquisasFeitas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      roubarArquivos pesquisasFeitas
  
  else if ultimaPesquisa == "-> GhostWeb" then do
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn "Informações a pesquisar:"
    putStrLn ""
    verificaPesquisa "-> Connected World" pesquisasFeitas
    verificaPesquisa "-> Pupp3t_M@st3r" pesquisasFeitas
    putStrLn ""
    putStrLn "Pesquise por um arquivo digitando seu nome: "
    resposta <- getLine
    putStrLn ""
    if resposta == "Connected World" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "Connected_World.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      if ("-> Pupp3t_M@st3r" `elem` pesquisasFeitas) then
        roubarArquivos ["finalizado"]
      else roubarArquivos (["-> Connected World"] ++ pesquisasFeitas)
    else if resposta == "Pupp3t_M@st3r" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "Pupp3t_M@ster.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      if ("-> Connected World" `elem` pesquisasFeitas) then
        roubarArquivos ["finalizado"]
      else roubarArquivos (["-> Pupp3t_M@st3r"] ++ pesquisasFeitas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      roubarArquivos pesquisasFeitas
        
  else if ultimaPesquisa == "-> Pupp3t_M@st3r" then do
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn "Informações a pesquisar:"
    putStrLn ""
    verificaPesquisa "-> Connected World" pesquisasFeitas
    verificaPesquisa "-> GhostWeb" pesquisasFeitas
    putStrLn ""
    putStrLn "Pesquise por um arquivo digitando seu nome: "
    resposta <- getLine
    putStrLn ""
    if resposta == "Connected World" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "Connected_World.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      if ("-> GhostWeb" `elem` pesquisasFeitas) then
        roubarArquivos ["finalizado"]
      else roubarArquivos (["-> Connected World"] ++ pesquisasFeitas)
    else if resposta == "GhostWeb" then do
      putStrLn "Pesquisando..."
      putStrLn ""
      putStrLn "1 resultado encontrado:"
      putStrLn ""
      putStrLn "GhostWeb.zip"
      putStrLn ""
      putStrLn "Baixar arquivo?"
      putStrLn ""
      putStrLn "Digite sua resposta: "
      baixar <- getLine
      if baixar == "sim" || baixar == "Sim" then do
        putStrLn "Baixando..."
        putStrLn ""
        putStrLn "Baixado!"
      else do
        putStrLn "-----------------------------------------------"
        roubarArquivos pesquisasFeitas
      putStrLn ""
      if ("-> Connected World" `elem` pesquisasFeitas) then
        roubarArquivos ["finalizado"]
      else roubarArquivos (["-> GhostWeb"] ++ pesquisasFeitas)
    else do
      putStrLn operacaoInvalida
      putStrLn "-----------------------------------------------"
      roubarArquivos pesquisasFeitas

  else if ultimaPesquisa == "finalizado" then do
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn "Todas as informacoes necessarias foram baixadas."
    putStrLn ""
    putStrLn "1. Sair do banco de dados."
    putStrLn ""
    putStrLn "Digite o número da operação desejada: "
    operacao <- getLine
    putStrLn ""
    if operacao == "1" then
      ninhoDaAranhaMenu3
    else do
      putStrLn operacaoInvalida
      roubarArquivos ["finalizado"]

  else roubarArquivos pesquisasFeitas

--Tela de notícia
--Onde o usuário recebe informações sobre o universo do jogo, e atualizações sobre 
--suas próprias ações
noticia :: String -> IO ()
noticia "evento 0" = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 2 novas notícias."
  putStrLn ""
  putStrLn "1. (!) Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. (!) Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      putStrLn noticia1
      noticia "noticia 1 lida"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticia 2 lida"
  else if operacao == "3"
    then
      menu "evento 0"
  else do
    putStrLn operacaoInvalida
    noticia "evento 0"

noticia "noticia 1 lida" = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 1 nova notícia."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. (!) Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "noticia 1 lida"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticias 1 e 2 lidas"
  else if operacao == "3"
    then
      menu "noticia 1 lida"
  else do
    putStrLn operacaoInvalida
    noticia "noticia 1 lida"

noticia "noticia 2 lida" = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 1 nova notícia."
  putStrLn ""
  putStrLn "1. (!) Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "noticias 1 e 2 lidas"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticia 2 lida"
  else if operacao == "3"
    then
      menu "noticia 2 lida"
  else do
    putStrLn operacaoInvalida
    noticia "noticia 2 lida"

noticia "noticias 1 e 2 lidas" = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 0 novas notícias."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "noticias 1 e 2 lidas"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticias 1 e 2 lidas"
  else if operacao == "3"
    then
      menu "noticias 1 e 2 lidas"
  else do
    putStrLn operacaoInvalida
    noticia "noticias 1 e 2 lidas"

noticia "ultima mensagem" = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 1 nova notícia."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn "3. (!) URGENTE: Projeto Connected World É Um Golpe de Nível Mundial!"
  putStrLn ""
  putStrLn "4. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "ultima mensagem"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "ultima mensagem"
  else if operacao == "3"
    then do
      putStrLn noticia3
      noticia "fim de jogo"
  else if operacao == "4"
    then
      menu "ultima mensagem"
  else do
    putStrLn operacaoInvalida
    noticia "ultima mensagem"

noticia "fim de jogo" = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 0 novas notícias."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn "3. URGENTE: Projeto Connected World É Um Golpe de Nível Mundial!"
  putStrLn ""
  putStrLn "4. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "fim de jogo"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "fim de jogo"
  else if operacao == "3"
    then do
      putStrLn noticia3
      noticia "fim de jogo"
  else if operacao == "4"
    then
      menu "fim de jogo"
  else do
    putStrLn operacaoInvalida
    noticia "fim de jogo"

noticia evento = do
  putStrLn cabecalhoNoticias
  putStrLn "Você possui 0 novas notícias."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia evento
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia evento
  else if operacao == "3"
    then
      menu evento
  else do
    putStrLn operacaoInvalida
    noticia evento

--Tela de desenvolvedores que criaram esse jogo incrível e de muito bom gosto
--Ordenado em ordem alfabética
desenvolvedores :: String -> IO()
desenvolvedores evento = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "1. Caio José dos Santos Arruda"
  putStrLn "2. Enock Bezerra Ferreira de Souza"
  putStrLn "3. João Vitor Patrício Romão"
  putStrLn "4. Jonatha Kennedy Monteiro da Costa"
  putStrLn "5. Thiago Farias de Almeida"
  cm <- getLine
  menu evento
