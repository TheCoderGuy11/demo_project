class NotifierMailer < ApplicationMailer
  default from: 'linuxworms11@gmail.com'
  
  def generate(p)
    @product = p 
    mail(to: 'abhishek82893@gmail.com',
        subject: 'Product is created')
  end
end
