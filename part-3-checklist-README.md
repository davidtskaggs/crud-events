# Part-3 Checklist

## Release 0:
* build is user registration, which allows users to create new accounts
* On the homepage, add a "register" link. Clicking the link takes the user to a page with a form for creating a new account. Users must register with an e-mail address, a username, and a password. The e-mail address and username must be unique.

* If registration is unsuccessful, the user should see the registration form and the associated error messages. If registration is successful, the user should be considered logged in and redirected to the homepage where the "register" link is replaced with the user's username. This is demonstrated in Figure 1.

Release 1:
* Now that users can register, allow them to login and logout.
* On the homepage, add a "login" link next to the "register" link. Clicking the link takes the user to a page with a form for logging in.


* If login is unsuccessful, the user should see the login form and an error message. If login is successful, the user should be considered logged in and redirected to the homepage where the "login" and "register" links are replaced with the user's username and a "logout" link.

* Clicking the "logout" link logs the user out and redirects the user back to the homepage.

## Release 2
* Add a feature that allows registered users to host potlucks. Logged-in users should see a "host a potluck" link on the homepage. Clicking the link takes the user to a form. The form should collect data like the date, time, and location of the potluck.

* When the form is submitted, if adding the potluck is unsuccessful (e.g., failing a validation), the user should see the form and the associated error messages.  Each potluck should be associated with the user who added it. This is demonstrated in Figure 3.

## Release 3: Browsing Potlucks
* Add a feature that lists potlucks. Potlucks should be listed on the homepage for any visitor to browse.  Each potluck's name, location, and start time should be displayed.

## Release 4: Editing a Potluck
* Allow users to edit potluck details. On the page showing a potluck, if a logged-in user is also the potluck's host, the user should see an "edit" link. Clicking the link takes the user to a form for editing the potluck. The form should be populated with the potluck's current details. Submitting the form makes a request to update the potluck.

# If the update is unsuccessful, the user should see the form and the associated error messages. If updating the potluck is successful, the user should be redirected to a page showing the potluck's details. The successful outcome is demonstrated

## Release 5: Deleting a Potluck

In the same way that users might need to edit a potluck, they might also need to delete a potluck. Add a feature that allows users to delete potlucks which they've previously added.

On the page showing a potluck, add a "delete" button next to the "edit" link for any potlucks the user added. Clicking the button should delete the potluck and redirect the user back to the homepage. This is demonstrated in Figure 6.

### Still TO DO/ Fix

* Users sign in with an e-mail address and password. (currently users login with username and password)
* If adding the potluck is successful, the user should be redirected to a page showing the potluck's details (currently redirect to page where all potlucks and details are shown)
* Fix how potluck dates are entered. currently must be a string formatted "YYYY-MM-DD HH:MM:SS"

* Only list potlucks that have not started. Order the potlucks by starting time. The potluck with the nearest starting time should be at the top of the list. The name should be a link. Clicking the link takes the user to a page showing the potluck's details. This is demonstrated in Figure 4.

* Start release 6 & 7
