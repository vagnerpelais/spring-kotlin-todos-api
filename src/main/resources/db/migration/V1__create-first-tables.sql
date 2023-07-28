
SET TIMEZONE TO 'America/Sao_Paulo';

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TYPE urgency_enum AS ENUM ('LOW' , 'HIGH', 'MAX', 'MEDIUM');

CREATE TABLE todos (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    date_to_do DATE,
    urgency urgency_enum DEFAULT 'LOW'
);