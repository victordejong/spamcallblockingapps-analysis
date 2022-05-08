package com.facebook.stetho.inspector.protocol.module;

import android.content.Context;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcError;
import com.facebook.stetho.inspector.network.AsyncPrettyPrinterInitializer;
import com.facebook.stetho.inspector.network.NetworkPeerManager;
import com.facebook.stetho.inspector.network.ResponseBodyData;
import com.facebook.stetho.inspector.network.ResponseBodyFileManager;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.inspector.protocol.module.Console;
import com.facebook.stetho.inspector.protocol.module.Page;
import com.facebook.stetho.json.annotation.JsonProperty;
import com.facebook.stetho.json.annotation.JsonValue;
import com.privacystar.core.util.PermissionUtils;
import java.io.IOException;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network.class */
public class Network implements ChromeDevtoolsDomain {
    private final NetworkPeerManager mNetworkPeerManager;
    private final ResponseBodyFileManager mResponseBodyFileManager;

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$DataReceivedParams.class */
    public static class DataReceivedParams {
        @JsonProperty(required = true)
        public int dataLength;
        @JsonProperty(required = true)
        public int encodedDataLength;
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$GetResponseBodyResponse.class */
    public static class GetResponseBodyResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public boolean base64Encoded;
        @JsonProperty(required = true)
        public String body;

        private GetResponseBodyResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$Initiator.class */
    public static class Initiator {
        @JsonProperty
        public List<Console.CallFrame> stackTrace;
        @JsonProperty(required = true)
        public InitiatorType type;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$InitiatorType.class */
    public enum InitiatorType {
        PARSER("parser"),
        SCRIPT("script"),
        OTHER("other");
        
        private final String mProtocolValue;

        InitiatorType(String str) {
            this.mProtocolValue = str;
        }

        @JsonValue
        public String getProtocolValue() {
            return this.mProtocolValue;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$LoadingFailedParams.class */
    public static class LoadingFailedParams {
        @JsonProperty(required = true)
        public String errorText;
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
        @JsonProperty
        public Page.ResourceType type;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$LoadingFinishedParams.class */
    public static class LoadingFinishedParams {
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$Request.class */
    public static class Request {
        @JsonProperty(required = true)
        public JSONObject headers;
        @JsonProperty(required = true)
        public String method;
        @JsonProperty
        public String postData;
        @JsonProperty(required = true)
        public String url;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$RequestWillBeSentParams.class */
    public static class RequestWillBeSentParams {
        @JsonProperty(required = true)
        public String documentURL;
        @JsonProperty(required = true)
        public String frameId;
        @JsonProperty(required = true)
        public Initiator initiator;
        @JsonProperty(required = true)
        public String loaderId;
        @JsonProperty
        public Response redirectResponse;
        @JsonProperty(required = true)
        public Request request;
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
        @JsonProperty
        public Page.ResourceType type;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$ResourceTiming.class */
    public static class ResourceTiming {
        @JsonProperty(required = true)
        public double connectionEnd;
        @JsonProperty(required = true)
        public double connectionStart;
        @JsonProperty(required = true)
        public double dnsEnd;
        @JsonProperty(required = true)
        public double dnsStart;
        @JsonProperty(required = true)
        public double proxyEnd;
        @JsonProperty(required = true)
        public double proxyStart;
        @JsonProperty(required = true)
        public double receivedHeadersEnd;
        @JsonProperty(required = true)
        public double requestTime;
        @JsonProperty(required = true)
        public double sendEnd;
        @JsonProperty(required = true)
        public double sendStart;
        @JsonProperty(required = true)
        public double sslEnd;
        @JsonProperty(required = true)
        public double sslStart;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$Response.class */
    public static class Response {
        @JsonProperty(required = true)
        public int connectionId;
        @JsonProperty(required = true)
        public boolean connectionReused;
        @JsonProperty(required = true)
        public Boolean fromDiskCache;
        @JsonProperty(required = true)
        public JSONObject headers;
        @JsonProperty
        public String headersText;
        @JsonProperty(required = true)
        public String mimeType;
        @JsonProperty
        public JSONObject requestHeaders;
        @JsonProperty
        public String requestHeadersTest;
        @JsonProperty(required = true)
        public int status;
        @JsonProperty(required = true)
        public String statusText;
        @JsonProperty
        public ResourceTiming timing;
        @JsonProperty(required = true)
        public String url;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$ResponseReceivedParams.class */
    public static class ResponseReceivedParams {
        @JsonProperty(required = true)
        public String frameId;
        @JsonProperty(required = true)
        public String loaderId;
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public Response response;
        @JsonProperty(required = true)
        public double timestamp;
        @JsonProperty(required = true)
        public Page.ResourceType type;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketClosedParams.class */
    public static class WebSocketClosedParams {
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketCreatedParams.class */
    public static class WebSocketCreatedParams {
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public String url;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketFrame.class */
    public static class WebSocketFrame {
        @JsonProperty(required = true)
        public boolean mask;
        @JsonProperty(required = true)
        public int opcode;
        @JsonProperty(required = true)
        public String payloadData;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketFrameErrorParams.class */
    public static class WebSocketFrameErrorParams {
        @JsonProperty(required = true)
        public String errorMessage;
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketFrameReceivedParams.class */
    public static class WebSocketFrameReceivedParams {
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public WebSocketFrame response;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketFrameSentParams.class */
    public static class WebSocketFrameSentParams {
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public WebSocketFrame response;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams.class */
    public static class WebSocketHandshakeResponseReceivedParams {
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public WebSocketResponse response;
        @JsonProperty(required = true)
        public double timestamp;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketRequest.class */
    public static class WebSocketRequest {
        @JsonProperty(required = true)
        public JSONObject headers;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketResponse.class */
    public static class WebSocketResponse {
        @JsonProperty(required = true)
        public JSONObject headers;
        @JsonProperty
        public String headersText;
        @JsonProperty
        public JSONObject requestHeaders;
        @JsonProperty
        public String requestHeadersText;
        @JsonProperty(required = true)
        public int status;
        @JsonProperty(required = true)
        public String statusText;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams.class */
    public static class WebSocketWillSendHandshakeRequestParams {
        @JsonProperty(required = true)
        public WebSocketRequest request;
        @JsonProperty(required = true)
        public String requestId;
        @JsonProperty(required = true)
        public double timestamp;
        @JsonProperty(required = true)
        public double wallTime;
    }

    public Network(Context context) {
        this.mNetworkPeerManager = NetworkPeerManager.getOrCreateInstance(context);
        this.mResponseBodyFileManager = this.mNetworkPeerManager.getResponseBodyFileManager();
    }

    private GetResponseBodyResponse readResponseBody(String str) throws IOException, JsonRpcException {
        GetResponseBodyResponse getResponseBodyResponse = new GetResponseBodyResponse();
        try {
            ResponseBodyData readFile = this.mResponseBodyFileManager.readFile(str);
            getResponseBodyResponse.body = readFile.data;
            getResponseBodyResponse.base64Encoded = readFile.base64Encoded;
            return getResponseBodyResponse;
        } catch (OutOfMemoryError e) {
            throw new JsonRpcException(new JsonRpcError(JsonRpcError.ErrorCode.INTERNAL_ERROR, e.toString(), null));
        }
    }

    @ChromeDevtoolsMethod
    public void disable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mNetworkPeerManager.removePeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public void enable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mNetworkPeerManager.addPeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult getResponseBody(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JsonRpcException {
        try {
            return readResponseBody(jSONObject.getString(PermissionUtils.INTENT_EXTRA_REQUEST_ID));
        } catch (IOException e) {
            throw new JsonRpcException(new JsonRpcError(JsonRpcError.ErrorCode.INTERNAL_ERROR, e.toString(), null));
        } catch (JSONException e2) {
            throw new JsonRpcException(new JsonRpcError(JsonRpcError.ErrorCode.INTERNAL_ERROR, e2.toString(), null));
        }
    }

    public void setPrettyPrinterInitializer(AsyncPrettyPrinterInitializer asyncPrettyPrinterInitializer) {
        Util.throwIfNull(asyncPrettyPrinterInitializer);
        this.mNetworkPeerManager.setPrettyPrinterInitializer(asyncPrettyPrinterInitializer);
    }

    @ChromeDevtoolsMethod
    public void setUserAgentOverride(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
    }
}
