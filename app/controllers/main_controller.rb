class MainController < ApplicationController

	def index
		@index = "hellodddd"
		change_format
	end

	def change_format

		img =  Magick::Image.read('t_rex.svg').first


		# If you want to save this image use following
		# img.write("mythumbnail.gif")

		# otherwise send it to the browser as follows
		send_data(img.to_blob, :disposition => 'inline', :type => 'image/gif')
	end
end
