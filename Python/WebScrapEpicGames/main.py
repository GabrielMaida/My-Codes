# Importação das bibliotecas
from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from datetime import date


def configuracaoDriver():
    # Caminho do executável do ChromeDriver
    chrome_path = 'C:\Desenvolvimento\workspace\WebScrapEpicGames\chromedriver.exe'

    # Configuração do WebDriver do Chrome
    chrome_service = ChromeService(chrome_path)
    driver_config = webdriver.Chrome(service=chrome_service)

    # URL do site para fazer o Web Scraping
    URL_BASE = "https://store.epicgames.com/en-US/?lang=en-US"

    # Abre a URL no navegador
    driver_config.get(URL_BASE)

    # Encontrar os elementos que contêm os jogos gratuitos
    games = driver_config.find_elements("class name", "css-1myhtyb")

    return driver_config, games


def execucaoPrincipal(div_games):
    # Abertura do arquivo no modo leitura
    with open('games.txt', 'r') as arquivoLeitura:
        # Salvamento dos dados do arquivo no formato string em uma variável
        jogosLidos = arquivoLeitura.read()

    # Armazenar o índice da última aparição de 'at' no arquivo salvo
    indexGameStartDate = jogosLidos.rfind('at')
    # Extração da data final de resgate do último registro do arquivo
    gameStartDate = jogosLidos[(indexGameStartDate - 7):(indexGameStartDate + 11)]

    # Obtenção do ano atual para registro no arquivo
    ano = date.today().year

    print("Jogos Gratuitos no Momento:\n")

    # Abertura do arquivo no modo 'Append'
    with open('games.txt', 'a') as arquivoEscrita:
        # Laço de repetição que percorre todos os elementos da div que contém os jogos extraídos do site
        for div_game in div_games:
            # Conversão das informações da div do jogo para string
            gameInfos = div_game.text

            # Obtenção dos índices para extração do nome do jogo
            if 'free now' in gameInfos.lower():
                startIndex = gameInfos.find('FREE NOW')
                endIndex = gameInfos.find('Free Now')
                # Extração do nome do jogo
                gameName = gameInfos[(startIndex + 9):(endIndex - 1)]

                # Obtenção do índice para extração da data limite de resgate
                finalDate = gameInfos.rfind('at')
                # Extração da data limite de resgate
                gameFinalDate = gameInfos[(finalDate - 7):(finalDate + 11)]

                # Armazenamento dos dados do jogo extraído em uma lista para acesso posterior
                gameArray = [str(gameName), gameStartDate, gameFinalDate]

            else:
                continue

            # Condição que analisa se existe a palavra 'unlocking' no nome do jogo,
            # Pois isso significa que o jogo ainda não foi liberado para resgate
            if any(keyword not in gameInfos.lower() for keyword in ['unlocking', 'coming soon', 'base game', 'available']):
                # Print do nome do jogo
                print(str(gameName) + '\n')

                # Condição que analisa se o jogo em questão já foi salvo no arquivo anteriormente
                # Para evitar duplicação dos dados
                if str(gameName) not in jogosLidos:
                    # Configura a formatação do registro das informações no arquivo
                    formatSave = str("\n\n" + gameArray[0] + "\n   Data de Resgate: " + str(ano) + " " + gameArray[1] + " -> " + str(ano) + " " + gameArray[2])
                    # Registra efetivamente os dados no arquivo
                    arquivoEscrita.write(formatSave)
                    print("Adicionando jogo ao arquivo\n")

                else:
                    print("Jogo já adicionado ao arquivo.\n")
            else:
                print("Próximos jogos:\n")
                print(gameArray)

    return


if __name__ == '__main__':
    try:
        # Configuração do Selenium
        driver, divGames = configuracaoDriver()

        # Execução principal
        execucaoPrincipal(divGames)

        # Fecha o navegador
        driver.quit()

        print("Finalizando execução...")

    # Exceção de interrupção manual do programa
    except KeyboardInterrupt:
        print('Saindo do programa...')
