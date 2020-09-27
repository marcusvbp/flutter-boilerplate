# Flutter Boilerplate

Este repositório contém um *boilerplate* simples para aplicações Flutter com alguns pacotes pré-configurados e exemplos de código.

**Obs**: Este projeto está constantemente sendo analisado e reescrito, em um eterno processo de amadurecimento.

Os pacotes utilizados contém o mínimo que utilizo em cada projeto, mais alguns utilitários. São eles:

 - Dio
 - flutter_mobx
 - mobx
 - json_annotation
 - provider
 - shared_preferences

### Dev Dependences:

- build_runner
- flutter_launcher_icons
- flutter_native_splash
- flutter_rename_app
- json_serializable
- mobx_codegen

Também inclui em trechos comentados as configurações dos scripts de geração de ícones, *native splash* e para renomear o app, mais os comandos para a geração de código do *build_runner*.

## Estrutura de pastas

- **libs**: pasta principal da aplicação.
	- **api**: contém as classes com as chamadas de Api. As chamadas da API são realizadas através da biblioteca *Dio*.
	- **local_storages**: contém os arquivos com as chamadas para recuperação dos dados salvos localmente da aplicação. Atualmente os dados são salvos usando a biblioteca *shared_preferences*.
	- **mobx_stores**: contém os stores globais de dados da aplicação. Estas Stores Mobx são distribuídas através do Provider.
	- **models**: Os modelos/classes de dados utilizados pela aplicação.
	- **screens**: contém os widgets que representam as telas da aplicação. Cada tela deve ficar em uma pasta separada.
	- **widgets**: contém todos os widgets de aplicação mais genérica/universal.

## Arquivos importantes

- **libs/app_config.dart**: inclua aqui variáveis de ambiente, a configuração da instancia do Dio.
- **libs/provider_config.dart**: Widget especial para a configuração dos Providers das Stores universais da aplicação.
- **libs/router_config.dart**: Configuração de rotas da aplicação, que está separada do **libs/main.dart** simplesmente por questões organizacionais.

## Arquivos de Exemplo

Este projeto também arquivos *.dart.sample com modelos de como o código pode ser escrito e estruturado.

