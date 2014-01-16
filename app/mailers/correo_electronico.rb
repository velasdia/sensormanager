class CorreoElectronico < ActionMailer::Base
  default from: "velasdia@gmail.com"
  def email_bienvenida(user)
    @user = user
    @url = 'http://prueba.prueba'
    mail (to:@user.email, subject:'Prueba e-mail')
  end
end
