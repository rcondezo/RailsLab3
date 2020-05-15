class FormulariosController < ApplicationController
  def ejercicio1
  end
  
  def ejercicio1_post
    @txt_nombre_producto = params[:txt_nombre_producto]   
    @num_precio_producto = params[:num_precio_producto]
    
    Rails.logger.debug("--------------> " + @txt_nombre_producto)
    Rails.logger.debug("--------------> " + @num_precio_producto)
    
    render "ejercicio1"
  end


  def ejercicio2
  end

  def ejercicio3
  end
  
  def ejercicio3_post
    @opeA = params[:opeA]   
    @opeB = params[:opeB]  
    @operador = params[:operador]  
    
    Rails.logger.debug("--------------> " + @opeA)
    Rails.logger.debug("--------------> " + @opeB)
    Rails.logger.debug("--------------> " + @operador)
    
    @resultado = 0
    
    if @operador == "1"
      @resultado = @opeA.to_i + @opeB.to_i
    elsif @operador == "2"
     @resultado = @opeA.to_i - @opeB.to_i
    elsif @operador == "3"
     @resultado = @opeA.to_i * @opeB.to_i
    elsif @operador == "4"
     @resultado = @opeA.to_i / @opeB.to_i
    end
    
    render 'ejercicio3'
  end


  def ejercicio4
  end

  def ejercicio5
  end
end
