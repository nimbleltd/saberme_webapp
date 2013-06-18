Saberme Web App
---------------

Purpose
=======
The purpose of this web app is to build the Rails portion of the rotoscope app.  (built first half of NSS)
Allowing users to submit video files and be notified when they are complete

DB relationships
==================
User has account
User has many videos

Videos have "states":
    - submitted
    - <del>in-progress</del>
    - <del>(the next 2 will repeat)</del>
    - <del>needs to be reviewd</del>
    - <del>review complete</del>
    - <del>(the previous 2 will repeat)</del>
    - Final Approval

