USE ymir_adam;
DELETE FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE genre = "Rock";
DELETE FROM albums WHERE artist = "AC/DC";