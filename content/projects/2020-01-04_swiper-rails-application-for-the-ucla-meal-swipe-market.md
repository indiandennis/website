---
title: 'Swiper: Rails application for the UCLA meal swipe market'
description: Web application created to make buying and selling meal swipes easier
date: '2020-01-03'
tags:
  - web development
  - software
---
At UCLA, students living in dorms on campus ("on the hill"), get food from the dining halls and takeout locations using prepaid meal swipes. Because there are only a few plans available with a fixed number of swipes, most students end up with either too many or too few swipes by the end of the quarter. In addition, due to the high quality of UCLA's dorm food, many students living off campus want to eat on campus on occasion. This situation naturally leads to a large market for swipes. This market is primarily on Facebook groups, where it is highly unorganized and lacks easy filtering and sorting methods. We sought to resolve this situation for our Scalable Internet Services course.

The completed application can be viewed at: [swiper.ameyathakur.com](https://swiper.ameyathakur.com). There may be some issues due to the seeded DB being too large for Heroku's free tier and the seeded data being older than the current date, messing up some of the filtering.

## The Application

We were required to create the application using Rails, although none of the four of us had used it before. The actual application architecture is relatively simple. There are two models, one for users and one for listings. 

![Swiper Model Graph](/img/uploads/swiper_model.png "Swiper Model Graph")

Users are managed using [Clearance](https://github.com/thoughtbot/clearance), but with custom controllers and views overriding some of the builtins to handle things like payment method selection on signup. The listings model handles the creation of posts to sell swipes. We chose to implement a seller's market, where sellers are the ones to create posts and buyers simply accept the one that they choose or wait for a better option. While this isn't necessarily ideal, it keeps the application simple to implement and to use, which we thought was better than a full market with both buy and sell orders. 

The application has a page to create new listings (for sellers), a page to browse existing listings and sort/filter them, a page to view the user's transactions, and a page to change the user's settings. The UI is styled with Bulma, which in retrospect was a poor decision as it is not nearly as complete as other CSS libraries like Bootstrap. However, our application is simple enough that it didn't cause too many problems. 

## Scaling

The focus of the course was more on the scaling of the Rails application for a large userbase using AWS. We used Elastic Beanstalk to deploy our application, and tested many different scaling approaches, which we benchmarked using Tsung. We had good results with horizontal scaling, but we were database limited, which we possibly could have resolved using Memcached or Redis in front of our Postgres DB. One of the most significant things we missed in regards to scaling was using a separate model for completed listings. If this application was deployed, the number of completed transactions would be far larger than the number of open listings. However, our filtering and sorting code would still have to go through all of the completed listings unnecessarily in the current structure. 

Our final report is much more comprehensive, and can be read [here](https://docs.google.com/document/d/1B6rcEb3s_8UjEMnrZS6GdAKzkma8_xQzvJvgc1XqDXE/edit?usp=sharing).

## Conclusion

Developing with Rails was surprisingly easy once we got used to working with it. I enjoyed the simplicity in the interaction between the front and backend, especially compared to Angular and React, which I had used before. In the future, I may consider Rails as a better option if I need a rapid prototype, although it would most likely be easier to scale an application with the front and backend separated so that one can be modified independently of the other. I also learned a lot about working in groups from this project, since we used an agile workflow. Overall, this project gave me a great idea of what it is like to work on software engineering in the industry, rather than academically. The knowledge will undoubtedly benefit me in the future.
