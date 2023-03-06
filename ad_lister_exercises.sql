use ymir_adam;

# For a given ad, what is the email address of the user that created it?

select a.ad_id, a.title, alu.username
from ad_lister_ads as a
         join ad_lister_users alu on alu.user_id = a.user_id;

# For a given ad, what category, or categories, does it belong to?

select a.ad_id, title, group_concat(category separator ', ') as categories
from ad_lister_ads as a
         join ad_lister_category_ad alca on a.ad_id = alca.ad_id
         join ad_lister_categories alc on alca.category_id = alc.category_id
group by a.ad_id;

# For a given category, show all the ads that are in that category.
# All of the ads in the Automobile category.
select a.ad_id, title, description
from ad_lister_ads as a
         join ad_lister_category_ad ca on a.ad_id = ca.ad_id
where ca.category_id in (select category_id
                         from ad_lister_categories
                         where category = 'Automobile');

# For a given user, show all the ads they have posted.
# For user_id = 1
select title, description, group_concat(c.category separator ', ') as categories
from ad_lister_ads as a
    join ad_lister_users u on u.user_id = a.user_id
    join ad_lister_category_ad ca on a.ad_id = ca.ad_id
    join ad_lister_categories c on ca.category_id = c.category_id
where u.username = 'joe.henderson@email.com'
group by a.ad_id;