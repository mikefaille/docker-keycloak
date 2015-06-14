# Keycloak

Integrated SSO and IDM for browser apps and RESTful web services.  Built on top of the OAuth 2.0, Open ID Connect, JSON Web Token (JWT) and SAML 2.0 specifications.  Keycloak has tight integration with a variety of platforms and has a HTTP security proxy service where we don't have tight integration.  Options are to deploy it with an existing app server, as a black-box appliance, or as an Openshift cloud service and/or cartridge.

Check out this introductory presentation and demo of Keycloak:

Intro Screencast :

https://www.youtube.com/watch?v=5MQoJZKXM_s


## Run

``` sh
$ docker run -p 8080:8080 -p 9990:9990 mikefaille/keycloak
```


## Features

* SSO and Single Log Out for browser applications
* Social Broker.  Enable Google, Facebook, Yahoo, Twitter social login with no code required.
* Optional LDAP/Active Directory integration
* Optional User Registration
* Password and TOTP support (via Google Authenticator).  Client cert auth coming soon.
* User session management from both admin and user perspective
* Customizable themes for user facing pages: login, grant pages, account management, emails, and admin console all customizable!
* OAuth Bearer token auth for REST Services
* Integrated Browser App to REST Service token propagation
* Admin REST API
* OAuth 2.0 Grant requests
* CORS Support
* CORS Web Origin management and validation
* Completely centrally managed user and role mapping metadata.  Minimal configuration at the application side
* Admin Console for managing users, roles, role mappings, applications, user sessions, allowed CORS web origins, and OAuth clients.
* Deployable as a WAR, appliance, or an Openshift  cloud service (SaaS).
* Supports JBoss AS7, EAP 6.x, Wildfly, Tomcat, Jetty, and Pure Javascript applications.   Plans to support Node.js, RAILS, GRAILS, and other non-Java applications.
* HTTP Security Proxy for environments/platforms/languages that don't have a client adapter
* Javascript/HTML 5 adapter for pure Javascript apps
* Session management from admin console
* Revocation policies
* Password policies
* OpenID Connect Support
* SAML 2.0
