package ma.aui.sse.paradigms.integration.xs.rat.provider;

import javax.xml.ws.Endpoint;

/**
 * The Provider class is a simple Java application that publishes an instance
 * of the RemoteAccessUtility class as a web service at the URL
 * "http://localhost:8080/rat".
 */
public class Provider {

    // The URL at which the web service will be published
    private static final String URL = "http://localhost:8080/rat";

    public static void main(String[] args) {
        // Set the java.awt.headless system property to false
        System.setProperty("java.awt.headless", "false");
        
        // Create an instance of the RemoteAccessUtility class
        RemoteAccessUtility remoteAccessUtility = new RemoteAccessUtility();
        
        // Print a message indicating that the service is being published
        System.out.println("Publishing RemoteAccessUtility Service");
        
        // Publish the web service
        Endpoint.publish(URL, remoteAccessUtility);
        
        // Print a message indicating that the service has been published
        System.out.println("RemoteAccessUtility Service Published");
    }
}
