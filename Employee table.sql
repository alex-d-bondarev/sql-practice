INSERT INTO `tutorial`.`employee`
(`sJob`, `nSalary`, `company_id`, `user_id`)
VALUES
#('job1', 1000, 1, 8),
#('job2', 2000, 1, 9),
('manager1', 3000, 1, 14),
('manager2', 5000, 3, 15),
('manager3', 1000, 3, 16);

Delete from `tutorial`.`employee`;

select * from `tutorial`.`employee`;
