---nomor 3
create database school;

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR DEFAULT NULL,
    email VARCHAR UNIQUE NOT NULL,
    age INTEGER DEFAULT 18,
    gender VARCHAR CHECK (gender IN ('male', 'female')),
    date_of_birth DATE NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

--- nomor 4
CREATE OR REPLACE FUNCTION count_movies_by_genre(input_genre text)
RETURNS integer AS $$
DECLARE
    movie_count integer;
BEGIN
    SELECT COUNT(*) INTO movie_count
    FROM movie_genres
    INNER JOIN genres ON movie_genres.gen_id = genres.gen_id
    INNER JOIN rating ON movie_genres.mov_id = rating.mov_id
    WHERE genres.gen_title = input_genre;
    
    RETURN movie_count;
END;
$$ LANGUAGE plpgsql;

select count_movies_by_genre('Drama');

---nomor 5
explain analyze
select mov_title from movie
where mov_lang = 'Japanese';

-- momor 6
set enable_seqscan = off;
CREATE INDEX filter ON ninja (email);
explain
select nama,desa from ninja
where email = 'naruto@mail.com'

--- nomor 7
with count_genres as (select genres.gen_title,
					  rank() over (order by rev_stars desc) as rank
					  from movie_genres
inner join  genres on movie_genres.gen_id = genres.gen_id 
inner join rating on movie_genres.mov_id= rating.mov_id
where rating.rev_stars is not null					)

select * from count_genres 
where rank = 1;