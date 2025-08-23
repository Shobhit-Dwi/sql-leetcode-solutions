SELECT user_id, trial.trial_avg_duration, paid.paid_avg_duration 
FROM (
    SELECT user_id, ROUND(AVG(activity_duration), 2) AS trial_avg_duration
    FROM UserActivity
    WHERE activity_type = 'free_trial'
    GROUP BY user_id
) trial
INNER JOIN (
    SELECT user_id, ROUND(AVG(activity_duration), 2) AS paid_avg_duration
    FROM UserActivity
    WHERE activity_type = 'paid'
    GROUP BY user_id
) paid
USING(user_id)
ORDER BY user_id;
