# Start my openshift cluster
minishift start --memory 6144 --cpus 3;

# Log in into the new OpenShift cluster
oc login -u system:admin;

# Use better resources
oc delete is --all -n openshift
oc create -f https://raw.githubusercontent.com/openshift/origin/master/examples/image-streams/image-streams-rhel7.json -n openshift
oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/jboss-image-streams.json -n openshift

# Clone the demo git
git clone https://github.com/ThomasClaessens/openshift-cd-demo.git

# Create the projects
oc new-project dev --display-name="Tasks - Dev";
oc new-project stage --display-name="Tasks - Stage";
oc new-project cicd --display-name="CI/CD";

# Put the data into the projects
oc process -f openshift-cd-demo/cicd-template.yaml | oc create -f - ;

# Allow jenkins to access the different projects
oc policy add-role-to-user edit system:serviceaccount:cicd:default -n dev;
oc policy add-role-to-user edit system:serviceaccount:cicd:default -n stage;
oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n dev;
oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n stage;

# Give the developer user access to the new projects
oc policy add-role-to-user edit developer -n dev;
oc policy add-role-to-user edit developer -n stage;
oc policy add-role-to-user edit developer -n cicd;

# Open the webinterface
minishift console

# The credentials
echo "OpenShift Credentials";
echo "user: developer";
echo "password: developer";
echo "";
echo "Jenkins credentials";
echo "user: admin";
echo "password: password";
echo "";
echo "Gogs credentials";
echo "user: gogs";
echo "password: password";
echo "";

# Destroy feature
echo "To destroy the OpenShift cluster run:";
echo "minishift delete";
echo "";

# Start the Pipeline
echo "log into OpenShift and start the pipeline without tests.";

read -n1 -r -p "Press any key to continue..." key;
# Actions
echo "log in on gogs";
echo "Gogs credentials";
echo "user: gogs";
echo "password: password";
echo "and get the repo url";
echo "Clone and checkout the eap-7 branch of the openshift-tasks git repository and remove the '@Ignore' annotation from";
echo "src/test/java/org/jboss/as/quickstarts/tasksrs/service/UserResourceTest.java";
echo "test methods to enable the unit tests. Commit and push to the git repo.";

read -n1 -r -p "Press any key to continue..." key;

echo "Start de pipeline in OpenShift";

