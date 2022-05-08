package com.apptentive.android.sdk.network;

import android.util.Base64;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.facebook.stetho.common.Utf8Charset;
import com.facebook.stetho.server.http.HttpHeaders;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest.class */
public class HttpRequest {
    private static final HttpRequestRetryPolicy DEFAULT_RETRY_POLICY = new HttpRequestRetryPolicyDefault();
    private static int nextRequestId;
    private DispatchQueue callbackQueue;
    private boolean cancelled;
    private HttpURLConnection connection;
    private String errorMessage;
    private Injector injector;
    private List<Listener> listeners;
    HttpRequestManager requestManager;
    private Map<String, Object> requestProperties;
    private int responseCode;
    private String responseData;
    private Map<String, String> responseHeaders;
    private int retryAttempt;
    boolean retrying;
    private String tag;
    private String urlString;
    private HttpRequestMethod method = HttpRequestMethod.GET;
    private int connectTimeout = 45000;
    private int readTimeout = 45000;
    private HttpRequestRetryPolicy retryPolicy = DEFAULT_RETRY_POLICY;
    private final DispatchTask retryDispatchTask = new DispatchTask() { // from class: com.apptentive.android.sdk.network.HttpRequest.2
        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            Assert.assertTrue(HttpRequest.this.retrying);
            Assert.assertNotNull(HttpRequest.this.requestManager);
            HttpRequest httpRequest = HttpRequest.this;
            httpRequest.requestManager.dispatchRequest(httpRequest);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$Adapter.class */
    public static class Adapter<T extends HttpRequest> implements Listener<T> {
        @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
        public void onCancel(T t) {
        }

        @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
        public void onFail(T t, String str) {
        }

        @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
        public void onFinish(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$Injector.class */
    public static class Injector {
        public void onAfterSend(HttpRequest httpRequest) throws Exception {
        }

        public void onBeforeSend(HttpRequest httpRequest) throws Exception {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$Listener.class */
    public interface Listener<T extends HttpRequest> {
        void onCancel(T t);

        void onFail(T t, String str);

        void onFinish(T t);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$NetworkUnavailableException.class */
    public static class NetworkUnavailableException extends IOException {
        public NetworkUnavailableException(String str) {
            super(str);
        }
    }

    public HttpRequest(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Invalid URL string '" + str + "'");
        }
        this.listeners = new ArrayList(1);
        nextRequestId++;
        this.urlString = str;
    }

    private void closeConnection() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.connection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRequest() {
        try {
            if (isSuccessful()) {
                for (Listener listener : this.listeners) {
                    try {
                        listener.onFinish(this);
                    } catch (Exception e) {
                        ApptentiveLog.m15641e(e, "Exception in request onFinish() listener", new Object[0]);
                        logException(e);
                    }
                }
            } else if (isCancelled()) {
                for (Listener listener2 : this.listeners) {
                    try {
                        listener2.onCancel(this);
                    } catch (Exception e2) {
                        ApptentiveLog.m15641e(e2, "Exception in request onCancel() listener", new Object[0]);
                        logException(e2);
                    }
                }
            } else {
                for (Listener listener3 : this.listeners) {
                    try {
                        listener3.onFail(this, this.errorMessage);
                    } catch (Exception e3) {
                        ApptentiveLog.m15641e(e3, "Exception in request onFail() listener", new Object[0]);
                        logException(e3);
                    }
                }
            }
        } finally {
            this.requestManager.unregisterRequest(this);
        }
    }

    private static Map<String, String> getResponseHeaders(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    private static boolean isGzipContentEncoding(Map<String, String> map) {
        boolean z = false;
        if (map != null) {
            String str = map.get("Content-Encoding");
            z = false;
            if (str != null) {
                z = false;
                if (str.equalsIgnoreCase("[gzip]")) {
                    z = true;
                }
            }
        }
        return z;
    }

    private void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    private static String readResponse(InputStream inputStream, boolean z) throws IOException {
        InputStream inputStream2;
        if (inputStream == null) {
            return null;
        }
        InputStream inputStream3 = inputStream;
        if (z) {
            inputStream2 = inputStream;
            try {
                inputStream3 = new GZIPInputStream(inputStream);
            } finally {
                Util.ensureClosed(inputStream2);
            }
        }
        inputStream2 = inputStream2;
        return Util.readStringFromInputStream(inputStream2, Utf8Charset.NAME);
    }

    private boolean retryRequest(DispatchQueue dispatchQueue, int i) {
        Assert.assertFalse(this.retryDispatchTask.isScheduled());
        int i2 = this.retryAttempt + 1;
        this.retryAttempt = i2;
        if (!this.retryPolicy.shouldRetryRequest(i, i2)) {
            ApptentiveLog.m15638v(ApptentiveLogTag.NETWORK, "Retry policy declined request retry: %s", this);
            return false;
        }
        this.retrying = true;
        long retryTimeoutMillis = this.retryPolicy.getRetryTimeoutMillis(this.retryAttempt);
        ApptentiveLog.m15638v(ApptentiveLogTag.NETWORK, "Retry request in %d ms: %s", Long.valueOf(retryTimeoutMillis), this);
        dispatchQueue.dispatchAsyncOnce(this.retryDispatchTask, retryTimeoutMillis);
        return true;
    }

    private Map<String, Object> sanitize(Map<String, Object> map) {
        if (!ApptentiveLog.shouldSanitizeLogMessages()) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        if (hashMap.containsKey("Authorization")) {
            hashMap.put("Authorization", "<HIDDEN>");
        }
        return hashMap;
    }

    private void sendRequestSync() throws Exception {
        try {
            if (this.injector != null) {
                this.injector.onBeforeSend(this);
            }
            URL url = new URL(this.urlString);
            ApptentiveLog.m15646d(ApptentiveLogTag.NETWORK, "Performing request: %s %s", this.method, url);
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                ApptentiveLog.m15638v(ApptentiveLogTag.NETWORK, "%s", toString());
            }
            this.retrying = false;
            HttpURLConnection openConnection = openConnection(url);
            this.connection = openConnection;
            openConnection.setRequestMethod(this.method.toString());
            this.connection.setConnectTimeout(this.connectTimeout);
            this.connection.setReadTimeout(this.readTimeout);
            if (!isNetworkConnectionPresent()) {
                ApptentiveLog.m15646d(ApptentiveLogTag.NETWORK, "No network connection present. Request will fail.", new Object[0]);
                throw new NetworkUnavailableException("The network is not currently active.");
            } else if (!isCancelled()) {
                if (this.requestProperties != null && this.requestProperties.size() > 0) {
                    setupRequestProperties(this.connection, this.requestProperties);
                }
                if (!HttpRequestMethod.GET.equals(this.method)) {
                    this.connection.setDoInput(true);
                    this.connection.setDoOutput(true);
                    this.connection.setUseCaches(false);
                    byte[] createRequestData = createRequestData();
                    if (createRequestData != null && createRequestData.length > 0) {
                        OutputStream outputStream = this.connection.getOutputStream();
                        outputStream.write(createRequestData);
                        Util.ensureClosed(outputStream);
                    }
                }
                int responseCode = this.connection.getResponseCode();
                this.responseCode = responseCode;
                ApptentiveLog.m15646d(ApptentiveLogTag.NETWORK, "Response %s: %d %s", url, Integer.valueOf(responseCode), this.connection.getResponseMessage());
                if (!isCancelled()) {
                    Map<String, String> responseHeaders = getResponseHeaders(this.connection);
                    this.responseHeaders = responseHeaders;
                    boolean isGzipContentEncoding = isGzipContentEncoding(responseHeaders);
                    if (this.responseCode < 200 || this.responseCode >= 300) {
                        this.errorMessage = StringUtils.format("Unexpected response code: %d (%s)", Integer.valueOf(this.responseCode), this.connection.getResponseMessage());
                        String readResponse = readResponse(this.connection.getErrorStream(), isGzipContentEncoding);
                        this.responseData = readResponse;
                        ApptentiveLog.m15635w(ApptentiveLogTag.NETWORK, "Error response data: %s", readResponse);
                    } else {
                        this.responseData = readResponse(this.connection.getInputStream(), isGzipContentEncoding);
                        if (ApptentiveLog.shouldSanitizeLogMessages()) {
                            ApptentiveLog.m15638v(ApptentiveLogTag.NETWORK, "Response data: <HIDDEN> %d bytes", Integer.valueOf(this.responseData.length()));
                        } else {
                            ApptentiveLog.m15638v(ApptentiveLogTag.NETWORK, "Response data: %s", this.responseData);
                        }
                    }
                    if (!isCancelled()) {
                        if (this.injector != null) {
                            this.injector.onAfterSend(this);
                        }
                        handleResponse(this.responseData);
                    }
                }
            }
        } finally {
            closeConnection();
        }
    }

    private void setupRequestProperties(HttpURLConnection httpURLConnection, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (!(key == null || value == null)) {
                httpURLConnection.setRequestProperty(key, value.toString());
            }
        }
    }

    public void addListener(Listener<?> listener) {
        if (listener != null) {
            boolean contains = this.listeners.contains(listener);
            Assert.assertFalse(contains, "Already contains listener: %s", listener);
            if (!contains) {
                this.listeners.add(listener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Listener is null");
    }

    protected byte[] createRequestData() throws IOException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchSync(DispatchQueue dispatchQueue) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            sendRequestSync();
        } catch (NetworkUnavailableException e) {
            this.responseCode = -1;
            this.errorMessage = e.getMessage();
            ApptentiveLog.m15635w(ApptentiveLogTag.NETWORK, e.getMessage(), new Object[0]);
            ApptentiveLog.m15635w(ApptentiveLogTag.NETWORK, "Cancelled? %b", Boolean.valueOf(isCancelled()));
        } catch (Exception e2) {
            this.responseCode = -1;
            this.errorMessage = e2.getMessage();
            ApptentiveLog.m15644e(ApptentiveLogTag.NETWORK, "Cancelled? %b", Boolean.valueOf(isCancelled()));
            if (!isCancelled()) {
                ApptentiveLog.m15644e(ApptentiveLogTag.NETWORK, "Unable to perform request: %s", this);
            }
        }
        ApptentiveLog.m15646d(ApptentiveLogTag.NETWORK, "Request finished in %d ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        if (!isFailed() || !retryRequest(dispatchQueue, this.responseCode)) {
            DispatchQueue dispatchQueue2 = this.callbackQueue;
            if (dispatchQueue2 != null) {
                dispatchQueue2.dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.network.HttpRequest.1
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        HttpRequest.this.finishRequest();
                    }
                });
            } else {
                finishRequest();
            }
        }
    }

    public Apptentive.AuthenticationFailedReason getAuthenticationFailedReason() {
        if (this.responseData != null) {
            try {
                JSONObject jSONObject = new JSONObject(this.responseData);
                return Apptentive.AuthenticationFailedReason.parse(jSONObject.optString("error_type", null), jSONObject.optString(Constants.IPC_BUNDLE_KEY_SEND_ERROR, null));
            } catch (Exception e) {
                ApptentiveLog.m15634w(ApptentiveLogTag.NETWORK, e, "Error parsing authentication failure object.", new Object[0]);
                logException(e);
            }
        }
        return Apptentive.AuthenticationFailedReason.UNKNOWN;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getResponseData() {
        return this.responseData;
    }

    public String getResponseHeader(String str) {
        Map<String, String> map = this.responseHeaders;
        return map != null ? map.get(str) : null;
    }

    public String getTag() {
        return this.tag;
    }

    protected void handleResponse(String str) throws IOException {
    }

    public boolean isAuthenticationFailure() {
        return this.responseCode == 401;
    }

    boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.cancelled;
        }
        return z;
    }

    public boolean isFailed() {
        return !isSuccessful() && !isCancelled();
    }

    protected boolean isNetworkConnectionPresent() {
        return Util.isNetworkConnectionPresent();
    }

    public boolean isSuccessful() {
        int i = this.responseCode;
        return i >= 200 && i < 300;
    }

    protected HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    public void setCallbackQueue(DispatchQueue dispatchQueue) {
        this.callbackQueue = dispatchQueue;
    }

    public void setConnectTimeout(int i) {
        this.connectTimeout = i;
    }

    public void setInjector(Injector injector) {
        this.injector = injector;
    }

    public void setMethod(HttpRequestMethod httpRequestMethod) {
        if (httpRequestMethod != null) {
            this.method = httpRequestMethod;
            return;
        }
        throw new IllegalArgumentException("Method is null");
    }

    public void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public void setRequestManager(HttpRequestManager httpRequestManager) {
        this.requestManager = httpRequestManager;
    }

    public void setRequestProperty(String str, Object obj) {
        if (obj != null) {
            if (this.requestProperties == null) {
                this.requestProperties = new HashMap();
            }
            this.requestProperties.put(str, obj);
        }
    }

    public HttpRequest setRetryPolicy(HttpRequestRetryPolicy httpRequestRetryPolicy) {
        if (httpRequestRetryPolicy != null) {
            this.retryPolicy = httpRequestRetryPolicy;
            return this;
        }
        throw new IllegalArgumentException("Retry policy is null");
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void start() {
        Assert.assertNotNull(this.requestManager);
        HttpRequestManager httpRequestManager = this.requestManager;
        if (httpRequestManager != null) {
            httpRequestManager.startRequest(this);
        }
    }

    public String toString() {
        String str;
        try {
            byte[] createRequestData = createRequestData();
            String obj = this.requestProperties.get(HttpHeaders.CONTENT_TYPE).toString();
            if (ApptentiveLog.shouldSanitizeLogMessages()) {
                str = StringUtils.format("<HIDDEN> %d bytes", Integer.valueOf(createRequestData.length));
            } else {
                if (!obj.contains("application/octet-stream") && !obj.contains("multipart/encrypted")) {
                    str = new String(createRequestData);
                }
                str = "Base64 encoded binary request: " + Base64.encodeToString(createRequestData, 2);
            }
            return StringUtils.format("\nRequest:\n\t%s %s\n\t%s\n\t%s\nResponse:\n\t%d\n\t%s\n\t%s", this.method.name(), this.urlString, sanitize(this.requestProperties), str, Integer.valueOf(this.responseCode), this.responseData, this.responseHeaders);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while getting request string representation", new Object[0]);
            return null;
        }
    }
}
