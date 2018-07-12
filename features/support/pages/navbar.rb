class Navbar < SitePrism::Page, '
    element :meu_usuario, 'a[href*=dropdow]'
    element :link_sair, 'a[href$=logout]'
    
    def logout
        menu_usuario.click
        menu_sair.click
    end
end
