CREATE TABLE stars (
  star_name TEXT PRIMARY KEY,
  star_temp_in_kelvin NOT NULL INT
);

CREATE TABLE planets (
  planet_name TEXT PRIMARY KEY,
  orbital_period_in_yrs NOT NULL FLOAT,
  orbits_around_star NOT NULL TEXT REFERENCES stars);

CREATE TABLE moons (
  moon_name TEXT PRIMARY KEY,
  associated_planet NOT NULL TEXT REFERENCES planets);

INSERT INTO stars
  (star_name, star_temp_in_kelvin)
  VALUES
  ('The Sun', 5800),
  ('Proxima Centauri', 3042),
  ('Gliese 876', 3192);


INSERT INTO planets
  (planet_name, orbital_period_in_yrs, orbits_around_star)
  VALUES
  ('Earth', 1.00, 'The Sun'),
  ('Mars', 1.882, 'The Sun'),
  ('Venus', 0.62, 'The Sun'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri'),
  ('Gliese 876 b', 0.236, 'Gliese 876');

INSERT INTO moons
  (moon_name, associated_planet)
  VALUES
  ('The Moon', 'Earth'),
  ('Phobos', 'Mars'),
  ('Deimos', 'Mars');

