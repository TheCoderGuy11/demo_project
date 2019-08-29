class NotifierMailer < ApplicationMailer
  default from: 'amishra@bestpeers.com'
  
  def generate(p)
    @product = p 
    mail(to: 'abhishek82893@gmail.com',
        subject: 'Product is created')
  end
end
