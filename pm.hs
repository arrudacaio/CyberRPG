import System.Directory
import System.IO

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


cabecalhoChat :: String
cabecalhoChat =
  "\
  \\n:::::::::::::M3lch10r:::::::::::::\
  \\n\
  \\n"


operacaoInvalida :: String
operacaoInvalida = "Operação inválida! Tente novamente."


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
  "<AINDA NÃO IMPLEMENTADO>"


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
  \\nserviços?"


mensagem5 :: String
mensagem5 =
  "M3lch10r: Fico no aguardo."


main = do
  login


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


menu :: String -> IO()
menu "evento 0" = do
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
  if operacao == "1" then chatPrivado [""] {-MAIS UM PARÂMETRO ADC-}
  else if operacao == "2" then menu "noticias 1 e 2 lidas" {-TEMPORARIO-}
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


perfil :: String -> IO()
perfil evento = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "Imagina a tela de perfil aqui"
  putStrLn "Pressione ENTER para sair"
  cm <- getLine
  menu evento


contratos :: String -> IO()
contratos evento = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "Imagina a tela de contratos aqui"
  putStrLn "Pressione ENTER para sair"
  cm <- getLine
  menu evento


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


desenvolvedores :: String -> IO()
desenvolvedores evento = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "1. Caio"
  putStrLn "2. Enock"
  putStrLn "3. Joao"
  putStrLn "4. Jonatha"
  putStrLn "5. Thiago, senhor supremo do universo, e do conhecimento em Haskell..."
  putStrLn "... Curvem-se perante sua infinita sabedoria, mortais"
  cm <- getLine
  menu evento