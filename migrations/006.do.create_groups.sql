CREATE TABLE groups (
    id BIGSERIAL PRIMARY KEY,
    entity_id BIGINT REFERENCES entity(id) ON DELETE CASCADE,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    group_name TEXT NOT NULL UNIQUE,
    group_description TEXT NOT NULL,
    image_url TEXT NOT NULL,
    slug TEXT NOT NULL
);

