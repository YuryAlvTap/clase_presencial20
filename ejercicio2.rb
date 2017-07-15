module Formula
 def perimetro(largo, ancho = 0)
      if ancho == 0 
         perimetro = (largo * 4)
         figura = "Cuadrado"
      else
         perimetro = (largo * 2) +  (ancho * 2)
         figura = "Rectangulo"
      end
      puts "El perimetro del #{figura} es de #{perimetro}"
 end

 def area(lado1, lado2 = 0)
      if lado2 == 0 
         area = (lado1 * lado1)
         figura = "Cuadrado"
      else
         area = lado1 * lado2
         figura = "Rectangulo"
      end
      puts "El area del #{figura} es de #{area}"
 end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "Rectangulo de lado largo #{@largo} y de ancho #{@ancho}"
  end

  def mostrar_perimetro
      perimetro(@largo, @ancho)
  end

  def mostrar_area
      area(@largo, @ancho)
  end
end

class Cuadrado
  include Formula	
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Cuadrado de lado #{@lado} "
  end

  def mostrar_perimetro
      perimetro(@lado)
  end

  def mostrar_area
     area(@lado)
  end
end

recta = Rectangulo.new(5,6)
recta.lados
recta.mostrar_area
recta.mostrar_perimetro()

cuadrado = Cuadrado.new(8)
cuadrado.lados
cuadrado.mostrar_area
cuadrado.mostrar_perimetro