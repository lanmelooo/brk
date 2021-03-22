Dir[File.join(File.dirname(__FILE__),
              '../pages/*.rb')].sort.each { |file| require file }

# modulos para chamar as classes instanciadas
module Pages
    def brk_page
        BRK.new
    end
end