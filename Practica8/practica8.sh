import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

msg = MIMEMultipart()

mensaje = input('Ingresa el mesaje: ')

password = input('Ingresa tu contraseña: ')
msg['From'] = input('Ingresa tu correo electronico: ')
msg['To'] = input('Ingresa el correo electronico del destinatario: ')
msg['Subject'] = input('Descripción: ')

msg.attach(MIMEText(mensaje, 'plain'))

servidor = smtplib.SMTP('julianc9892@gmail.com', 587)
servidor.starttls()

servidor.login(msg['From'], password)

servidor.sendmail(msg['From'], msg['To'], msg.as_string())
servidor.quit()

print('Mensaje Enviado correctamente a el correo', msg['To'])