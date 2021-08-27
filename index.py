# ┌──────────────────────────────────────────────────────────────────────────────┐
# │ EJERCICIO 28-29                                                              │
# │ “Escribir un programa que imprima un patrón como el siguiente teniendo       │
# │ como input un 5 (puede ser en código o diagrama):                            │
# │ ”                                                                            │
# │                                                                              │
# │ # 123454321                                                                  │
# │ # 1234 4321                                                                  │
# │ # 123   321                                                                  │
# │ # 12     21                                                                  │
# │ # 1	      1                                                                  │
# └──────────────────────────────────────────────────────────────────────────────┘


def value(str):
    # Valida que el dato ingresado corresponda a un entero
    try:
        int(str)
        return True
    except ValueError:
        return False


def stingfy(ar):
    # Transforma el array ingresado en string
    a = []
    for i in ar:
        if(value(i)):
            a.append(str(i))
        else:
            a.append(' ')

    return ''.join(a)


def construct():
    # ┌──────────────────────────────────────────────────────────────────────────────┐
    # │ Ejercicio 28-29 VU.                                                          │
    # └──────────────────────────────────────────────────────────────────────────────┘
    # Obtenemos el numero entero
    number = input('Introduce un numero entero: ')
    # Validamos que el string sea un entero
    if value(number):
        # ┌──────────────────────────────────────────────────────────────────────────────┐
        # │ Recordar pasar a entero el string introducido - Inicializo num para luego    │
        # │ decrementar - n sirve para saber numero de espacios a                        │
        # │ introducir                                                                   │
        # └──────────────────────────────────────────────────────────────────────────────┘
        num = int(number)
        n = 0
        while n < int(number):
            # ================= obtenemos array ==========================================#
            a = []
            b = []
            if n == 0:
                # Obtengo lista completa
                a = list(range(num))
            else:
                # Obtengo lista y agrego <<num=> valor maximo del array>>
                for i in list(range(num)):
                    a.append(i)
                    if i+1 == num:
                        a.append(num)
            for c in range(n):
                b.append('')
            # Elimino el primer indice de "a"
            a.pop(0)
            if n == 0:
                # Si es la primera iteracion agrego el nuemro ingresado
                a.append(num)
            # Fusiono "a" y "b" para obtener array donde la len(a) == number
            a.extend(b)
            # Copio e invierto array para luego eliminar fusionar con "a"
            r = a.copy()
            r.reverse()
            r.pop(0)
            res = a+r
            # ==========fin primera parte ========== obtenemos arrays completos ===============#

            # ==========Trasformar a string los numeros enteros y unirlos en un solo stri ======#
            res = stingfy(res)
            print(res)
            # ===================================================================================#
            n += 1
            num -= 1

    else:
        # Si no es un entero vuelve a pedir que ingrese numero
        construct()


construct()
