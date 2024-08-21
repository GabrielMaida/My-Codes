# Introduction

This project focuses on web scraping the weekly free games offered by Epic Games. The script, written in Python, utilizes the Selenium library to extract information about the free games from the Epic Games store website. The data is then saved to a text file (`games.txt`), providing a convenient list of free games along with their redemption dates.

# Project Structure

The project repository includes the following files:

- **main.py:** The main Python script containing the web scraping logic.
- **chromedriver.exe:** The ChromeDriver executable required by Selenium for browser automation.
- **games.txt:** A text file that serves as a log, storing information about previously scraped free games.

# Code

The core of the project is in `main.py`, where the Selenium WebDriver is configured to interact with the Epic Games store website. The script extracts relevant information about free games, checks for duplicates, and appends new entries to the `games.txt` log file.

# Run

To run the project locally, follow these steps:

1. Ensure you have Python installed on your machine.
2. Install the required Python packages using:
   ```bash
   pip install selenium
   ```
3. Download the ChromeDriver executable and update the `chrome_path` variable in `main.py` accordingly.
4. Execute the script:
   ```bash
   python main.py
   ```

# References

- [Selenium Documentation](https://www.selenium.dev/documentation/en/)
- [Python Official Website](https://www.python.org/)

# License

This project is licensed under the [Apache 2.0 License](LICENSE). See the LICENSE file for more details.

Feel free to explore, modify, and share the code following the terms of the license.

For any questions or issues, please don't hesitate to reach out.

Happy coding!

---

# Introdução

Este projeto foca em fazer web scraping dos jogos gratuitos semanais oferecidos pela Epic Games. O script, escrito em Python, utiliza a biblioteca Selenium para extrair informações sobre os jogos gratuitos do site da Epic Games. Os dados são então salvos em um arquivo de texto (`games.txt`), fornecendo uma lista conveniente de jogos gratuitos juntamente com suas datas de resgate.

# Estrutura do Projeto

O repositório do projeto inclui os seguintes arquivos:

- **main.py:** O script principal em Python contendo a lógica de web scraping.
- **chromedriver.exe:** O executável do ChromeDriver necessário pelo Selenium para automação do navegador.
- **games.txt:** Um arquivo de texto que serve como um registro, armazenando informações sobre os jogos gratuitos previamente obtidos.

# Código

O núcleo do projeto está em `main.py`, onde o WebDriver do Selenium é configurado para interagir com o site da Epic Games. O script extrai informações relevantes sobre os jogos gratuitos, verifica duplicatas e adiciona novas entradas ao arquivo de log `games.txt`.

# Execução

Para executar o projeto localmente, siga estas etapas:

1. Certifique-se de ter o Python instalado em sua máquina.
2. Instale os pacotes Python necessários usando:
   ```bash
   pip install selenium
   ```
3. Faça o download do executável do ChromeDriver e atualize a variável `chrome_path` em `main.py` conforme necessário.
4. Execute o script:
   ```bash
   python main.py
   ```

# Referências

- [Documentação do Selenium](https://www.selenium.dev/documentation/en/)
- [Site Oficial do Python](https://www.python.org/)

# Licença

Este projeto está licenciado sob a [Licença Apache 2.0](LICENSE). Consulte o arquivo LICENSE para obter mais detalhes.

Sinta-se à vontade para explorar, modificar e compartilhar o código seguindo os termos da licença.

Para qualquer dúvida ou problema, não hesite em entrar em contato.

Feliz codificação!
