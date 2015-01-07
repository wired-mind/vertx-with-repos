vertx-with-repos
=================

We needed a way to run vertx and have it point to our private sonotype repository. This image allows you to set the CUSTOM_REPO env var which will edit
the vertx repos.txt file. I.e.

    docker run --env CUSTOM_REPO=maven:http://username:password@private-sonatype-host/repopath cyberphysical/vertx-with-repos runmod group~artifact~version