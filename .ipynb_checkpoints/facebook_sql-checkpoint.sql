# ad4ad: date, user_id, event(impression, click, create_ad), unit_id, cost, spend

# users: user_id, country, age

# 1. last 30 days, by country, total spend ()
select date, country, sum(spend) as total_spend 
from (
	select a.date, a.user_id, a.spend, u.country
	from ad4ad a
		left join users u
		on a.user_id == u.user_id

	) joint_table
where datediff(curdate(), date) <= 30
group by country;


#2. how many impressions before users create an ad given an unit?


select u.user_id, u.unit_it, count(*) as count_impressions

from 
	(
	select distinct user_id, unit_id
	from ad4ad 
	where event = 'create_id'
	) u 
	left join ad4ad a
	on  u.user_id = a.user_id and u.unit_id = a.unit_id

where event = 'impression'
group by user_id, unit_id

select 
sum()

# SPAM 
-- Q1: how many posts were reported yesterday for each report Reason?
-- Table: user_actions
-- ds(date, String) | user_id | post_id | action ('view','like','reaction','comment','report','reshare') | extra (extra reason for the action, e.g. 'love','spam','nudity')

select extra as reason, count(distinct post_id) as count_reason
from user_actions
where datediff(curdate, date) = 1 and action = 'report'
group by extra 


-- Q2: introduce a new table: reviewer_removals, please calculate what percent of daily content that users view on FB is actually spam?
--no need to consider if the removal happen at the same post date or not.
-- ds(date, String) | reviewer_id |post_id

select u.date, u.user_id, count(distinct r.post_id)/ count(distinct u.post_id) as percentage
from user_actions u left join
	reviewer_removals r on 
	u.post_id = r.post_id
group by 1, 2;

-- Q3: Q3: How to find the user who abuses this spam system?
-- calculate the percentage of correct spam report
select u.user_id, count(distinct r.post_id)/count(distinct u.post_id) as percentage_of_correct
from user_actions u left join
	reviewer_removals r 
	on u.post_id = r.post_id
where u.extra = 'report';


# Comment distribution 
# content_id, content_type (comment/ post), target_id;
# if its a post then target_id is null, if its a comment the target_id is the post_id
# count of post for each post
select 
	select target_id, count(*) as count_comment
	from table 
	where content_type = 'comment'
	group by comment_id

# Session table
# Date | sessionid | userid | action (enter/click/send/exit) Time table 
# Time table 
# Date | sessionid | time_spent (s)
 
select total_time, count(total_time) as count_item
	select userid, sum(time_spent) as total_time
	from session s left join
		time t on
		s.sessionid = t.sessionid
	group by userid
group by total_time;





