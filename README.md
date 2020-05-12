# Test de aceptación con Robot Framework

## Instalación
Para este ejemplo usamos **python 3.7.7** y **virtualenv**, una vez dentro de su entorno virtual donde trabajaremos, debe ejecutar los siguientes comandos:
```bash
pip install robotframework
```
Verificar la correcta instalación.
Posteriormente instalamos la libreria web testing selenium, con el siguiente comando.
```bash
pip install robotframework-selenium2library
```

## Primera prueba
Se debe crear un archivo con extension .robot en este este caso crearemos el archivo **prueba.robot** que conteenga el siguiente contenido:

```
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Visitar google
    Open browser    https://www.google.com   Chrome
    Sleep   5s
    close browser
```
La prueba es sencilla pero nos ayudará a comprender como funciona la herramienta, la prueba consistirá en:
1. Abrir un navegador chrome y vistar el sitio https://www.google.com
2. Hacer una espera de 5 segundos.
3. Cerrar el navegador


> **Nota** Tenga en cuenta que se debe respetar la cantidad de espacios ya que sino lo hace provocara errores cuando se ejecute el test.

## Ejecución
Para ejecutar nuestro test debe hacer correr el siguiente comando en la consola:
```bash
robot prueba.robot
```
Y podrá ver el siguiente resultado.
```bash
==============================================================================
Prueba                                                                        
==============================================================================
Visitar google                                                        | PASS |
------------------------------------------------------------------------------
 ~aceptacion robot prueba.robot    
==============================================================================
Prueba                                                                        
==============================================================================
Visitar google                                                        | PASS |
------------------------------------------------------------------------------
Prueba                                                                | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Output:  ~aceptacion/output.xml
Log:     ~aceptacion/log.html
Report:  ~aceptacion/report.html
```
Esto nos indica que las prueba corrieron exitosamente.

