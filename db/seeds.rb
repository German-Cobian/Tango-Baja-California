puts "Seeding..."

Admin.create(
  email: 'jose@gmail.com',
  password: 'jose123',
  name: 'Jose Vega',
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  ).avatar.attach(io: File.open('app/assets/images/Jose.jpeg'), filename: 'Jose.jpeg')

  Admin.create(
    email: 'cristy@gmail.com',
    password: 'cristy123',
    name: 'Cristina Michaus Martinez',
    bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    ).avatar.attach(io: File.open('app/assets/images/Cristina.jpeg'), filename: 'Cristina.jpeg')

  School.create(
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    phone: '663 115 3686',
    email: 'https://www.instagram.com/tangobajacalifornia/',
    whatsapp: 'https://wa.me/526647556441',
    facebook: 'https://www.facebook.com/TangoBajaCalifornia',
    instagram: 'https://www.instagram.com/tangobajacalifornia/',
    webpage: 'https://gacetatango.blogspot.com/',
  )
  
  Activity.create(
    category: 'Clase',
    title: 'Principiantes',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    time: 'Martes 23 de Julio, 5:pm',
    place: 'Callejon del Duende',
  ).images.attach(io: File.open('app/assets/images/embrace1.jpeg'), filename: 'embrace1.jpeg')
  
  Activity.create(
    category: 'Taller',
    title: 'La Importancia de Intencionar',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    time: 'Martes 23 de Julio, 5:pm',
    place: 'El Lugar del Jaguar',
  ).images.attach(io: File.open('app/assets/images/feet1.jpeg'), filename: 'feet1.jpeg')
  
  Activity.create(
    category: 'Seminario',
    title: 'El Tango como Modus Vivendi',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    time: 'Martes 23 de Julio, 5:pm',
    place: 'Lo de Andres',
  ).images.attach(io: File.open('app/assets/images/embrace2.jpeg'), filename: 'embrace2.jpeg')
  
  Article.create(
    category: 'Miscelanea',
    title: 'Milonguenado en Buenos Aires',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  ).images.attach(io: File.open('app/assets/images/feet2.jpeg'), filename: 'feet2.jpeg')
  
  Article.create(
    category: 'Tecnica',
    title: 'Para No Perder el Equilibrio',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  ).images.attach(io: File.open('app/assets/images/embrace3.jpeg'), filename: 'embrace3.jpeg')
  
  Article.create(
    category: 'Historia del Tango',
    title: 'El Tango y Los Imigrantes Arrabaleros',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  ).images.attach(io: File.open('app/assets/images/feet3.jpeg'), filename: 'feet.3.jpeg')
  
  Album.create(
    topic: 'Nuestras Clases',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  )
  
  Album.create(
    topic: 'Milongas',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  )
  
  Album.create(
    topic: 'Presentaciones',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
  )
  
  Medium.create(
    title: 'Lorena Perdio su Zapatilla!', 
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    album_id: 1,
  ).image.attach(io: File.open('app/assets/images/feet4.jpeg'), filename: 'feet4.jpeg')
  
  Medium.create(
    title: 'Todo Mundo a la Pista!', 
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    album_id: 2,
  ).image.attach(io: File.open('app/assets/images/embrace4.jpeg'), filename: 'embrace4.jpeg')
  
  Medium.create(
    title: 'Velos Volar!', 
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus. Tellus pellentesque eu tincidunt tortor aliquam nulla. Eros in cursus turpis massa tincidunt dui ut. Hac habitasse platea dictumst vestibulum rhoncus est. Pretium fusce id velit ut tortor pretium. Vitae tempus quam pellentesque nec. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Amet risus nullam eget felis eget. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Tristique senectus et netus et malesuada. Leo vel orci porta non pulvinar neque.',
    album_id: 3,
  ).image.attach(io: File.open('app/assets/images/feet5.jpeg'), filename: 'feet5.jpeg')