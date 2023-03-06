extends Node2D

var dado1
var dado2
var dado3
var resultado
var operador1
var operador2
var coef1
var coef2


func _on_Button_pressed():
	
	dado1 = float($dado1.text)
	dado2 = float($dado2.text)
	dado3 = float($dado3.text)
	
	$ColorRect/rd1.text = String(dado1)
	$ColorRect/rd2.text = String(dado2)
	$ColorRect/rd3.text = String(dado3)
	
	if operador1 == "x":
		coef1 = dado1 * dado2
	elif operador1 == "/":
		coef1 = dado1/dado2
	elif operador2 == "x":
		coef1 = dado2 * dado3
	elif operador2 == "/":
		coef1 = dado2/dado3
	elif operador1 == "+":
		coef1 = dado1 + dado2
	elif operador1 == "-":
		coef1 = dado1 - dado2
	if operador2 == "+":
		coef2 = coef1 + dado3
	elif operador2 == "-":
		coef2 = coef1 - dado3
	elif operador1 == "+":
		coef2 = coef1 + dado1
	elif operador1 == "-":
		coef2 = dado1 - coef1 
	elif operador2 == "x":
		coef2 = coef1 * dado3
	elif operador2 == "/":
		coef2 = coef1/dado3
		
	resultado = coef2
		
	$ColorRect/resposta.text = String(resultado)
	


func _on_operador1x_pressed():
	operador1 = "x"
	$ColorRect/respostaoperador1.text = "X"
	
func _on_operador1x2_pressed():
	operador2 = "x"
	$ColorRect/respostaoperador2.text = "X"
	
func _on_operador2ma_pressed():
	operador1 = "+"	
	$ColorRect/respostaoperador1.text = "+"
	
func _on_operador2ma2_pressed():
	operador2 = "+"		
	$ColorRect/respostaoperador2.text = "+"
	
func _on_operador3me_pressed():
	operador1 = "-"	
	$ColorRect/respostaoperador1.text = "-"
	
func _on_operador3me2_pressed():
	operador2 = "-"		
	$ColorRect/respostaoperador2.text = "-"
	
func _on_operador4_pressed():
	operador1 = "/"	
	$ColorRect/respostaoperador1.text = "/"
	
func _on_operador5_pressed():
	operador2 = "/"			
	$ColorRect/respostaoperador2.text = "/"
