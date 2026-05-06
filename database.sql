CREATE DATABASE era;
USE era;

CREATE TABLE periods (
    periods_id INT NOT NULL AUTO_INCREMENT,
    periods_name VARCHAR(100) NOT NULL,
    periods_time_start VARCHAR(20) NOT NULL, /* We can change YEAR for VARCHAR to add the - infront*/
    periods_time_end VARCHAR(20) NOT NULL, /* We can change YEAR for VARCHAR to add the - infront*/
    periods_introduction TEXT NOT NULL,
    periods_description TEXT NOT NULL,
    periods_image TEXT NOT NULL,
    periods_image_logo TEXT NOT NULL,
    PRIMARY KEY (periods_id),
);

CREATE TABLE events (
    events_id INT NOT NULL AUTO_INCREMENT,
    events_name VARCHAR(100) NOT NULL,
    events_periods_id INT NOT NULL,
    events_time DATE NOT NULL,
    events_time_trip DATE NOT NULL,
    events_introduction VARCHAR(255) NOT NULL,
    events_description TEXT NOT NULL,
    events_max_join INT NOT NULL,
    events_risque_level INT NOT NULL,
    events_image TEXT NOT NULL,
    events_price FLOAT NOT NULL,
    PRIMARY KEY (events_id),
    CONSTRAINT fk_periods_events
        FOREIGN KEY (events_periods_id)
        REFERENCES (periods_id)
);

/* Need do add INSERT INTO request */