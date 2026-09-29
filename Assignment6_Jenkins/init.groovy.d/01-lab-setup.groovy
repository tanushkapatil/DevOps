// Local lab setup (Jenkins is bound to 127.0.0.1 only in compose.yaml)
import jenkins.model.*
import hudson.security.*

def instance = Jenkins.get()
instance.setAuthorizationStrategy(new AuthorizationStrategy.Unsecured())
instance.setNumExecutors(2)
instance.save()
