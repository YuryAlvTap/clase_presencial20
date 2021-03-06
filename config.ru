# config.ru
require 'rack'
class MiPrimeraWebApp #objeto con el metodo call
  def call(env)       # info del request
    if env['REQUEST_PATH'] == '/index'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']] # la respuesta
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en otro landing! </h1>']]

    elsif env['REQUEST_PATH'] == '/notfound'
      [404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]    	
    end
  end
end
run MiPrimeraWebApp.new
