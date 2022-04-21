# Login UI y E2E test hecho con flutter.

## Para las pruebas con el navegador chrome:

### 1. Arrancamos el WebDriver desde nuestra terminal con el puerto "4444":
    ./chromedriver -port=4444
    
### 2. Luego abriendo una terminal desde el proyecto ejecutamos el siguiente comando para la ejecucióin de las pruebas que hemos preparado en el aplicativo:
    flutter drive --driver=integration_test/integration_test.dart --target=integration_test/application_widget_test.dart -d web-server --no-headless
    Nota: El parametro --no-headless nos servira para ir viendo la ejecución del test en el navegador.
