# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|

    Blog.create!(
        title: "Blog Post #{blog}",
        body: "TFeugiat scelerisque varius morbi enim nunc faucibus a. Eu augue ut lectus arcu bibendum at varius vel pharetra. Quis ipsum suspendisse ultrices gravida dictum. Rhoncus mattis rhoncus urna neque. Habitasse platea dictumst quisque sagittis purus sit amet volutpat. In fermentum et sollicitudin ac orci phasellus egestas tellus. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Semper viverra nam libero justo laoreet. Nulla aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Nullam ac tortor vitae purus faucibus ornare suspendisse. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. Quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor."
    )


end

puts "10 Blog Post Created"


10.times do |skill|
    Skill.create!(
        title: "Skill #{skill}",
        percent: 10
    )
end

puts "10 Skills Creaed"

9.times do |portfolio|

    Portfolio.create!(
        title: "Portfolio Title: #{portfolio}",
        subtitle: "this is a subtitle",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis porttitor nisi. Quisque eget tincidunt dolor, et luctus nisi. Suspendisse nec dictum dui, in posuere mi. Ut a augue a urna facilisis convallis non a justo. Nulla convallis ac ipsum in convallis. Ut et tortor non lorem condimentum vestibulum ac et mauris. Vestibulum ornare tincidunt fermentum. Phasellus pellentesque rutrum arcu ac sollicitudin. Maecenas dignissim sagittis augue sit amet facilisis. Vestibulum dapibus accumsan fringilla. Nunc et nibh lorem. Quisque a velit lectus.",
        main_image: "https://dummyimage.com/600x400/000/fff"
    )

end


