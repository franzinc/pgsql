PostgreSQL binding

Table of contents:

   1. Description
   2. Author
   3. Author Notes
   4. Documentation
   5. Platforms
   6. Dependencies
   7. Installation
   8. Configuration
   9. Licence
  10. Notes
  11. Examples
  12. Open Source 

**********************************************************************

   1. Description:
   
       a PostgreSQL database interface contributed by Barton Gawboy

   2. Author:

       Barton Gawboy

   3. Author Notes:

       I wrote this binding because I wanted to use the SQL database
       that comes with the RedHat distribution.  For my purposes,
       primarily in conjunction with AllegroServe, it turned out to be
       simpler, speedier and handier than using ODBC.I made a simple
       (pg:sql statement) function, and a (pg:with-database ...) macro
       to use with it.

   4. Platforms:

       Those platforms that support acl and postgresql.  Last tested
       with acl 6.1 on RedHat 7.  See the notes (#9)

   5. Dependencies:

       Allegro Common Lisp and postgresql

   6. Installation:

       i.   Follow postgresql's installation instructions for your
            platform.
 
       ii.  Ensure that postgresql's postmaster process is running.
              (eg, ps aux | grep postmaster)

       iii. Make note of the location that these sources are stored.

       iv.  Change the default directory in the system.cl file to the place
            you put it.

       v.   start acl and load the PostgreSQL library
              (load "libpq.so")    <--- note that is a "pq" not a "pg"

       vi.  Compile and load the :pgsql system
              (excl:compile-system :pgsql)
              (excl:load-system :pgsql)

   7. Configuration:

      See step "iv" of the installation process.

   8. Usage Documentation:

      Load the library.

        (require :pgsql) or (excl:load-system :pgsql)

      TODO: Add more usage info.  See the notes below (#9)

   9. License:

      The pgsql source code is licensed under the terms of the Lisp
      Lesser GNU Public License, known as the LLGPL. The LLGPL
      consists of a preamble and the LGPL. Where these conflict, the
      preamble takes precedence. pgsql is referenced in the preamble
      as the LIBRARY.

  10. Notes

       Minimal, simplistic sql function mimics ODBC syntax.

       The C code implies virtual packages of both pq and pg. I just
       chose one, "pg", based on what I thought sounded best.

       The support functions mimic ODBC syntax and are extremely
       simplistic, partly on purpose.
       However, we could eventually take advantage of more advanced features
       in PostgreSQL, if the support functions  are further developed.
  
      Todo:

        1) include examples
        2) develop the support functions further
        3) test on more platforms

  11. Examples and Information.

      TODO, see the notes above (#9)

  12. Open Source

       This project is hosted on the http://opensource.franz.com site.
       There is an informal community support and development mailing
       list (opensource@franz.com) for these open source projects. We
       encourage you to take advantage by subscribing to the list by
       visiting http://opensource.franz.com/mailinglist.html. Once
       you're subscribed, send email to opensource@franz.com with your
       questions, comments, suggestions, and patches. 
