# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# add the httprty gem
require 'httparty'

# Clear existing data
Planet.destroy_all
Species.destroy_all
Starship.destroy_all
Vehicle.destroy_all
Film.destroy_all
Person.destroy_all

# method to fetch data from API
def fetch_data(url)
  response = HTTParty.get(url)
  JSON.parse(response.body)
end

# Fetch and seed planets
planets_data = fetch_data('https://swapi.dev/api/planets')
planets_data['results'].each do |planet_data|
  Planet.create!(
    name: planet_data['name'],
    diameter: planet_data['diameter'],
    population: planet_data['population'],
    url: planet_data['url']
  )
end

# Fetch and seed species
species_data = fetch_data('https://swapi.dev/api/species')
species_data['results'].each do |species_data|
  planet_url = species_data['homeworld']
  planet = Planet.find_by(url: planet_url)

  Species.create!(
    name: species_data['name'],
    average_lifespan: species_data['average_lifespan'],
    language: species_data['language'],
    planet: planet,
    url: species_data['url']
  )
end

# Fetch and seed starships
starships_data = fetch_data('https://swapi.dev/api/starships')
starships_data['results'].each do |starship_data|
  Starship.create!(
    name: starship_data['name'],
    model: starship_data['model'],
    manufacturer: starship_data['manufacturer'],
    url: starship_data['url']
  )
end

# Fetch and seed vehicles
vehicles_data = fetch_data('https://swapi.dev/api/vehicles')
vehicles_data['results'].each do |vehicle_data|
  Vehicle.create!(
    name: vehicle_data['name'],
    model: vehicle_data['model'],
    manufacturer: vehicle_data['manufacturer'],
    url: vehicle_data['url']
  )
end

# Fetch and seed films
films_data = fetch_data('https://swapi.dev/api/films')
films_data['results'].each do |film_data|
  Film.create!(
    title: film_data['title'],
    episode_id: film_data['episode_id'],
    opening_crawl: film_data['opening_crawl'],
    director: film_data['director'],
    producer: film_data['producer'],
    release_date: film_data['release_date'],
    url: film_data['url']
  )
end

# Fetch and seed people
people_data = fetch_data('https://swapi.dev/api/people')
people_data['results'].each do |person_data|
  planet_url = person_data['homeworld']
  planet = Planet.find_by(url: planet_url)

  species_url = person_data['species']
  species = Species.find_by(url: species_url)

  films = person_data['films'].map do |film_url|
    Film.find_by(url: film_url)
  end
  starships = person_data['starships'].map do |starship_url|
    Starship.find_by(url: starship_url)
  end
  vehicles = person_data['vehicles'].map do |vehicle_url|
    Vehicle.find_by(url: vehicle_url)
  end

  Person.create!(
    name: person_data['name'],
    height: person_data['height'],
    mass: person_data['mass'],
    hair_color: person_data['hair_color'],
    skin_color: person_data['skin_color'],
    eye_color: person_data['eye_color'],
    birth_year: person_data['birth_year'],
    gender: person_data['gender'],
    planet: planet,
    species: species.first,
    url: person_data['url']
  ) do |person|
    person.starships << starships
    person.films << films
    person.vehicles << vehicles
  end
end
