# Use official WildFly base image
FROM jboss/wildfly:10.0.0.Final

# Add PostgreSQL JDBC driver to deployments folder
ADD postgresql.jar /opt/jboss/wildfly/standalone/deployments/

# Add your application WAR file to deployments
ADD SearchPath.war /opt/jboss/wildfly/standalone/deployments/

# Expose WildFly port
EXPOSE 8080

# Start WildFly server
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
