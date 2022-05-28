Azure Active Directory
=

To register your app and get the necessary app information.

Navigate to Azure Active Directory in the Azure portal.
You should already have a default tenant to use, but if not, create a new tenant and fill in the required information.
Navigate to the "App registrations" page, and enter a name for the app, while allowing the widest set of accounts to access it.
You'll likely want to be more restrictive when creating your own apps.
You can ignore the Redirect URI for now, as that will be added as part of the next exercise.
After you click "Register", copy down the "Application (client) ID", as you'll need that for the next exercise.
Additionally, under "Manage", click "Certificates & secrets", then "+ New client secret", then enter a description (you can decide on your own desired expiration time). Copy down string under "Value", and make sure you store it somewhere safe.
