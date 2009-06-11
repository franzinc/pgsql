pgsql: PostgreSQL bindings for Allegro Common Lisp
==================================================

Table of contents
-----------------

 * Description
 * Author
 * Author comments
 * Documentation
 * Platforms
 * Dependencies
 * Installation
 * Configuration
 * Licence
 * Notes
 * Examples
 * Franz Inc. Open Source Info

Description
-----------

A PostgreSQL database interface contributed by Barton Gawboy.

Author
------

Barton Gawboy

Author Comments
---------------

I wrote this binding because I wanted to use the SQL database
that comes with the RedHat distribution.  For my purposes,
primarily in conjunction with AllegroServe, it turned out to be
simpler, speedier and handier than using ODBC.I made a simple
(pg:sql statement) function, and a (pg:with-database ...) macro
to use with it.

Platforms
---------

Those platforms that support acl and postgresql.  Last tested
with acl 6.1 on RedHat 7.  See the notes section below.

Dependencies
------------

Allegro Common Lisp and postgresql's libpq library.

Installation
------------

1. Follow postgresql's installation instructions for your
platform.
 
2. Ensure that postgresql's postmaster process is running.
 
    `(eg, ps aux | grep postmaster)`

3. Make note of the location that these sources are stored.

4. Change the default directory in the system.cl file to the
place you put it.

5. Start acl and load the PostgreSQL library

    `(load "libpq.so")`    <--- note that is a "pq" not a "pg"

6. Compile and load the :pgsql system

>     (excl:compile-system :pgsql)
>     (excl:load-system :pgsql)

Configuration
-------------

See step 4 of the installation process above

Usage Documentation
-------------------

Load the library.

    (require :pgsql) 
-or-
    (excl:load-system :pgsql)

TODO: Add more usage info.  See the notes section below.

License
-------

The pgsql source code is licensed under the terms of the 
[Lisp Lesser GNU Public License](http://opensource.franz.com/preamble.html), 
known as the LLGPL. The LLGPL consists of a preamble and the LGPL. Where these 
conflict, the preamble takes precedence.  This project is referenced in the 
preamble as the LIBRARY.

Notes
-----

The C code implies virtual packages of both pq and pg. I just
chose one, "pg", based on what I thought sounded best.

The support functions mimic ODBC syntax and are extremely
simplistic, partly on purpose.
However, we could eventually take advantage of more advanced features
in PostgreSQL, if the support functions  are further developed.
  
### Todo:

1. include examples
2. develop the support functions further
3. test on more platforms

Examples and Information
------------------------

TODO, see the notes section above.

Franz Inc. Open Source
----------------------

This project's homepage is <http://opensource.franz.com>. There is an 
informal community support and development mailing list 
[opensource@franz.com](http://opensource.franz.com/mailinglist.html) 
for these open source projects. We encourage you to take advantage by 
subscribing to the list.  Once you're subscribed, email to 
<opensource@franz.com> with your questions, comments, suggestions, 
and patches.
