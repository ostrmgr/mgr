Instrukcja odtworzenia dla systemu Windows

1. Poberanie ze strony http://rubyinstaller.org/downloads/ instalatora Ruby w wersji 2.3
2. Zainstalowanie Ruby w wersji 2.3 za pomocą pobranego instalatora
3. Pobranie Development Kit dla Ruby >2.0 ze strony http://rubyinstaller.org/downloads/
4. Zainstalowanie Development Kit według instrukcji na stronie https://github.com/oneclick/rubyinstaller/wiki/Development-Kit
5. Włączenie konsoli systemowej, przejście do katalogu z plikami źródłowymi (np. "cd C:/Users/Uzytkownik/mgr-master)
6. Wykonanie komendy "gem install rails"
7. Wykonanie komendy "bundle install"
8. Dodanie nowych użytkowników do pliku app/db/seeds.rb, przykładowo:

User.create!(email: "nauczyciel@administrator.com",
            password: "nauczyciel123",
            admin: true)
            
User.create!(email: "uczen@nieadministrator.pl",
            password: "uczen123")
            
9. Wykonanie komendy "rake db:setup"
10. Wykonanie komendy "rake db:install"
11. Wykonanie komendy "rake db:migrate"
12. Wykonanie komendy "rails server"
13. Po wykonaniu wszystkich powyższych czynności aplikacja internetowa dostępna jest pod adresem http://localhost:3000