Thanks for applying to Storypark! This repo contains everything related to our backend technical screener.

We have designed the process to take less than 3 hours to complete, but understand that everyone's availability may be different. Please let me know (roughly) when we can except your answers. It may take a day or two to review your responses, so hang tight, and we'll give you feedback once one of the team members has looked through things.

# About the screener
- Do take your time, we're specifically looking for well written and tested code, and something you would consider to be production quality.
- You are welcome to use any language you feel comfortable with. The quality matters more than the framework. You may share your answers how you see fit, generally a zip file or github.com link has been preferred by previous candidates.

# Questions
1. What’s your proudest achievement? It can be a personal project or something you’ve worked on professionally. Just a short paragraph is fine, but we’d love to know why you’re proud of it.
2. What's the most interesting technical article you've read recently? What did you like about it and why should we take a look at it?
3. Write some code, that will flatten an array of arbitrarily nested arrays of integers into a flat array of integers. e.g. [[1,2,[3]],4] -> [1,2,3,4].
4. Given a file (`staff_list.json` in this directory), containing a JSON encoded list of Staff, create an program to read and parse this file to display all staff (these aren't real staff members or addresses), ordered by name, who live within 2km of our office, which is located at 175 Victoria Street, Wellington (lat: -41.2920728, long: 174.7748162).
  - You can use the first formula from [this Wikipedia article](https://en.wikipedia.org/wiki/Great-circle_distance) to calculate distance, don’t forget, you’ll need to convert degrees to radians.
  - This output can be displayed however you like, from a light rails/sinatra/go/node web app to a CLI. Do what you're comfortable with, again with a focus on simple, idomatic code.

Hat tip to intercom.io, who have blogged about their hiring process and we've based ours on this.
