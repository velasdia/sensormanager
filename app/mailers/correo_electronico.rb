class CorreoElectronico < ActionMailer::Base
  default from: "servtel@uah.es"
  def email_bienvenida(user)
    @user = user
    @url = 'http://ServTel.uah.es/login'
    mail(to:@user.email,subject:'Prueba e-mail')
  end
end
