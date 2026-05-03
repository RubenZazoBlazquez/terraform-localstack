# Rebase en Git

## Explicación

En esta práctica se trabaja con la reescritura del historial de commits utilizando Git, con el objetivo de mantener un repositorio limpio y fácil de entender.

En primer lugar, se crean varios commits con mensajes poco claros (como "cambio", "fix" o "cosas") para simular un historial desordenado.

A continuación, se utiliza el comando `git rebase -i` para editar el historial de forma interactiva. Este comando permite modificar commits recientes, cambiar sus mensajes o fusionarlos.

Durante el rebase, se decide fusionar los commits innecesarios utilizando la opción `squash`, lo que permite unificar varios cambios en un único commit.

Después, se edita el mensaje final para que sea claro y descriptivo, reflejando correctamente los cambios realizados.

Por último, se realiza un push al repositorio remoto, sobrescribiendo el historial anterior con el nuevo historial limpio.
