package com.facebook.stetho.inspector.network;

import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter.class */
public interface NetworkEventReporter {

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorHeaders.class */
    public interface InspectorHeaders {
        @Nullable
        String firstHeaderValue(String str);

        int headerCount();

        String headerName(int i);

        String headerValue(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequest.class */
    public interface InspectorRequest extends InspectorRequestCommon {
        @Nullable
        byte[] body() throws IOException;

        @Nullable
        Integer friendlyNameExtra();

        String method();

        String url();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorRequestCommon.class */
    public interface InspectorRequestCommon extends InspectorHeaders {
        String friendlyName();

        /* renamed from: id */
        String mo15599id();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponse.class */
    public interface InspectorResponse extends InspectorResponseCommon {
        int connectionId();

        boolean connectionReused();

        boolean fromDiskCache();

        String url();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorResponseCommon.class */
    public interface InspectorResponseCommon extends InspectorHeaders {
        String reasonPhrase();

        String requestId();

        int statusCode();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketFrame.class */
    public interface InspectorWebSocketFrame {
        public static final int OPCODE_BINARY = 2;
        public static final int OPCODE_CONNECTION_CLOSE = 8;
        public static final int OPCODE_CONTINUATION = 0;
        public static final int OPCODE_PING = 9;
        public static final int OPCODE_PONG = 10;
        public static final int OPCODE_TEXT = 1;

        boolean mask();

        int opcode();

        String payloadData();

        String requestId();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketRequest.class */
    public interface InspectorWebSocketRequest extends InspectorRequestCommon {
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketResponse.class */
    public interface InspectorWebSocketResponse extends InspectorResponseCommon {
        @Nullable
        InspectorHeaders requestHeaders();
    }

    void dataReceived(String str, int i, int i2);

    void dataSent(String str, int i, int i2);

    void httpExchangeFailed(String str, String str2);

    @Nullable
    InputStream interpretResponseStream(String str, @Nullable String str2, @Nullable String str3, @Nullable InputStream inputStream, ResponseHandler responseHandler);

    boolean isEnabled();

    String nextRequestId();

    void requestWillBeSent(InspectorRequest inspectorRequest);

    void responseHeadersReceived(InspectorResponse inspectorResponse);

    void responseReadFailed(String str, String str2);

    void responseReadFinished(String str);

    void webSocketClosed(String str);

    void webSocketCreated(String str, String str2);

    void webSocketFrameError(String str, String str2);

    void webSocketFrameReceived(InspectorWebSocketFrame inspectorWebSocketFrame);

    void webSocketFrameSent(InspectorWebSocketFrame inspectorWebSocketFrame);

    void webSocketHandshakeResponseReceived(InspectorWebSocketResponse inspectorWebSocketResponse);

    void webSocketWillSendHandshakeRequest(InspectorWebSocketRequest inspectorWebSocketRequest);
}
