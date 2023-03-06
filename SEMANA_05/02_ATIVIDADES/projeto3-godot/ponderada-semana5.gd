extends Node2D

var teste = false
var valor = 0
var numero = 0
var lista = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	$LineEdit.text = str(numero)

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	var Numero = numero
	for i in range(10):
		Numero += i
		lista.append(Numero)
	$Label.text = str(Numero)

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var nome = ""
	for i in lista:
		if i % 2 == 1:
			nome += "baldo"
	$Label2.text = nome
