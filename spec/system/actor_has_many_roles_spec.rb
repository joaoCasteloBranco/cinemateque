require 'rails_helper'

describe 'Ator possui muitos papeis' do
  it 'e consegue ve-los' do
    user = User.create!(
      name: "João",
      email: 'joao@email.com',
      password: '123456789'
    )
    login_as user
    actor = Actor.create!(
      name: 'João',
      nacionality: "Brasileira",
      birth_date:  "1960-09-30"
    )

    movie = Movie.create!(title: 'Jurassic Park', year: 1993, director: 'Steven Spielberg', 
              plot:  'Os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.')


    role = Role.create!(
      movie: movie,
      actor: actor,
      role: "Doctor"
    )


    visit root_path
    within('nav') do
      click_on 'Artistas'
    end
    # click_on 'João',

  end
end