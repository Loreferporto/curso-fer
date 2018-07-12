class PerfilPage < SitePrism::Page
    element :formulario, '#user-settings-profile-edit-form'
    element :campo_empresa, '#profile-company'
    element :campo_cargo,'select [name$=job]'
    element :botão_salvar, '#form-submit-button'
    element :alerta, '.panel-c-sucesso'


    def completa_cadastro(cadastro)
        campo_empresa.set cadastro[:empresa]

        combo_cargo.find(
                'option', text: cadastro[:cargo]
            ).select_option

        botão_salvar.click

    end
end