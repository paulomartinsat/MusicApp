# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#artists = Artist.create(ArtistsRequestService.new.request.flatten)

list_artists= ArtistsRequestService.new.request.flatten

Role.find_or_create_by({ 
    name: 'admin'
    
})
Role.find_or_create_by({ 
    name: 'user'
    
})
sha1_password = Digest::SHA1.hexdigest("123123123123")

admin = User.find_or_create_by(username: "admin_music_app")
admin.password_digest = BCrypt::Password.create(sha1_password).to_s
admin.add_role :admin
admin.save!

    