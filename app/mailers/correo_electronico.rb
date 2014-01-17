class CorreoElectronico < ActionMailer::Base
  default from: "servtel@uah.es"
  def email_bienvenida(user)
    @user = user
    @url = 'http://ServTel.uah.es/login'
    attachments["excellent_weather.jpg"]=File.read("/home/rails/workspace/sensormanager/public/img/excellent_weather.jpg")
    mail(to:@user.email,subject:'Prueba e-mail')
  end
end
