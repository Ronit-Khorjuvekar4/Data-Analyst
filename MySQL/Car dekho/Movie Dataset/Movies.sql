/* 	Q1: Write a SQL query to find the name and year of the movies. Return movie title, movie release year */
select mov_title as Name ,mov_year as Year from movie;

/* Q2: Write a SQL query to find when the movie 'American Beauty' released. Return movie release year. */
select mov_year as Year from movie where mov_title = 'American Beauty';

/*03: Write a SQL query to find the movie that was released in 1999. Return movie title. */
select mov_title from movie where mov_year = 1999;

/*04: Write a SQL query to find those movies, which were released before 1998. Return movie title.*/
select mov_title from movie where mov_year < 1998;

/*Q5: Write a SQL query to find the name of all reviewers and movies together in a single list.*/        
/*select re.rev_name, m.mov_title from reviewer as re
	left join rating as ra 
    on re.rev_id = ra.rev_id
    left join movie as m
    on m.mov_id = ra.mov_id
    where m.mov_title is not null and re.rev_name!=''
    order by re.rev_id;*/
SELECT rev_name
FROM reviewer
UNION
SELECT mov_title
FROM movie;

/*Q6: Write a SQL query to find all reviewers who have rated seven or more stars to their rating. Return reviewer name.*/
select rev_name from reviewer where rev_name!='' and  rev_id in 
	(select rev_id from rating where rev_stars >= 7);
    
/*Q7: Write a SQL query to find the movies without any rating. Return movie title.*/
select mov_title from movie 
	where mov_id not in
	(select mov_id from rating);

/*08: Write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.*/
select mov_title from movie where mov_id in (905,907,917);

/*09: Write a SQL query to find the movie titles that contain the word 'Boogie Nights'. 
Sort the result-set in ascending order by movie year. 
Return movie ID, movie title and movie release year.*/

select mov_id, mov_title, mov_year from movie 
	where mov_title like '%Boogie Nights%' 
    order by mov_year asc;


/*Q10: Write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. 
Return actor ID. */
select act_id from actor where act_fname = 'Woody' and act_lname = 'Allen';
