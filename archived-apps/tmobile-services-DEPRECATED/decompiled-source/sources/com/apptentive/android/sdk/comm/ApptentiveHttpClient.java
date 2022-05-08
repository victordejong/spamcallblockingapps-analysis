package com.apptentive.android.sdk.comm;

import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.ConversationTokenRequest;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.network.HttpJsonRequest;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.network.HttpRequestManager;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.network.RawHttpRequest;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.AppReleaseManager;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.DevicePayloadDiff;
import com.apptentive.android.sdk.storage.PayloadRequestSender;
import com.apptentive.android.sdk.storage.Sdk;
import com.apptentive.android.sdk.storage.SdkManager;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import com.facebook.stetho.server.http.HttpHeaders;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/comm/ApptentiveHttpClient.class */
public class ApptentiveHttpClient implements PayloadRequestSender {
    private final String apptentiveKey;
    private final String apptentiveSignature;
    private final String serverURL;
    private final String userAgentString;

    public ApptentiveHttpClient(String str, String str2, String str3) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Illegal Apptentive Key: '" + str + "'");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Illegal Apptentive Signature: '" + str2 + "'");
        } else if (!StringUtils.isNullOrEmpty(str3)) {
            this.apptentiveKey = str;
            this.apptentiveSignature = str2;
            this.serverURL = str3;
            this.userAgentString = String.format("Apptentive/%s (Android)", Constants.getApptentiveSdkVersion());
        } else {
            throw new IllegalArgumentException("Illegal server URL: '" + str3 + "'");
        }
    }

    private String createEndpointURL(String str) {
        return this.serverURL + str;
    }

    private HttpJsonRequest createJsonRequest(String str, JSONObject jSONObject, HttpRequestMethod httpRequestMethod) {
        if (str == null) {
            throw new IllegalArgumentException("Endpoint is null");
        } else if (jSONObject == null) {
            throw new IllegalArgumentException("Json is null");
        } else if (httpRequestMethod != null) {
            HttpJsonRequest httpJsonRequest = new HttpJsonRequest(createEndpointURL(str), jSONObject);
            setupRequestDefaults(httpJsonRequest);
            httpJsonRequest.setMethod(httpRequestMethod);
            httpJsonRequest.setRequestProperty(HttpHeaders.CONTENT_TYPE, AbstractSpiCall.ACCEPT_JSON_VALUE);
            return httpJsonRequest;
        } else {
            throw new IllegalArgumentException("Method is null");
        }
    }

    private HttpRequest createPayloadRequest(PayloadData payloadData) {
        String authToken = payloadData.getAuthToken();
        String httpRequestPath = payloadData.getHttpRequestPath();
        Assert.notNull(httpRequestPath);
        String str = httpRequestPath;
        HttpRequestMethod httpRequestMethod = payloadData.getHttpRequestMethod();
        Assert.notNull(httpRequestMethod);
        HttpRequestMethod httpRequestMethod2 = httpRequestMethod;
        String contentType = payloadData.getContentType();
        Assert.notNull(contentType);
        RawHttpRequest createRawRequest = createRawRequest(str, payloadData.getData(), httpRequestMethod2, contentType);
        if (!StringUtils.isNullOrEmpty(authToken)) {
            createRawRequest.setRequestProperty("Authorization", "Bearer " + authToken);
        }
        if (payloadData.isAuthenticated()) {
            createRawRequest.setRequestProperty("APPTENTIVE-ENCRYPTED", Boolean.TRUE);
        }
        return createRawRequest;
    }

    private RawHttpRequest createRawRequest(String str, byte[] bArr, HttpRequestMethod httpRequestMethod, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Endpoint is null");
        } else if (bArr == null) {
            throw new IllegalArgumentException("Payload is null");
        } else if (httpRequestMethod == null) {
            throw new IllegalArgumentException("Method is null");
        } else if (str2 != null) {
            RawHttpRequest rawHttpRequest = new RawHttpRequest(createEndpointURL(str), bArr);
            setupRequestDefaults(rawHttpRequest);
            rawHttpRequest.setMethod(httpRequestMethod);
            rawHttpRequest.setRequestProperty(HttpHeaders.CONTENT_TYPE, str2);
            return rawHttpRequest;
        } else {
            throw new IllegalArgumentException("ContentType is null");
        }
    }

    private void setupRequestDefaults(HttpRequest httpRequest) {
        httpRequest.setRequestManager(HttpRequestManager.sharedManager());
        httpRequest.setRequestProperty(AbstractSpiCall.HEADER_USER_AGENT, this.userAgentString);
        httpRequest.setRequestProperty("Connection", "Keep-Alive");
        httpRequest.setRequestProperty("Accept-Encoding", "gzip");
        httpRequest.setRequestProperty(AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE);
        httpRequest.setRequestProperty("APPTENTIVE-KEY", this.apptentiveKey);
        httpRequest.setRequestProperty("APPTENTIVE-SIGNATURE", this.apptentiveSignature);
        httpRequest.setRequestProperty("X-API-Version", String.valueOf(9));
        httpRequest.setConnectTimeout(45000);
        httpRequest.setReadTimeout(45000);
    }

    public HttpJsonRequest createAppConfigurationRequest(String str, String str2, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation id is null or empty");
        } else if (!StringUtils.isNullOrEmpty(str2)) {
            HttpJsonRequest createJsonRequest = createJsonRequest(StringUtils.format("/conversations/%s/configuration", str), new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "Bearer " + str2);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        } else {
            throw new IllegalArgumentException("Conversation token is null or empty");
        }
    }

    public HttpJsonRequest createConversationTokenRequest(ConversationTokenRequest conversationTokenRequest, HttpRequest.Listener<HttpJsonRequest> listener) {
        HttpJsonRequest createJsonRequest = createJsonRequest("/conversation", conversationTokenRequest, HttpRequestMethod.POST);
        createJsonRequest.addListener(listener);
        return createJsonRequest;
    }

    public HttpJsonRequest createFetchInteractionsRequest(String str, String str2, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation token is null or empty");
        } else if (!StringUtils.isNullOrEmpty(str2)) {
            HttpJsonRequest createJsonRequest = createJsonRequest(StringUtils.format("/conversations/%s/interactions", str2), new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "Bearer " + str);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        } else {
            throw new IllegalArgumentException("Conversation id is null or empty");
        }
    }

    public HttpJsonRequest createFetchMessagesRequest(String str, String str2, String str3, String str4, Integer num, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation token is null or empty");
        } else if (!StringUtils.isNullOrEmpty(str2)) {
            String num2 = num == null ? "" : num.toString();
            String str5 = str3;
            if (str3 == null) {
                str5 = "";
            }
            String str6 = str4;
            if (str4 == null) {
                str6 = "";
            }
            HttpJsonRequest createJsonRequest = createJsonRequest(String.format("/conversations/%s/messages?count=%s&starts_after=%s&before_id=%s", str2, num2, str5, str6), new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "Bearer " + str);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        } else {
            throw new IllegalArgumentException("Conversation id is null or empty");
        }
    }

    public HttpJsonRequest createFirstLoginRequest(String str, AppRelease appRelease, Sdk sdk, Device device, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (str != null) {
            ConversationTokenRequest conversationTokenRequest = new ConversationTokenRequest();
            conversationTokenRequest.setSdkAndAppRelease(SdkManager.getPayload(sdk), AppReleaseManager.getPayload(appRelease));
            conversationTokenRequest.setDevice(DevicePayloadDiff.getDiffPayload(null, device));
            try {
                conversationTokenRequest.put("token", str);
            } catch (JSONException e) {
            }
            HttpJsonRequest createJsonRequest = createJsonRequest("/conversations", conversationTokenRequest, HttpRequestMethod.POST);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        }
        throw new IllegalArgumentException("Token is null");
    }

    public HttpJsonRequest createLegacyConversationIdRequest(String str, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (!StringUtils.isNullOrEmpty(str)) {
            HttpJsonRequest createJsonRequest = createJsonRequest("/conversation/token", new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "OAuth " + str);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        }
        throw new IllegalArgumentException("Conversation token is null or empty");
    }

    public HttpJsonRequest createLoginRequest(String str, String str2, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (str2 != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("token", str2);
            } catch (JSONException e) {
            }
            HttpJsonRequest createJsonRequest = createJsonRequest(str == null ? "/conversations" : StringUtils.format("/conversations/%s/session", str), jSONObject, HttpRequestMethod.POST);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        }
        throw new IllegalArgumentException("Token is null");
    }

    @Override // com.apptentive.android.sdk.storage.PayloadRequestSender
    public HttpRequest createPayloadSendRequest(PayloadData payloadData, HttpRequest.Listener<HttpRequest> listener) {
        if (payloadData != null) {
            HttpRequest createPayloadRequest = createPayloadRequest(payloadData);
            createPayloadRequest.addListener(listener);
            return createPayloadRequest;
        }
        throw new IllegalArgumentException("Payload is null");
    }

    public HttpRequest findRequest(String str) {
        return HttpRequestManager.sharedManager().findRequest(str);
    }
}
