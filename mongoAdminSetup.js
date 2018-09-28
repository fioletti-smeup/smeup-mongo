conn = new Mongo();
db = conn.getDB("admin");

db.createUser(
  {
    user: "admin",
    pwd: "changeme!",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ]
  }
)
