# JSP Demo (PP-CSA sample pages)

Minimal JSP pages extracted and cleaned.

## How to run (Tomcat)

1) Install Apache Tomcat.
2) Copy this folder to Tomcat's `webapps/` and name it `MyJSPProject`.
3) Start Tomcat, then open:
   http://localhost:8080/MyJSPProject/index.jsp

## Notes
- Pages expect backend endpoints/servlets:
  - RegisterOwner, KGCLogin, TPALogin, uploadfile, Approve
- approve.jsp references classes in `com.dao` and `com.models`.
  Replace with your DAO/model or stub for UI testing.
- Bootstrap is loaded via CDN for simplicity.