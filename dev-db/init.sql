-- Create users with different passwords
CREATE USER study_link_user WITH PASSWORD '';
CREATE USER whisperella_user WITH PASSWORD '';

-- Create databases if they don't exist
CREATE DATABASE "study-link";
CREATE DATABASE "whisperella";

-- Grant privileges to users on their respective databases

-- psql -U postgres -h localhost -p 5432 -d study-link
ALTER SCHEMA public OWNER TO study_link_user;
GRANT ALL ON SCHEMA public TO study_link_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO study_link_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO study_link_user;
GRANT CREATE ON SCHEMA public TO study_link_user;
GRANT ALL PRIVILEGES ON DATABASE "study-link" TO study_link_user;

-- psql -U postgres -h localhost -p 5432 -d whisperella
ALTER SCHEMA public OWNER TO whisperella_user;
GRANT ALL ON SCHEMA public TO whisperella_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO whisperella_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO whisperella_user;
GRANT CREATE ON SCHEMA public TO whisperella_user;
GRANT ALL PRIVILEGES ON DATABASE "whisperella" TO whisperella_user;