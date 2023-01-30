// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion
// Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
//División entre restas de 2 números
Funcion   Dividir_Dos_Numeros_Por_Restas()
	Definir rest, num1, num2,c Como Real
	Escribir "Ingrese un número"
	Leer num1
	Escribir "Ingrese segundo número"
	Leer num2
	rest=num1
	c=0
	Mientras rest-num2>=0 Hacer
		rest=rest-num2
		Escribir (rest+num2) "-" num2 "=" rest
		c=c+1
	Fin Mientras
	Escribir "La división entre " num1 " y " num2 " es igual a: " c
FinFuncion
//Multiplicación de 2 números mediante sumas
Funcion   Multiplicar_Dos_Numeros_Por_Sumas()
	Definir sum, num1, num2,c  Como Real
	Escribir "Ingrese un número"
	Leer num1
	Escribir "Ingrese segundo número"
	Leer num2
	c=0
	sum=0
	Mientras c<num2 Hacer
		sum=sum+num1
		Escribir (sum-num1) "+" num1 "=" sum
		c=c+1
	Fin Mientras
	Escribir "La multiplicación entre " num1 " y " num2 " es igual a: " sum
FinFuncion
//Suma los pares y multiplica los multiplos de 5 dentro de una secuencia
Funcion  Suma_Pares_Multiplos()
	definir lim,c,num,sum,produ Como Real
	Escribir "Ingrese cantidad de numeros"
	leer lim
	sum=0
	c=0
	produ=1
	Mientras c<lim Hacer
		Escribir "Imgrese número"
		Leer num
		si num mod 5 =0 Entonces
			produ=produ*num
		finsi
		si num mod 2 =0 Entonces
			sum=sum+num
		FinSi
		c=c+1
	FinMientras
	Escribir"La suma de los pares es: " sum
	Escribir "El producto de los mutiplos de 5 es: " produ
FinFuncion
Funcion   Cantidad_de_numeros_de_una_secuencia_hasta_0()
	definir num, lim,c Como Entero
	Mostrar "Ingrese un numero"
	leer num
	lim = 0;c = 0
	mientras num <> lim Hacer
		Mientras num > 0 Hacer
			num = trunc(num/10)
			c=c+1
		FinMientras
		Mostrar "Ingrese un numero"
		leer num
	FinMientras
	mostrar "La cantidad de digitos es: ",c
FinFuncion
//Muestra precio, descuento, iva y el valor del pago de n trajes
Funcion  Descuento_Iva_Pago()
	Definir num,c, precio, lim, desc, desc2, iva, pago Como Real
	Escribir "Ingrese total de trajes comprados"
	Leer num
	C=0; lim=100; desc=0; desc2=0
	Mientras c<num Hacer
		c=c+1
		Escribir "ingrese el precio del traje número " c
		leer precio
		si precio>lim Entonces
			desc=precio*0.10
			iva=(precio-desc)*0.12
			pago=precio-desc+iva
			Escribir "El precio del traje es = " precio 
			Escribir "El valor de descuento del traje es = " desc 
			Escribir "El valor del iva es de = " iva
			Escribir "El precio final del traje es = " pago
			
		SiNo
			si precio<lim entonces
				desc2=precio*0.05
				iva=(precio-desc2)*0.12
				pago=precio-desc2+iva
				Escribir "El precio del traje es = " precio 
				Escribir "El valor de descuento del traje es = " desc2 
				Escribir "El valor del iva es de = " iva
				Escribir "El valor final del traje es = " pago
			FinSi
		FinSi
	Fin Mientras
FinFuncion
//Indica si el segundo número ingresado es el mayor o no.
Funcion  SegundoNúmero_Mayor()
	Definir a, b, c Como Entero
	Escribir "Ingrese 3 números"
	Leer a, b, c
	si b>a y c<b Entonces
		Escribir "El segundo número ingresado  (" b ") es el mayor"
	SiNo
		Escribir "El segundo número ingresado  (" b ") no es el mayor"
	FinSi
FinFuncion
//Pide una serie de números, entregando su promedio
Funcion  Promedio_Números()
	Definir num, promedio, c, suma  Como Real
	Escribir  "Ingrese una serie de números (termina en un valor nagtivo)"
	Leer num
	c=0; suma=0
	Mientras num>=0 Hacer
		c=c+1
		suma=suma+num
		Escribir "Ingrese una serie de números (termina en un valor nagtivo)"
		Leer num
	Fin Mientras
	promedio=suma/c
	Escribir "El promedio de la serie de numeros es: " promedio
FinFuncion
// Verifica si 2 números ingresados son amigos
Funcion Numeros_Amigos()
	Definir num1, num2, c, sum, sum2, c2 Como Entero
	Escribir "Ingrese primer número"
	Leer num1
	Escribir "Ingrese segundo número"
	leer num2
	c=1; sum=0; c2=1; sum2=0
	Mientras c<=num1 Hacer
		si num1 mod c =0 y c <> num1 Entonces
			Escribir " (" c ") "Sin Saltar
			sum=sum+c
		FinSi
		c=c+1
	Fin Mientras
	Escribir " = " sum
	Mientras c2<=num2 Hacer
		si num2 mod c2 =0 y c2<> num2 Entonces
			Escribir " (" c2 ") "Sin Saltar
			sum2=sum2+c2
		FinSi
		c2=c2+1
	FinMientras
	Escribir " = " sum2
	Si sum = sum2 Entonces
		Escribir "Los numeros son amigos"
	SiNo
		Escribir "Los numeros no son amigos"
	FinSi
FinFuncion
//Comprueba si 2 números son primos gemelos
Funcion  Primosgemelos()
	definir num1, num2, x, c, x1, c1 Como Entero
	Escribir "Ingrese el numero 1"
	leer num1
	x = 1
	c = 0
	Mientras x <= num1 Hacer
	    si  num1 mod x = 0 Entonces
			c = c + 1
			Mostrar"(" ,x ")" Sin Saltar
		FinSi
		x = x + 1
	FinMientras
	Escribir ""
	Escribir "Ingrese el numero 2"
	leer num2
	x1 = 1
	c1 = 0
	Mientras x1 <= num2 Hacer
	    si  num2 mod x1 = 0 Entonces
			c1 = c1 + 1
			Mostrar "(" ,x1 ")" Sin Saltar
		FinSi
		x1 = x1 + 1
	FinMientras
	Escribir ""
	Si c = 2 y c1 = 2 Entonces
		Escribir "  " num1 " Y " num2 " son primos gemelos"
	SiNo
		Escribir "  " num1 " Y " num2 " no son primos gemelos"
	FinSi
FinFuncion
//EJERCICIOS CON CADENAS
//Presenta 1 nombre carcater por caracter
Funcion  datoscaracterporcaracter()
	Definir pos,L,c Como Entero
	Definir nomb,x Como Caracter
    Escribir "Ingrese el nombre"
	leer nomb
	L = Longitud(nomb)-1
	c=0
	Para pos = 0 hasta L con paso 1 hacer
		x = subcadena(nomb,pos,pos)
		Mostrar x "  " Sin Saltar
		c = c + 1
	FinPara
FinFuncion
//Presenta el primer, medio y final caracter de 1 frase
Funcion  Primer_medio_Ultimo_Caracter()
	Definir pos,L,c,m Como Real
	Definir nomb,x Como Caracter
    Escribir "Ingrese una pequeña frase por favor"
	leer nomb
	L = Longitud(nomb)-1
	c=0
	m=l/2
	Para pos = 0 hasta L con paso m hacer
		x = subcadena(nomb,pos,pos)
		Mostrar x " "  Sin Saltar
		c = c + 1
	FinPara
FinFuncion
//Indica si 2 numeros digitados son iguales
Funcion Comparación_De_Nombres()
	Definir n1,n2 Como Caracter
	Definir lon1,lon2 Como Real
	Escribir "Ingrese nombre número 1"
	Leer n1
	Escribir "Ingrese nombre número 2"
	Leer n2
	si n1=n2 Entonces
		Escribir "los nombres " n1 " y " n2 " son iguales"
	SiNo
		Escribir "los nombres " n1 " y " n2 " no son iguales"
	FinSi
FinFuncion
//Determina que longitud de 2 frases dadas es mayor, menor o igual según corresponda
Funcion  Comparación_De_Frases()
	Definir f1,f2 Como Caracter
	Definir lon1,lon2 Como Real
	Escribir "Ingrese frase número 1"
	Leer f1
	Escribir "Ingrese frase número 2"
	Leer f2
	Lon1=Longitud(f1)-1
	lon2=Longitud(f2)-1
	si lon1> lon2 Entonces
		Escribir "la frase " f1 " es de mayor longitud que la frase " f2 
	SiNo
		si lon1<lon2 Entonces
			Escribir "la frase " f1 " es de menor longitud que la frase " f2
		SiNo
			si lon1=lon2 Entonces
				Escribir "la frase " f1 " es de igual longitud que la frase " f2
			FinSi
		FinSi
	FinSi
FinFuncion
//Indica cuantas "," "." y ";" tiene una frase
Funcion Indicacuantashayenunacadena()
	definir frase,r Como Caracter
	Definir lon,i,punto,comas,puntos,puntoycoma Como Entero
	Escribir "Ingresa la frase"
	leer frase
	comas=0; puntos=0; punto=0; puntoycoma=0
	lon = Longitud(frase)
	Para i = 0 hasta lon con paso 1 Hacer
		r = Subcadena(frase,i,i)
		Si r = "," Entonces
			comas = comas + 1
		FinSi
		Si r = "." Entonces
			punto = punto + 1
		FinSi
		Si r = ";" Entonces
			puntoycoma = puntoycoma + 1
		FinSi
		Si r = ":" Entonces
			puntos = puntos + 1
		FinSi
	FinPara
	Mostrar "La cantidad de comas es: ",comas
	Mostrar "La cantidad de punto es: ",punto
	Mostrar "La cantidad de puntos y comas es: ",puntoycoma
	Mostrar "La cantidad de puntos es: ",puntos 
FinFuncion
//Cuenta las vocales,consonantes y digitos de una oración
Funcion cuenta_vocales_consonantes_digitos()
	definir frase Como Caracter
	Definir dig,voc,cons,num,r,i Como Entero
	Escribir "Ingrese la frase"Sin Saltar
	leer frase
	voc = 0
	cons = 0
	num = 0
	dig = 0
	r = Longitud(frase)
	para i = 1 hasta r con paso 1 Hacer
	    Si Subcadena(frase,i,i) = "a" o Subcadena(frase,i,i) = "e" o Subcadena(frase,i,i) = "i" o Subcadena(frase,i,i) = "o" o Subcadena(frase,i,i) = "u" Entonces
			voc = voc + 1
		SiNo
			Si Subcadena(frase,i,i) >= "0" y Subcadena(frase,i,i) <= "9" entonces
				dig = dig + 1
			SiNo
				Si subcadena(frase,i,i) <> " " Entonces
					cons = cons + 1
				FinSi
			FinSi
		FinSi
	FinPara
	Mostrar "La cantidad de vocales es: ",voc
	Mostrar "La cantidad de consonates es: ",cons
	Mostrar "La cantidad de digitos es: ",dig
FinFuncion
//Cuenta el numero de palabras dentro de una frase
Funcion  Númerode_palabras_dentro_de_una_frase()
	definir frase,r,L Como Caracter
	Definir c,lon,i Como Entero
	Escribir "Ingrese la frase" Sin Saltar 
	leer frase
	c = 1
	lon = longitud(frase)
	para i = 1 hasta lon con paso 1 Hacer
		r = Subcadena(frase,i,i)
		l = Subcadena(frase,i-1,i-1)
		Si r <> " " y l = " " Entonces
			c = c + 1
		FinSi
	FinPara
	Mostrar "La cantidad de palabras es: ",c
FinFuncion
//Presentar la suma de los digitos de una cedula
Funcion   Presentarlasumadelosdigitosdeunacedula()
	definir frase Como Caracter
	Definir lon,i,r,c Como Entero
	c=1
	Escribir "Ingresa el numero de cedula" Sin Saltar
	leer frase
	lon = Longitud(frase)
	para i = 1 hasta lon con paso 1 Hacer
		r = ConvertirANumero(Subcadena(frase,i,i))
		c = c + r
	FinPara
	Mostrar "La suma de los numeros de la cedula son: ",c
FinFuncion
//Presenta si una palabra es palindroma
Funcion Palindroma()
	Definir l,pos,c Como Real
	Definir palabra Como Caracter
	Escribir "Ingrese una palabra"
	Leer palabra
	l=Longitud(palabra)-1
	pos=0
	c=0
	Mientras pos<=l Hacer
		si Subcadena(palabra,pos,pos) <> Subcadena(palabra,l,l) Entonces
			c=c+1
		FinSi
		pos=pos+1
		l=l-1
	FinMientras
	si c==0 Entonces
		Escribir "La palabra " palabra " es palindroma"
	sino 
		Escribir "La palabra " palabra " no es palindroma"
	FinSi
FinFuncion
//Presenta la posicion de un caracter
Funcion PresentarPosición()
	definir frase,car,r Como caracter
	Definir i,lon Como Entero
	Escribir "Ingresa una frase"
	leer frase
	Escribir "Ingresa el caracter q te gustaria buscar"
	leer car
	lon = Longitud(frase)
	para i = 0 hasta lon con paso 1 Hacer
		r = Subcadena(frase,i,i)
		Si car = r Entonces
			Mostrar "Ese caracter esta en la posicion ",i
		FinSi
	FinPara
FinFuncion
//Ejercicios con arreglos
//Dado una serie de números, muestra 1 arreglo
Funcion  Arreglo_Número()
	Definir num, r,lim,i,a Como Entero
	Escribir "Ingrese la cantidad de numeros" sin saltar
	leer lim
	Dimension num[lim]
	i=0
	Mientras i<lim Hacer
		Escribir  "Ingrese el numero " Sin Saltar
		leer num[i]
		i=i+1
	FinMientras
	Escribir "El arreglo de los números ingresados es:"
	a = 1
	para i= 0 hasta lim-1 con paso 1 hacer
		Mostrar a ") " num[i]
		a = a + 1
	FinPara
FinFuncion
//Muestra solo los números pares de un arreglo
Funcion  Arreglo_Numeros_Pares()
	Definir num, r,lim,i,a Como Entero
	Escribir "Ingrese la cantidad de numeros" sin saltar
	leer lim
	Dimension num[lim]
	i=0
	Mientras i<lim Hacer
		Escribir  "Ingrese el numero " Sin Saltar
		leer num[i]
		i=i+1
	FinMientras
	Escribir "Los números pares en el arreglo son:"
	a = 1
	para i= 0 hasta lim-1 con paso 1 hacer
		si num[i] mod 2 =0 Entonces
			Mostrar a ") " num[i] 
			a = a + 1
		FinSi
	FinPara
FinFuncion
//Presenta los números negativos de un arreglo
Funcion Arreglo_Numeros_Negativos()
	Definir num, r,lim,i,a Como Entero
	Escribir "Ingrese la cantidad de numeros" sin saltar
	leer lim
	Dimension num[lim]
	i=0
	Mientras i<lim Hacer
		Escribir  "Ingrese el numero " Sin Saltar
		leer num[i]
		i=i+1
	FinMientras
	Escribir "Los números negativos en el arreglo ingresado son:"
	a = 1
	para i= 0 hasta lim-1 con paso 1 hacer
		si num[i] <0 Entonces
			Mostrar a ") " num[i] 
			a = a + 1
		FinSi
	FinPara
FinFuncion
//Muestra la primera letra de uno o varios nombres
Funcion  Primer_caracter_de_un_Número()
	definir nomb, p, x ,l,acu Como caracter
	Definir lim,c,i Como Entero
	Escribir "Ingresa la cantidad de nombres"
	leer lim
	dimension nomb[lim]
	dimension acu[lim]
	c = 0; l = "f"; i=0
	Mientras c <= lim-1 Hacer
		Escribir "Ingrese el nombre " Sin Saltar
		leer nomb[c]
		x = Subcadena(nomb[c],i,0) 
		Si x <> l Entonces
			acu[c] = x
		FinSi
		c = c + 1
	FinMientras
	para c = 0 hasta lim-1 con paso 1 Hacer
		Mostrar " [ ",acu[c] " ] " Sin Saltar
	FinPara
FinFuncion
//Muestra el total, el promedio y la cantidad de digitos de un arreglo
Funcion  Arreglo_Total_Promedio()
	Definir num, r,lim,i,a,suma,promedio Como Real
	Escribir "Ingrese la cantidad de numeros" sin saltar
	leer lim
	Dimension num[lim]
	i=0; suma=0
	Mientras i<lim Hacer
		Escribir  "Ingrese el numero " Sin Saltar
		leer num[i]
		i=i+1
	FinMientras
	Escribir ""
	a = 1
	para i= 0 hasta lim-1 con paso 1 hacer
		suma=suma+ num[i]
		a = a + 1
		promedio=suma/lim
	FinPara
	Escribir "La cantidad de datos es = " lim
	escribir "El total es = " suma
	Escribir "El promedio es = " promedio
FinFuncion
//Imprime el arreglo al revés siempre y cuando el digito sea multiplo de 5
Funcion  Arreglo_alrevés()
	Definir num, r,lim,i,a,suma,promedio Como Real
	Escribir "Ingrese la cantidad de numeros" sin saltar
	leer lim
	Dimension num[lim]
	i=0; suma=0
	Mientras i<lim Hacer
		Escribir  "Ingrese el numero " Sin Saltar
		leer num[i]
		i=i+1
	FinMientras
	Escribir ""
	a = 1
	para i= lim-1 hasta 0 con paso -1 hacer
		si num[i] mod 5 =0 Entonces
			escribir num[i] "," Sin Saltar
		FinSi
	FinPara
FinFuncion
//Muestra el primer, el del medio y el ultimo digito de un arreglo
Funcion Primer_medio_ultimo()
	definir num,lim,i Como Entero
	dimension num[5]
	Escribir "Ingresa 5 numeros"
	para i = 0 hasta 4 con paso 1 Hacer
		Escribir "Ingresa el numero "
		leer num[i]
	FinPara
	Escribir ""
	para i = 0 hasta 4 con paso 2 Hacer
		Mostrar " [ " num[i], " ] " Sin Saltar
	FinPara          
FinFuncion
//Copia 1 arreglo en otro y lo presenta
Funcion Arreglo_Copia()
	definir num,lim,i Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension num[lim]
	Dimension ele[lim]
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingrese el numero "
		leer num[i]
	FinPara
	Escribir ""
	para i = 0 hasta lim-1 con paso 1 hacer 
		Mostrar num[i] "," Sin Saltar
	FinPara
FinFuncion
//Presenta la suma de 2 arreglos dentro de un tercer arreglo
Funcion Arreglo_Suma()
	Definir arrgl, array,sum,lim,i,x Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension arrgl[lim]
	Dimension array[lim]
	Dimension sum[lim]
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingrese el numero ",i " de la 1 dimension"
		leer arrgl[i]
		Escribir "Ingrese el numero ",i " de la 2 dimension"
		leer array[i]
		sum[i] = array[i] + arrgl[i]
	FinPara
	Escribir ""
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar sum[i]," , " Sin Saltar
	FinPara
FinFuncion
//Imprime los factoriales de una serie de números dentro de un arreglo
Funcion Arreglo_Factoriales()
	Definir num,lim,i,x,fact Como real
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension fact[lim]
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingresa el numero ",i+1
		leer num
		x = num
		Mientras x > 1 Hacer
			x = x - 1
			num = num * x
		FinMientras
		fact[i] = num
	FinPara
	Escribir "Los factoriales de los números son:"
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar fact[i]," , " Sin Saltar
	FinPara
FinFuncion
// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,opcc,opca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos"
	// dos numeros son primos gemelos si ambos son primos
	//n1=5,n2=7
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
    //n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Borrar Pantalla
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 10 Segundos
					"2":
						Borrar Pantalla
						Escribir "Dividir dos numeros por restas"
						Dividir_Dos_Numeros_Por_Restas()
						Esperar 10 Segundos
					"3":
						Borrar Pantalla
						Escribir "Multiplicar dos numeros por sumas"
						Multiplicar_Dos_Numeros_Por_Sumas()
						Esperar 10 Segundos
					"4":
						Borrar Pantalla
						Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
						Suma_Pares_Multiplos()
						Esperar 10 Segundos
					"5":
						Borrar Pantalla
						Escribir "Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						Cantidad_de_numeros_de_una_secuencia_hasta_0()
						Esperar 10 Segundos
					"6":
						Borrar Pantalla
						Escribir "Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
						Descuento_Iva_Pago()
						Esperar 10 Segundos
					"7":
						Borrar Pantalla
						Escribir "Dado tres numeros indicar si el segundo es el mayor"
						SegundoNúmero_Mayor()
						Esperar 10 Segundos
					"8":
						Borrar Pantalla
						Escribir "Dado una secuencia de numeros presentar su promedio"
						Promedio_Números()
						Esperar 10 Segundos
					"9":
						Borrar Pantalla
						Escribir "Numeros amigos"
						Numeros_Amigos()
						Esperar 10 Segundos
					"10":
						Borrar Pantalla
						Escribir "primos gemelos"
						Primosgemelos()
						Esperar 10 Segundos
					"11":
						Borrar Pantalla
						Escribir "Regresando al Menu Principal... ¡¡Espere por favor!!" 
						Esperar 3 Segundos
					De Otro Modo:
						Borrar Pantalla
						Escribir "Opcion " opcn " invalido... "
						Escribir "¡Por favor ingrese una opción correcta!"
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			opcc=""
			Mientras opcc <> "11" Hacer         
				opcc=presentarMenu("Menu Cadenas",menuCadenas,11)
				Segun opcc Hacer
					"1":
						Borrar Pantalla
						Escribir "Presentar un nombre caracter por caracter"
						datoscaracterporcaracter()
						Esperar 7 Segundos
					"2":
						Borrar Pantalla
						Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
						Primer_medio_Ultimo_Caracter()
						Esperar 7 Segundos
					"3":
						Borrar Pantalla
						Escribir "Dado dos nombres indicar si son iguales"
						Comparación_De_Nombres()
						Esperar 7 Segundos
					"4":
						Borrar Pantalla
						Escribir "Dadas dos frase indicar la de mayor longitud"
						Comparación_De_Frases()
						Esperar 7 Segundos
					"5":
						Borrar Pantalla
						Escribir "Indicar cuantas ,.;: hay en una cadena"
						Indicacuantashayenunacadena()
						Esperar 7 Segundos
					"6":
						Borrar Pantalla
						Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						cuenta_vocales_consonantes_digitos()
						Esperar 7 Segundos
					"7":
						Borrar Pantalla
						Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
						Númerode_palabras_dentro_de_una_frase()
						Esperar 7 Segundos
					"8":
						Borrar Pantalla
						Escribir "Presentar la suma de los digitos de una cedula"
						Presentarlasumadelosdigitosdeunacedula()
						Esperar 7 Segundos
					"9":
						Borrar Pantalla
						Escribir "Indicar si una palabra es palindroma"
						Palindroma()
						Esperar 7 Segundos
					"10":
						Borrar Pantalla
						Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
						PresentarPosición()
						Esperar 7 Segundos
					"11":
						Borrar Pantalla
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Borrar Pantalla
						Escribir "Opcion " opcc " invalida..."
						Escribir "Ingrese una opción correcta por favor"
						Esperar 4 Segundos
				Fin Segun
			FinMientras
		"3":
			opca=""
			Mientras opca <> "11" Hacer         
				opca=presentarMenu("Menu Arreglos",menuArreglos,11)
				Segun opca Hacer
					"1":
						Borrar Pantalla
						Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
						Arreglo_Número()
						Esperar 7 Segundos
					"2":
						Borrar Pantalla
						Escribir "Presentar los numeros pares de un arreglo"
						Arreglo_Numeros_Pares()
						Esperar 7 Segundos
					"3":
						Borrar Pantalla
						Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
						Arreglo_Numeros_Negativos()
						Esperar 7 Segundos
					"4":
						Borrar Pantalla
						Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						Primer_caracter_de_un_Número()
						Esperar 7 Segundos
					"5":
						Borrar Pantalla
						Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						Arreglo_Total_Promedio()
						Esperar 7 Segundos
					"6":
						Borrar Pantalla
						Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
						Arreglo_Alrevés()
						Esperar 7 Segundos
					"7":
						Borrar Pantalla
						Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						Primer_medio_ultimo()
						Esperar 7 Segundos
					"8":
						Borrar Pantalla
						Escribir "Dado un arreglo copiarlo en otro y presentarlo"
						Arreglo_Copia()
						Esperar 7 Segundos
					"9":
						Borrar Pantalla
						Escribir "Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos"
						Arreglo_Suma()
						Esperar 7 Segundos
					"10":
						Borrar Pantalla
						Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
						Arreglo_Factoriales()
						Esperar 7 Segundos
					"11":
						Borrar Pantalla
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Borrar Pantalla
						Escribir "Opcion "  opca " invalida..."
						Escribir "Ingrese una opción correcta (1...11)"
						Esperar 4 Segundos
				Fin Segun
			FinMientras
		"4":
			Borrar Pantalla
			Escribir "Gracias por usar el Sistema"
			Esperar 4 Segundos
		De Otro Modo:
			Borrar Pantalla
			Escribir "Opcion " opc " Invalida, ¡digite una opción correcta!"
			Esperar 4 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
