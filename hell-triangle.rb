
#Soma a resposta
def triangle(data)
  data.each_with_index do |row, i|
    if i > 0 
      previous_row = data[i - 1]
      (0..i).each do |j|
        node = row[j]
        left_node = previous_row[j - 1]
        right_node = previous_row[j]
        if left_node && right_node
          value = [node + left_node, node + right_node].max
        elsif left_node
          value = node + left_node
        elsif right_node
          value = node + right_node
        else
          value = node
        end
        #Soma o maior valor entre os seus vizinhos ao seu
        data[i][j] = value
      end  
    end
  end
  #Retorna o maior valor da última linha
  return data.last.max
end

#Função de teste para a função
#Recebe o array e o valor esperado
def validate_triangle(data,answer)
  if triangle(data) == answer
    puts "Function works fine"
  else 
    puts "Function has errors"
  end
end

#Calculo
example = [[6],[3,5],[9,7,1],[4,6,8,4]]
puts triangle(example)

#Validação
#example = [[6],[3,5],[9,7,1],[4,6,8,4]]
#answer = 26

#validate_triangle(example,answer)
