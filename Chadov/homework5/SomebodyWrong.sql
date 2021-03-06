-- Пока так.

CREATE TABLE Users (
 Id SERIAL PRIMARY KEY,
 Name VARCHAR(50) UNIQUE,
 Email VARCHAR(50) UNIQUE,
 WalletScore BIGINT NOT NULL,
 Score BIGINT NOT NULL,
 DateBirth TIMESTAMP,
 RegDttm TIMESTAMP NOT NULL
);
CREATE INDEX indexName ON Users(Name);
CREATE INDEX indexEmail ON Users(email);

CREATE TABLE IF NOT EXISTS sessions (
	Id SERIAL PRIMARY KEY,
	UserId INT REFERENCES Users(Id),
	BeginDttm TIMESTAMP,
	EndDttm TIMESTAMP
);

CREATE TABLE IF NOT EXISTS payments (
	Id SERIAL PRIMARY KEY,
	UserId INT REFERENCES Users(Id),
	PaymentSum DOUBLE,
	PaymentDttm TIMESTAMP
);

CREATE TABLE Topic (
 Id SERIAL PRIMARY KEY,
 Name VARCHAR(50) UNIQUE,
 Description VARCHAR(1000),
 DialogsCount BIGINT NOT NULL
);
CREATE INDEX indexName ON Topic(Name);