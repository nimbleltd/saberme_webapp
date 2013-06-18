Saberme Web App
---------------

Purpose
=======
The purpose of this web app is to build the Rails portion of the rotoscope app.  (built first half of NSS)
Allowing users to submit video files and be notified when they are complete

DB relationships
==================
User has account<br>
User has many videos<br>
User can follow and have many "friends"<br>

Videos have "states":<br>
    - submitted<br>
    - in-progress<br>
    - <del>(the next 2 will repeat)</del><br>
    - <del>needs to be reviewd</del><br>
    - <del>review complete</del><br>
    - <del>(the previous 2 will repeat)</del><br>
    - Final Approval<br>

