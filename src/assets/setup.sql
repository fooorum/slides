CREATE TABLE Forum 
(
    id integer PRIMARY KEY,
    name text NOT NULL UNIQUE,
    description text,
    createdAt text NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE User 
(
    id integer PRIMARY KEY,
    name text NOT NULL UNIQUE,
    description text,
    password text NOT NULL,
    createdAt text NOT NULL DEFAULT CURRENT_TIMESTAMP,
    isAdmin integer NOT NULL DEFAULT FALSE
);

CREATE TABLE Post 
(
    id integer PRIMARY KEY,
    title text NOT NULL,
    description text NOT NULL,
    embedId integer REFERENCES Embed (id),
    userId integer NOT NULL REFERENCES User (id),
    forumId integer NOT NULL REFERENCES Forum (id),
    createdAt text NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted integer NOT NULL DEFAULT FALSE
);

CREATE TABLE Comment 
(
    id integer PRIMARY KEY,
    description text NOT NULL,
    userId integer NOT NULL REFERENCES User (id),
    postId integer NOT NULL REFERENCES Post (id),
    parentId integer REFERENCES Comment (id),
    createdAt text NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted integer NOT NULL DEFAULT FALSE
);

CREATE TABLE Embed 
(
    id integer PRIMARY KEY,
    url text NOT NULL UNIQUE,
    title text,
    description text,
    mediaId integer REFERENCES Media (id)
);

CREATE TABLE Media 
(
    id integer PRIMARY KEY,
    url text NOT NULL UNIQUE,
    type text NOT NULL,
    alt text,
    width integer,
    height integer
);

CREATE TABLE Vote 
(
    userId integer NOT NULL REFERENCES User (id),
    postId integer REFERENCES Post (id),
    commentId integer REFERENCES Comment (id),
    score integer NOT NULL
);
