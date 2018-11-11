Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects 
    def homeSub

        @homeSub ||= HomeSubmarino.new

    end

    def paginaProduto

        @paginaProduto ||= ProdutoSubmarino.new

    end

    def homeAme

        @homeAme ||= HomeAmericanas.new

    end

    def buscaProdutoAme

        @buscaProdutoAme ||= BuscaAmericanas.new

    end

    def homeAma

        @homeAma ||= HomeAmazon.new

    end

    def buscaProdutoAma

        @buscaProdutoAma ||= BuscaAmazon.new

    end
end