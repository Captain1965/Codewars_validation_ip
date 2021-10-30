# Проверка валидности  IP адреса
# encoding UTF-8 
def is_valid_ip(ip)
	arr_ip = ip.split('.')
	if arr_ip.size != 4 
		return 'error'
	end
	for item in arr_ip do
		if item.to_i  < 0  or item.to_i > 255 or item[0].to_i == 0 
			then
		   return 'error'
		end
	end	 
	'valid'			
end
=begin
puts is_valid_ip('1.1.1.1')
puts is_valid_ip('123,45,67,89')
puts is_valid_ip(' 1.2.3.4')
puts is_valid_ip('1.2.3.4')
puts is_valid_ip('1.2.3.4 ')
puts is_valid_ip('023.45.67.89')
puts is_valid_ip('01.2.3.4')
puts is_valid_ip('11.254.13.24')
puts is_valid_ip('11.256.103.04 ')
puts is_valid_ip('-1.2.3.4')
puts is_valid_ip('1.2.3.4.5')
=end