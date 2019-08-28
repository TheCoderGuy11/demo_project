class NotifierMailer < ApplicationMailer
  default from: 'amishra@gmail.com'
  
  def welcome(p)
    @product = p 
    mail(to: abhishek82893@gmail.com,
        subject: 'Product is created')
  end
end
