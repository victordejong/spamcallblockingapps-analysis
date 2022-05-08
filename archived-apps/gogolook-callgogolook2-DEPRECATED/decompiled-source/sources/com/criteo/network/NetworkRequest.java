package com.criteo.network;

import android.content.Context;
import android.os.AsyncTask;
import com.criteo.Criteo;
import com.criteo.info.AppConfigInfo;
import com.criteo.parser.JsonParser;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest.class */
public class NetworkRequest {
    public static int COUNT_NATIVE = 0;
    public static final int DELETE = 3;
    public static final int GET = 2;
    public static final int POST = 1;
    public static final int SOCKET_TIME_OUT = 50000;
    public static final String TAG = "criteo.Stories.NetworkRequest";
    public static String mBlockGaid;
    public static Context mContext;
    public static int mResponseCode = 0;
    public static int maxRequest = 3;

    /* renamed from: com.criteo.network.NetworkRequest$5 */
    /* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest$5.class */
    public static /* synthetic */ class C19005 {
        public static final /* synthetic */ int[] $SwitchMap$com$criteo$Criteo$ADType = new int[Criteo.ADType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$criteo$Criteo$ADType[Criteo.ADType.NATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$criteo$Criteo$ADType[Criteo.ADType.BANNER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$criteo$Criteo$ADType[Criteo.ADType.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest$OnNetworkRequestListener.class */
    public interface OnNetworkRequestListener {
        void onNetworkRequestCompleted(JSONObject jSONObject, String str);

        void onNetworkRequestFailed(int i, String str, String str2, String str3);
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest$ResponseError.class */
    public enum ResponseError {
        UNKNOWN_ERROR("UNKNOWN ERROR", 0),
        MISCELLANEOUS("MISCELLANEOUS ERROR", 1),
        NO_CONNECTION_ERROR("No Network Connection", 2),
        UNSUPPORTED_ENCODING("Network Unsupported Exception", 3),
        MALFORMED_URL_EXCEPTION("Network Malformed Url Exception", 4),
        IO_EXCEPTION("Network Input/Output Exception", 5),
        JSON_FORMAT("Json format exception", 6),
        LOAD_IMAGE_ERROR("Unable to download image", 7);
        
        public int code;
        public String message;

        ResponseError(String str, int i) {
            this.message = str;
            this.code = i;
        }

        public static ResponseError getById(int i) {
            ResponseError[] values;
            for (ResponseError responseError : values()) {
                if (responseError.code == i) {
                    return responseError;
                }
            }
            return UNKNOWN_ERROR;
        }

        public int getErrorCode() {
            return this.code;
        }

        public String getMessage() {
            return this.message;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest$onBlockZoneIdListener.class */
    public interface onBlockZoneIdListener {
        void onBlockZoneID(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest$onDisplayJavascriptListnerBanner.class */
    public interface onDisplayJavascriptListnerBanner {
        void onDisplayJsFailed();

        void onDisplayJsSuccess(Object obj);
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/network/NetworkRequest$onDisplayJavascriptListnerInterstitial.class */
    public interface onDisplayJavascriptListnerInterstitial {
        void onDisplayJsFailed();

        void onDisplayJsSuccess(Object obj);
    }

    public static Object excuteDelete(String str, JSONObject jSONObject) {
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        httpURLConnection = null;
        httpURLConnection = null;
        httpURLConnection = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (UnsupportedEncodingException e) {
        } catch (MalformedURLException e2) {
        } catch (IOException e3) {
        }
        try {
            httpURLConnection.setRequestMethod("DELETE");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setReadTimeout(50000);
            httpURLConnection.setConnectTimeout(50000);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(jSONObject.toString());
            dataOutputStream.flush();
            dataOutputStream.close();
            switch (httpURLConnection.getResponseCode()) {
                case 200:
                case 201:
                case 202:
                case 204:
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        byte[] bArr = new byte[128];
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                byteArrayOutputStream.write(bArr, 0, read);
                            } else {
                                JSONObject jSONObject2 = new JSONObject(new String(byteArrayOutputStream.toByteArray()));
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                return jSONObject2;
                            }
                        }
                    } catch (JSONException e4) {
                        ResponseError responseError = ResponseError.JSON_FORMAT;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return responseError;
                    }
                case 203:
                default:
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return ResponseError.NO_CONNECTION_ERROR;
            }
        } catch (UnsupportedEncodingException e5) {
            ResponseError responseError2 = ResponseError.UNSUPPORTED_ENCODING;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError2;
        } catch (MalformedURLException e6) {
            ResponseError responseError3 = ResponseError.MALFORMED_URL_EXCEPTION;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError3;
        } catch (IOException e7) {
            ResponseError responseError4 = ResponseError.IO_EXCEPTION;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError4;
        } catch (Throwable th3) {
            th = th3;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static Object excuteGet(String str) {
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        httpURLConnection = null;
        httpURLConnection = null;
        httpURLConnection = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (UnsupportedEncodingException e) {
        } catch (MalformedURLException e2) {
        } catch (IOException e3) {
        }
        try {
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setReadTimeout(50000);
            httpURLConnection.setConnectTimeout(50000);
            switch (httpURLConnection.getResponseCode()) {
                case 200:
                case 201:
                case 202:
                case 204:
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        byte[] bArr = new byte[128];
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                byteArrayOutputStream.write(bArr, 0, read);
                            } else {
                                JSONObject jSONObject = new JSONObject(new String(byteArrayOutputStream.toByteArray()));
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                return jSONObject;
                            }
                        }
                    } catch (JSONException e4) {
                        ResponseError responseError = ResponseError.JSON_FORMAT;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return responseError;
                    }
                case 203:
                default:
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return ResponseError.NO_CONNECTION_ERROR;
            }
        } catch (UnsupportedEncodingException e5) {
            ResponseError responseError2 = ResponseError.UNSUPPORTED_ENCODING;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError2;
        } catch (MalformedURLException e6) {
            ResponseError responseError3 = ResponseError.MALFORMED_URL_EXCEPTION;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError3;
        } catch (IOException e7) {
            ResponseError responseError4 = ResponseError.IO_EXCEPTION;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError4;
        } catch (Throwable th3) {
            th = th3;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object excuteGetForDisplay(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.network.NetworkRequest.excuteGetForDisplay(java.lang.String):java.lang.Object");
    }

    public static Object excutePost(String str, JSONObject jSONObject, Criteo.ADType aDType) {
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        httpURLConnection = null;
        httpURLConnection = null;
        httpURLConnection = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (UnsupportedEncodingException e) {
        } catch (MalformedURLException e2) {
        } catch (IOException e3) {
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setReadTimeout(50000);
            httpURLConnection.setConnectTimeout(50000);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(jSONObject.toString());
            dataOutputStream.flush();
            dataOutputStream.close();
            mResponseCode = httpURLConnection.getResponseCode();
            Tracer.debug(TAG, "respomse code for request" + mResponseCode);
            switch (mResponseCode) {
                case 200:
                case 201:
                case 202:
                case 204:
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        byte[] bArr = new byte[128];
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                byteArrayOutputStream.write(bArr, 0, read);
                            } else {
                                JSONObject jSONObject2 = new JSONObject(new String(byteArrayOutputStream.toByteArray()));
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                return jSONObject2;
                            }
                        }
                    } catch (JSONException e4) {
                        ResponseError responseError = ResponseError.JSON_FORMAT;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return responseError;
                    }
                case 203:
                default:
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return ResponseError.NO_CONNECTION_ERROR;
            }
        } catch (UnsupportedEncodingException e5) {
            ResponseError responseError2 = ResponseError.UNSUPPORTED_ENCODING;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError2;
        } catch (MalformedURLException e6) {
            ResponseError responseError3 = ResponseError.MALFORMED_URL_EXCEPTION;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError3;
        } catch (IOException e7) {
            ResponseError responseError4 = ResponseError.IO_EXCEPTION;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return responseError4;
        } catch (Throwable th3) {
            th = th3;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static void onRequestBlockZoneid(Criteo.ADType aDType, onBlockZoneIdListener onblockzoneidlistener) {
        if (mResponseCode == 204 && onblockzoneidlistener != null) {
            if (PreferenceDataUtils.getFirstGaid(mContext).equals("")) {
                int i = C19005.$SwitchMap$com$criteo$Criteo$ADType[aDType.ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    COUNT_NATIVE++;
                    PreferenceDataUtils.setFirstGaid(mContext, mBlockGaid);
                    AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
                    if (!(appConfigInfo == null || appConfigInfo.getTry_max_requests() == null)) {
                        maxRequest = Integer.parseInt(JsonParser.appConfigInfo.getTry_max_requests());
                    }
                    Tracer.debug(TAG, "count_native" + COUNT_NATIVE);
                    if (COUNT_NATIVE == maxRequest) {
                        Tracer.debug(TAG, "count_native" + COUNT_NATIVE + mResponseCode + mBlockGaid);
                        onblockzoneidlistener.onBlockZoneID(mBlockGaid);
                        COUNT_NATIVE = 0;
                    }
                }
            } else if (PreferenceDataUtils.getFirstGaid(mContext).equals(mBlockGaid)) {
                int i2 = C19005.$SwitchMap$com$criteo$Criteo$ADType[aDType.ordinal()];
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    COUNT_NATIVE++;
                    AppConfigInfo appConfigInfo2 = JsonParser.appConfigInfo;
                    if (!(appConfigInfo2 == null || appConfigInfo2.getTry_max_requests() == null)) {
                        maxRequest = Integer.parseInt(JsonParser.appConfigInfo.getTry_max_requests());
                    }
                    Tracer.debug(TAG, "count_native" + COUNT_NATIVE);
                    if (COUNT_NATIVE == maxRequest) {
                        onblockzoneidlistener.onBlockZoneID(mBlockGaid);
                        COUNT_NATIVE = 0;
                    }
                }
            } else if (!PreferenceDataUtils.getFirstGaid(mContext).equals(mBlockGaid)) {
                PreferenceDataUtils.clearStoreByKey(mContext, PreferenceDataUtils.FIRST_GAID);
                COUNT_NATIVE = 1;
            }
        }
    }

    public static void sendAsyncJsonRequest(final int i, final String str, final JSONObject jSONObject, final OnNetworkRequestListener onNetworkRequestListener, final onBlockZoneIdListener onblockzoneidlistener, final String str2, final Criteo.ADType aDType) {
        new AsyncTask<Void, Void, Object>() { // from class: com.criteo.network.NetworkRequest.1
            public Object doInBackground(Void... voidArr) {
                int i2 = i;
                return i2 != 1 ? i2 != 2 ? i2 != 3 ? null : NetworkRequest.excuteDelete(str, jSONObject) : NetworkRequest.excuteGet(str) : NetworkRequest.excutePost(str, jSONObject, aDType);
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Object obj) {
                super.onPostExecute(obj);
                OnNetworkRequestListener onNetworkRequestListener2 = onNetworkRequestListener;
                if (onNetworkRequestListener2 != null) {
                    if (obj instanceof JSONObject) {
                        int unused = NetworkRequest.COUNT_NATIVE = 0;
                        onNetworkRequestListener.onNetworkRequestCompleted((JSONObject) obj, str2);
                    } else if (obj instanceof ResponseError) {
                        ResponseError responseError = (ResponseError) obj;
                        onNetworkRequestListener2.onNetworkRequestFailed(responseError.getErrorCode(), responseError.getMessage(), str2, NetworkRequest.mBlockGaid);
                    } else {
                        onNetworkRequestListener2.onNetworkRequestFailed(ResponseError.MISCELLANEOUS.getErrorCode(), ResponseError.MISCELLANEOUS.getMessage(), str2, NetworkRequest.mBlockGaid);
                    }
                }
                NetworkRequest.onRequestBlockZoneid(aDType, onblockzoneidlistener);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void sendAsyncJsonRequestGet(final int i, final String str) {
        new AsyncTask<Void, Void, Object>() { // from class: com.criteo.network.NetworkRequest.2
            public Object doInBackground(Void... voidArr) {
                Object obj;
                if (i != 2) {
                    obj = null;
                } else {
                    Tracer.debug(NetworkRequest.TAG, "sendAsyncJsonRequestGet: Done");
                    obj = NetworkRequest.excuteGet(str);
                }
                return obj;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Object obj) {
                super.onPostExecute(obj);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void sendAsyncJsonRequestGetForDisplayBanner(final int i, final String str, final onDisplayJavascriptListnerBanner ondisplayjavascriptlistnerbanner) {
        new AsyncTask<Void, Void, Object>() { // from class: com.criteo.network.NetworkRequest.3
            public Object doInBackground(Void... voidArr) {
                Object obj;
                if (i != 2) {
                    obj = null;
                } else {
                    Tracer.debug(NetworkRequest.TAG, "sendAsyncJsonRequestGet: success");
                    obj = NetworkRequest.excuteGetForDisplay(str);
                }
                return obj;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Object obj) {
                super.onPostExecute(obj);
                onDisplayJavascriptListnerBanner ondisplayjavascriptlistnerbanner2 = ondisplayjavascriptlistnerbanner;
                if (ondisplayjavascriptlistnerbanner2 == null) {
                    return;
                }
                if (obj instanceof String) {
                    ondisplayjavascriptlistnerbanner2.onDisplayJsSuccess(obj);
                } else {
                    ondisplayjavascriptlistnerbanner2.onDisplayJsFailed();
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void sendAsyncJsonRequestGetForDisplayInterstitial(final int i, final String str, final onDisplayJavascriptListnerInterstitial ondisplayjavascriptlistnerinterstitial) {
        new AsyncTask<Void, Void, Object>() { // from class: com.criteo.network.NetworkRequest.4
            public Object doInBackground(Void... voidArr) {
                Object obj;
                if (i != 2) {
                    obj = null;
                } else {
                    Tracer.debug(NetworkRequest.TAG, "sendAsyncJsonRequestGetForDisplayInterstitial: success");
                    obj = NetworkRequest.excuteGetForDisplay(str);
                }
                return obj;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Object obj) {
                super.onPostExecute(obj);
                onDisplayJavascriptListnerInterstitial ondisplayjavascriptlistnerinterstitial2 = ondisplayjavascriptlistnerinterstitial;
                if (ondisplayjavascriptlistnerinterstitial2 == null) {
                    return;
                }
                if (obj instanceof String) {
                    ondisplayjavascriptlistnerinterstitial2.onDisplayJsSuccess(obj);
                } else {
                    ondisplayjavascriptlistnerinterstitial2.onDisplayJsFailed();
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void sendGetRequest(String str) {
        sendAsyncJsonRequestGet(2, str);
    }

    public static void sendGetRequestForDisplayBanner(String str, onDisplayJavascriptListnerBanner ondisplayjavascriptlistnerbanner) {
        sendAsyncJsonRequestGetForDisplayBanner(2, str, ondisplayjavascriptlistnerbanner);
    }

    public static void sendGetRequestForDisplayInterstitial(String str, onDisplayJavascriptListnerInterstitial ondisplayjavascriptlistnerinterstitial) {
        sendAsyncJsonRequestGetForDisplayInterstitial(2, str, ondisplayjavascriptlistnerinterstitial);
    }

    public static void sendPostRequestNative(Context context, String str, JSONObject jSONObject, OnNetworkRequestListener onNetworkRequestListener, onBlockZoneIdListener onblockzoneidlistener, String str2, String str3, Criteo.ADType aDType) {
        if (jSONObject != null) {
            Tracer.debug(TAG, "sendPostRequestNative" + jSONObject);
            sendAsyncJsonRequest(1, str, jSONObject, onNetworkRequestListener, onblockzoneidlistener, str2, aDType);
            mBlockGaid = str3;
            mContext = context;
        }
    }
}
