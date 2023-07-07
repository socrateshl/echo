import ballerinax/trigger.github;
import ballerina/http;

configurable github:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener github:Listener webhookListener =  new(config,httpListener);

service github:PushService on webhookListener {
  
    remote function onPush(github:PushEvent payload ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}