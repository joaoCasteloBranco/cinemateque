require 'rails_helper'

describe 'Usuário cadastra um ator ou atriz' do
  it 'e com sucesso' do
    # Arrange
    user = User.create!(
      name: "João",
      email: 'joao@email.com',
      password: '123456789'
    )
    login_as user

    visit root_path
    within('nav') do
      click_on 'Artistas'
    end
    click_on "Adicionar Ator ou Atriz"
    fill_in "Nome", with: "Fernanda Torres"
    fill_in "Nacionalidade", with: "Brasileira"
    fill_in "Data de Nascimento", with: "30/09/1960"
    click_on "Adicionar Artista"

    # Assert
    expect(page).to have_content "Artista Adiciona com Sucesso"
    expect(page).to have_content "Brasileira"
    expect(page).to have_content "30/09/1960"
  end
end