package com.privacystar.core.service.network;

import com.privacystar.core.util.Text;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import okhttp3.Headers;
import okhttp3.Response;
import org.apache.commons.p018io.IOUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/HttpResponse.class */
public class HttpResponse {
    private Exception mCaughtException;
    private HttpConnection mConnection;
    private int mResponseCode;
    private String mResponseMessage;
    private Response rawResponse;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpResponse(HttpConnection httpConnection) {
        this(httpConnection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpResponse(HttpConnection httpConnection, Exception exc) {
        this.mResponseCode = -1;
        this.mResponseMessage = null;
        this.mCaughtException = null;
        this.mConnection = null;
        this.rawResponse = null;
        this.mConnection = httpConnection;
        this.mCaughtException = exc;
        this.rawResponse = httpConnection.getResponse();
        if (exc == null && this.rawResponse != null) {
            this.mResponseCode = this.rawResponse.code();
            this.mResponseMessage = this.rawResponse.message();
        }
    }

    public static String getAcceptHeaderValue(HttpResponse httpResponse) {
        if (httpResponse == null || httpResponse.rawResponse == null) {
            return "";
        }
        Headers headers = httpResponse.rawResponse.headers();
        String str = headers.get("Content-Type");
        String str2 = str;
        if (str == null) {
            String str3 = headers.get("Accept");
            str2 = str3;
            if (str3 == null) {
                String str4 = headers.get("accept");
                str2 = str4;
                if (str4 == null) {
                    str2 = "";
                }
            }
        }
        return str2;
    }

    public static String getContentType(HttpResponse httpResponse) {
        if (httpResponse == null || httpResponse.rawResponse == null) {
            return null;
        }
        return httpResponse.rawResponse.headers().get("Content-Type");
    }

    private static boolean getIsGzipped(Response response) {
        if (response == null) {
            return false;
        }
        for (Map.Entry<String, List<String>> entry : response.headers().toMultimap().entrySet()) {
            for (String str : entry.getValue()) {
                if (Text.equals(str, HttpRequest.ENCODING_GZIP)) {
                    return true;
                }
            }
        }
        return false;
    }

    public Exception getException() {
        return this.mCaughtException;
    }

    public int getResponseCode() {
        return this.mResponseCode;
    }

    public String getResponseMessage() {
        return this.mResponseMessage;
    }

    public InputStream getResponseStream() {
        InputStream inputStream;
        int code;
        Response response = this.mConnection.getResponse();
        if (response == null) {
            return null;
        }
        try {
            code = response.code();
        } catch (Exception e) {
            Timber.m32e(e, "Error retrieving HttpResponse content", new Object[0]);
            inputStream = null;
            if (this.mCaughtException == null) {
                this.mCaughtException = e;
                inputStream = null;
            }
        }
        if (code == -1) {
            return null;
        }
        if (code < 200 || code > 299) {
            Timber.m25w("Response code indicates error, returning error stream.", new Object[0]);
            return response.body().byteStream();
        }
        if (getIsGzipped(response)) {
            Timber.m37d("Treating as gzipped", new Object[0]);
            inputStream = new GZIPInputStream(response.body().byteStream());
        } else {
            Timber.m37d("Treating as not gzipped", new Object[0]);
            inputStream = response.body().byteStream();
        }
        return inputStream;
    }

    public String getResponseString() {
        String iOUtils;
        InputStream responseStream = getResponseStream();
        try {
        } catch (Exception e) {
            Timber.m23w(e, "While trying to read webservice response", new Object[0]);
        } finally {
            IOUtils.closeQuietly(responseStream);
        }
        if (responseStream != null) {
            iOUtils = IOUtils.toString(responseStream);
            return iOUtils;
        }
        iOUtils = null;
        return iOUtils;
    }

    public boolean wasConnectionValid() {
        return this.mConnection.getResponse() != null;
    }
}
