puts "Seeding..."

Activity.create(
  category: 'Clase',
  title: 'Principiantes',
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  time: 'Martes 23 de Julio, 5:pm',
  place: 'Callejon del Duende',
).images.attach(io: File.open('app/assets/images/embrace1.jpeg'), filename: 'embrace1.jpeg')

Activity.create(
  category: 'Taller',
  title: 'La Importancia de Intencionar',
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  time: 'Martes 23 de Julio, 5:pm',
  place: 'El Lugar del Jaguar',
).images.attach(io: File.open('app/assets/images/feet1.jpeg'), filename: 'feet1.jpeg')

Activity.create(
  category: 'Seminario',
  title: 'El Tango como Modus Vivendi',
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  time: 'Martes 23 de Julio, 5:pm',
  place: 'Lo de Andres',
).images.attach(io: File.open('app/assets/images/embrace2.jpeg'), filename: 'embrace2.jpeg')

Article.create(
  category: 'Miscelanea',
  title: 'Milonguenado en Buenos Aires',
  text: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
).images.attach(io: File.open('app/assets/images/feet2.jpeg'), filename: 'feet2.jpeg')

Article.create(
  category: 'Tecnica',
  title: 'Para No Perder el Equilibrio',
  text: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
).images.attach(io: File.open('app/assets/images/embrace3.jpeg'), filename: 'embrace3.jpeg')

Article.create(
  category: 'Historia del Tango',
  title: 'El Tango y Los Imigrantes Arrabaleros',
  text: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
).images.attach(io: File.open('app/assets/images/feet3.jpeg'), filename: 'feet.3.jpeg')

Album.create(
  topic: 'Our Clases',
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
)

Album.create(
  topic: 'Milongas',
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
)

Album.create(
  topic: 'Presentations',
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
)

Medium.create(
  title: 'Lorena Lost Her Shoe!', 
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  album_id: 1,
).image.attach(io: File.open('app/assets/images/feet4.jpeg'), filename: 'feet4.jpeg')

Medium.create(
  title: 'Eveybodys Goin ta Town!', 
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  album_id: 2,
).image.attach(io: File.open('app/assets/images/embrace4.jpeg'), filename: 'embrace4.jpeg')

Medium.create(
  title: 'Watch Them Fly!', 
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  album_id: 3,
).image.attach(io: File.open('app/assets/images/feet5.jpeg'), filename: 'feet5.jpeg')

Event.create(
  title: 'Milonga del Angel', 
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  hosted_by: 'Tango Baja California',
  start_time: '16 Nov 2024 18:20:49.262680000',
  end_time: '19 Nov 2024 09:20:49.262680000',
  place: 'Centro Cultural Tijuana',
)
Event.create(
  title: 'Como Bailar Como Un Gaucho', 
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  hosted_by: 'Tango Sin Fronteras',
  start_time: '09 Sept 2024 12:20:49.262680000',
  end_time: '16 Sept 2024 18:20:49.262680000',
  place: 'Casa de Cultura, Altamira',
)

Event.create(
  title: 'Presentacion Grupo Juanetes', 
  description: 'Lorem ipsum dolor sit amet, mel mutat facete eu, vel brute mnesarchum 
  neglegentur te. Eu sale verear nominavi mel, eam iriure theophrastus id. Te mel simul 
  aliquip consequuntur, mundi partiendo ad nam. Id usu epicuri accommodare...',
  hosted_by: 'Milonga Cascabelito',
  start_time: '07 Aug 2024 21:20:49.262680000',
  end_time: '09 Aug 2024 12:20:49.262680000',
  place: 'Estudios Morocha',
)