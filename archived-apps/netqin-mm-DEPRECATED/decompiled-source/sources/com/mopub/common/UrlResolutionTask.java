package com.mopub.common;

import android.net.Uri;
import android.os.AsyncTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlResolutionTask.class */
public class UrlResolutionTask extends AsyncTask<String, Void, String> {

    /* renamed from: a */
    public final AbstractC8722a f33807a;

    /* renamed from: com.mopub.common.UrlResolutionTask$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlResolutionTask$a.class */
    public interface AbstractC8722a {
        void onFailure(String str, Throwable th);

        void onSuccess(String str);
    }

    public UrlResolutionTask(AbstractC8722a aVar) {
        this.f33807a = aVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m4598a(String str, HttpURLConnection httpURLConnection) throws IOException, URISyntaxException {
        String str2;
        URI uri = new URI(str);
        int responseCode = httpURLConnection.getResponseCode();
        String headerField = httpURLConnection.getHeaderField("location");
        if (responseCode < 300 || responseCode >= 400) {
            str2 = null;
        } else {
            try {
                str2 = uri.resolve(headerField).toString();
            } catch (IllegalArgumentException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
                throw new URISyntaxException(headerField, "Unable to parse invalid URL");
            } catch (NullPointerException e2) {
                MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent2, "Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
                throw e2;
            }
        }
        return str2;
    }

    public static void getResolvedUrl(String str, AbstractC8722a aVar) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(aVar), str);
        } catch (Exception e) {
            aVar.onFailure("Failed to resolve url", e);
        }
    }

    /* renamed from: a */
    public final String m4599a(String str) throws IOException, URISyntaxException {
        Throwable th;
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            String a = m4598a(str, httpURLConnection);
            if (httpURLConnection != null) {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                    }
                }
                httpURLConnection.disconnect();
            }
            return a;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                InputStream inputStream2 = httpURLConnection2.getInputStream();
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e2) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                    }
                }
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public String doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        int i = 0;
        String str = strArr[0];
        String str2 = null;
        while (str != null && i < 10) {
            try {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str)) && !UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                    str = m4599a(str);
                    i++;
                    str2 = str;
                }
                return str;
            } catch (IOException | NullPointerException | URISyntaxException e) {
                return null;
            }
        }
        return str2;
    }

    /* renamed from: b */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (isCancelled() || str == null) {
            onCancelled();
        } else {
            this.f33807a.onSuccess(str);
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f33807a.onFailure("Task for resolving url was cancelled", null);
    }
}
