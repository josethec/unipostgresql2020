create table tv_series(
	id serial primary key,
	title text not null,
	description text not null,
	creator text not null
);

INSERT INTO tv_series(title,description, creator)
values 
('Stranger Things','Stranger Things is an American science fiction, drama-horror web television series created by the Duffer Brothers and released on Netflix...','Duffer Brothers'),
('Breaking Bad','Breaking Bad is an American neo-Western crime drama television series created and produced by Vince Gilligan. The show aired on AMC from January 20, 2008, to September 29, 2013. It was set and filmed in Albuquerque, New Mexico, and tells the story of Walter White (Bryan Cranston), an underemployed and depressed high school chemistry teacher who is struggling with midlife crisis and a recent diagnosis of stage-three lung cancer...','Vince Gilligan'),
('Game of Throne','Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO. It is an adaptation of A Song of Ice and Fire, George R. R. Martins series of fantasy novels, the first of which is A Game of Thrones. The show was both produced and filmed in Belfast and elsewhere in the United Kingdom. Filming locations also included Canada, Croatia, Iceland, Malta, Morocco, and Spain.[4] The series premiered on HBO in the United States on April 17, 2011, and concluded on May 19, 2019, with 73 episodes broadcast over eight seasons.','George R. R. Martin'),
('Rick and Morty','Rick and Morty is an American adult animated science fiction sitcom created by Justin Roiland and Dan Harmon for Cartoon Networks late-night programming block Adult Swim. The series follows the misadventures of cynical mad scientist Rick Sanchez and his good-hearted but fretful grandson Morty Smith, who split their time between domestic life and interdimensional adventures.','Justin Roiland')
