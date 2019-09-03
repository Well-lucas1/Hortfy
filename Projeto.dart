import 'dart:io';
import 'dart:math';
void main() {
  var preco=[300, 450, 800, 1000, 350, 2000, 500, 450, 790];
  var cidade=['capao de canoa', 'florianopolis', 'gramado', 'porto de galinhas',
              'campinas', 'cancum', 'natal', 'sao paulo', 'holambra']; 
  var avaliacao=[3.3, 4.3, 4.2, 4.5, 3.7, 5.0, 4.6, 3.3, 4.0];
  
  var clonepreco = List.from (preco) ; 
  print ("Lista clonada: ${clonepreco}");
  clonepreco.sort();

  var cloneavl = List.from (avaliacao) ; 
  print ("Lista clonada: ${cloneavl}");
  cloneavl.sort();
  
  
  var clonecid = List.from (cidade) ; 
  print ("Lista clonada: ${clonecid}");
  clonecid.sort();

  print("Digite a quantidade de dias");
  String textDia = stdin.readLineSync();
  int dia = int.parse(textDia);

  print("Digite a quantidade de pessoas");
  String textQtd = stdin.readLineSync();
  int qtd = int.parse(textQtd);

    for (var i = 0; i < 10; i++){
        var calc=((qtd*preco[i]) * dia);
        //print("valor $i = ${calc}");
        //if (preco[i] <= clonepreco[i] && avaliacao[i] <= cloneavl[i] ) {
          //preco[i] = preco[i];
          //avaliacao[i] = avaliacao[i];  
          //cidade[i] = cidade[i]; 
        //}
        //print("cidade ${cidade[i]} | avaliacao ${avaliacao[i]} | preco ${preco[i]} | Total ${calc} ");
        if (preco[i] >= clonepreco[i] && avaliacao[i] >= cloneavl[i] ) {
          preco[i] = clonepreco[i];
          avaliacao[i] = cloneavl[i];  
          //print("cidade ${cidade[i]} | avaliacao ${avaliacao[i]} | preco ${preco[i]} | Total ${calc} "); 
        if (avaliacao[i] == cidade[i] && preco[i] == cidade[i]) {
          cidade[i] = cidade[i];
        }else{
          cidade[i] = clonecid[i];
        }
          print("cidade ${cidade[i]} | avaliacao ${avaliacao[i]} | preco ${preco[i]} | Total ${calc} ");
        }     
      }
}