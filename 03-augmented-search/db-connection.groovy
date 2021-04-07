import org.jahia.services.content.JCRCallback
import org.jahia.services.content.JCRSessionWrapper
import org.jahia.services.content.JCRTemplate
import org.jahia.services.modulemanager.util.ModuleUtils

import javax.jcr.RepositoryException

JCRCallback<Object> callback = new JCRCallback<Object>() {
    @Override
    Object doInJCR(JCRSessionWrapper session) throws RepositoryException {
        def node = session.getNode("/settings")
        session.checkout(node);
        if (!node.hasNode("databaseConnector")) {
            def databaseConnectorNode = node.addNode("databaseConnector", "dc:databaseConnector")
            if (!databaseConnectorNode.hasNode("augmented-search-conn")) {
                def elasticsearchConnection = databaseConnectorNode.addNode("augmented-search-conn", "ec7:elasticsearchConnection")
                elasticsearchConnection.setProperty("dc:databaseType", "ELASTICSEARCH7")
                elasticsearchConnection.setProperty("dc:host", "elasticsearch")
                elasticsearchConnection.setProperty("dc:id", "augmented-search-conn")
                elasticsearchConnection.setProperty("dc:isConnected", "true")
                elasticsearchConnection.setProperty("dc:port", "9200")
                session.save();
            }
            ModuleUtils.getModuleManager().stop("database-connector", null);
            ModuleUtils.getModuleManager().start("database-connector", null);
            return null
        }
    }
}
JCRTemplate.instance.doExecuteWithSystemSession(callback);
