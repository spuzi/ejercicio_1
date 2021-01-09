# Ejercicio 1 
#
# Las lecturas mensuales en Kwh (kilowatios-hora) del contador 
# electrico de un cliente durante el anio 2016 son las siguientes. 
# La primera lectura corresponde al 31 de diciembre de 2015. 
# El resto se realizan de dia 31 de cada mes de 2016. 
# Hay 13 lecturas
lecturas = c(3007,3292,3568, 3783, 3979, 4169, 4351, 4565, 4749, 5001, 5219, 5438, 5685)

# Calculo del total de energia consumida en el periodo
total_energia_consumida_en_el_periodo = lecturas[13] - lecturas[1]

# Calculo de lo que se ha consumido en cada mes
consumo_en_cada_mes = lecturas[2:13] - lecturas[1:12]

# Consumo semestres
consumo_primer_semestre = sum(consumo_en_cada_mes[1:6])
consumo_segundo_semestre = sum(consumo_en_cada_mes[7:12])

# Consumo trimestres
consumo_primer_trimestre = sum(consumo_en_cada_mes[1:3])
consumo_segundo_trimestre = sum(consumo_en_cada_mes[4:6])
consumo_tercer_trimestre = sum(consumo_en_cada_mes[7:9])
consumo_cuarto_trimestre = sum(consumo_en_cada_mes[10:12])

# Trimestre con mayor consumo
consumo_por_trimestre = c(consumo_primer_trimestre, consumo_segundo_trimestre, consumo_tercer_trimestre, consumo_cuarto_trimestre)
trimestre_mayor_consumo = max(consumo_por_trimestre)

# Semestre con mayor consumo
consumo_por_semestre = c(consumo_primer_semestre, consumo_segundo_semestre)
semestre_mayor_consumo = max(consumo_por_semestre)

# Ejercicio 2
#
# Este cliente, tiene un contrato en el mercado libre en el cual 
# su comercializadora de electricidad, le factura a precio fijo
# anual 0.1236 Euros el Kwh. Calcula el importe total y mensual 
# de termino de energia de factura 
precio_anual = 0.1236

# Lo que ha gastado en euros en todo el anyo
importe_total_anual = total_energia_consumida_en_el_periodo * precio_anual

# Lo que ha gastado en euros en cada mes
importe_total_mensual = consumo_en_cada_mes * precio_anual

# Ejercicio 3
#
# Existe otra modalidad de contrato, denominado precio voluntario del pequenyo consumidor (PVPC). 
# Esta es la tarifa electrica regulada por el gobierno, y tiene un precio para cada hora del anyo 
# basada en el coste real (en el mercado mayorista) de la generacion de la energia. Para los 
# clientes que no tienen contador horario, existe un precio mensual. Los precios mensuales del 
# PVPC en el anyo 2016 fueron en euros por kwh: 
pvpc_mes <- c(0.1034,0.0923,0.0917,0.0867,0.0878,0.1005,0.1026,0.1040,0.1061,0.1185,0.1226,0.1302) 
 
# 1) Calcula el coste anual y mensual de nuestro cliente con esta tarifa. 
#    Es mas conveniente que el precio fijo? 

# Lo que ha gastado en euros en cada mes con la nueva tarifa (PVPC)
importe_en_cada_mes_pvpc = consumo_en_cada_mes * pvpc_mes

# Lo que ha gastado en euros en todo el anyo con la nueva tarifa (PVPC)
importe_total_anual_pvpc = sum(importe_en_cada_mes_pvpc)

# Es mas conveniente que el precio fijo?
if (importe_total_anual > importe_total_anual_pvpc){
  print("Con la tarifa PVPC ahorras dinero")
  message("Tarifa antigua: " , importe_total_anual)
  message("Tarifa PVCP:  " , importe_total_anual_pvpc)
}

# 2) Calcula el coste medio por trimestres (Usa la funcion mean) 
# 3) Cuanto ahorramos con la tarifa PVPC? 
# 4) Cual deberia ser el precio de la tarifa fija para que el coste, con nuestro 
#    perfil de consumo, fuera exactamente igual al de la PVPC



