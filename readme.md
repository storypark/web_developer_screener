Thanks for taking the time to apply and talk with us at Storypark. This is the in-personal adaptation of our original email screener, and is geared towards a front-end role. The original screener can be found on the master branch.

# About the exercise
Do take your time, we're specifically looking for well written and tested code, and something you would consider to be production quality.
You are welcome to use any language you feel comfortable with. The quality matters more than the framework.

## Part 1
https://l3sxfo1sca.execute-api.us-west-2.amazonaws.com/prod/staff_members

Given the api endpoint above, containing a JSON encoded list of Staff, create an program to read and parse this file to display all staff (these aren't real staff members or addresses), ordered by name, who live within 2km of our office, which is located at 175 Victoria Street, Wellington (lat: -41.2920728, long: 174.7748162).

You can use the first formula from this [Great-circle distance - Wikipedia](https://en.wikipedia.org/wiki/Great-circle_distance) to calculate distance, don’t forget, you’ll need to convert degrees to radians.

This output can be displayed however you like, from a light rails_sinatra_go/node web app to a CLI. Do what you're comfortable with, again with a focus on simple, idiomatic code.

## Part 2
Given the code you've written for the first part, find out which employees live on the water, are in houseboats


Hat tip to intercom.io, who have blogged about their hiring process and we've based ours on this.
