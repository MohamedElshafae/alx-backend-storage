-- SQL script that creates a stored procedure ComputeAverageScoreForUser
-- that computes and store the average score for a student.

DROP PROCEDURE IF EXISTS computeAverageScoreForUser;

DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(IN student_id INT)
BEGIN
  DECLARE average_score FLOAT;
  SELECT AVG(score) INTO average_score FROM corrections WHERE user_id = student_id;
  UPDATE users SET average_score = average_score WHERE id = student_id;
END //
DELIMITER ;
