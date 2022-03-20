# Technical Test

The purpose of this test is to develop a web application displaying "Chuck Norris" quotes using the API exposed by the ICNDB.com site (http://www.icndb.com/api/).

Through this technical test, you will be evaluated on the following:
- Understanding of the task
- The quality of the code (compliance with standards, non-repetition, good practices,
etc.)
- Code security (validation of inputs, injections, etc.)

### Part 1 – Displaying a quote

Display of a random quote, which updates when the page reloads.

### Part 2 – Customizing a Citation

Allow the user to enter a first and last name (required) and display a personalized quote. When the page reloads, a new personalized quote must be displayed, while keeping the data entered.

### Installing

Please run the following commands to setup your development env up.

```bash
# clone this repository
https://github.com/papamarfo/icndb_ex.git

# change directory
cd icndb_ex/

# install the project's dependencies using mix
mix deps.get

# create and migrate your database with
mix ecto.setup

# start phoenix endpoint with
mix phx.server
```

Now you can visit localhost:4000 from your browser.