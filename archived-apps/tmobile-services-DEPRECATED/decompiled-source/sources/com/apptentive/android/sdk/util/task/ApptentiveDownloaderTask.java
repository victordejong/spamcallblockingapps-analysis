package com.apptentive.android.sdk.util.task;

import android.os.AsyncTask;
import android.widget.ImageView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.comm.ApptentiveClient;
import com.apptentive.android.sdk.comm.ApptentiveHttpResponse;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.util.Util;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/task/ApptentiveDownloaderTask.class */
public class ApptentiveDownloaderTask extends AsyncTask<Object, Integer, ApptentiveHttpResponse> {
    private static boolean FILE_DOWNLOAD_REDIRECTION_ENABLED = false;
    boolean download = false;
    private final FileDownloadListener listener;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener.class */
    public interface FileDownloadListener {
        void onDownloadCancel();

        void onDownloadComplete();

        void onDownloadError();

        void onDownloadStart();

        void onProgress(int i);
    }

    public ApptentiveDownloaderTask(ImageView imageView, FileDownloadListener fileDownloadListener) {
        this.listener = fileDownloadListener;
    }

    private ApptentiveHttpResponse downloadBitmap(String str, String str2, String str3) {
        IOException e;
        URL url;
        FileOutputStream fileOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream;
        int contentLength;
        FileOutputStream fileOutputStream2;
        byte[] bArr;
        long j;
        if (isCancelled()) {
            return null;
        }
        boolean z = FILE_DOWNLOAD_REDIRECTION_ENABLED;
        ApptentiveHttpResponse apptentiveHttpResponse = new ApptentiveHttpResponse();
        String str4 = null;
        String str5 = str;
        HttpURLConnection httpURLConnection = null;
        while (true) {
            try {
                try {
                    url = new URL(str5);
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                    if (z) {
                        try {
                            httpURLConnection.setRequestProperty(AbstractSpiCall.HEADER_USER_AGENT, ApptentiveClient.getUserAgentString());
                            httpURLConnection.setRequestProperty("Authorization", "OAuth " + str3);
                            httpURLConnection.setRequestProperty("X-API-Version", String.valueOf(9));
                        } catch (IOException e2) {
                            e = e2;
                            ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e, "ClientProtocolException", new Object[0]);
                            ErrorMetrics.logException(e);
                            try {
                                apptentiveHttpResponse.setContent(ApptentiveClient.getErrorResponse(httpURLConnection, apptentiveHttpResponse.isZipped()));
                            } catch (IOException e3) {
                                ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e3, "Can't read error stream.", new Object[0]);
                                ErrorMetrics.logException(e);
                            }
                            return apptentiveHttpResponse;
                        }
                    } else if (str4 != null) {
                        httpURLConnection.setRequestProperty("Cookie", str4);
                    }
                    httpURLConnection.setConnectTimeout(45000);
                    httpURLConnection.setReadTimeout(45000);
                    httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                    httpURLConnection.setRequestProperty(AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setInstanceFollowRedirects(false);
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (IllegalArgumentException e5) {
                ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e5, "Error communicating with server.", new Object[0]);
                ErrorMetrics.logException(e5);
            } catch (MalformedURLException e6) {
                ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e6, "ClientProtocolException", new Object[0]);
                ErrorMetrics.logException(e6);
            } catch (SocketTimeoutException e7) {
                ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e7, "Timeout communicating with server.", new Object[0]);
                ErrorMetrics.logException(e7);
            }
            switch (httpURLConnection.getResponseCode()) {
                case 301:
                case 302:
                case 303:
                    str5 = new URL(new URL(str5), httpURLConnection.getHeaderField("Location")).toExternalForm();
                    str4 = httpURLConnection.getHeaderField("Set-Cookie");
                    httpURLConnection = httpURLConnection;
                    z = false;
                default:
                    apptentiveHttpResponse.setCode(httpURLConnection.getResponseCode());
                    apptentiveHttpResponse.setReason(httpURLConnection.getResponseMessage());
                    ApptentiveLog.m15638v(ApptentiveLogTag.UTIL, "Response Status Line: " + httpURLConnection.getResponseMessage(), new Object[0]);
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                        hashMap.put(entry.getKey(), entry.getValue().toString());
                    }
                    apptentiveHttpResponse.setHeaders(hashMap);
                    if (apptentiveHttpResponse.isSuccessful()) {
                        try {
                            contentLength = httpURLConnection.getContentLength();
                            bufferedInputStream = new BufferedInputStream(url.openStream(), 8192);
                            try {
                                fileOutputStream2 = new FileOutputStream(str2);
                                bufferedInputStream = bufferedInputStream;
                                try {
                                    bArr = new byte[8192];
                                    j = 0;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                fileOutputStream = null;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedInputStream = null;
                            fileOutputStream = null;
                        }
                        while (true) {
                            bufferedInputStream = bufferedInputStream;
                            int read = bufferedInputStream.read(bArr);
                            if (read != -1) {
                                if (isCancelled()) {
                                    try {
                                        this.download = false;
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                } else if (this.download) {
                                    j += read;
                                    if (contentLength > 0) {
                                        try {
                                            publishProgress(Integer.valueOf((int) ((100 * j) / contentLength)));
                                        } catch (Throwable th6) {
                                            th = th6;
                                        }
                                    }
                                    fileOutputStream2.write(bArr, 0, read);
                                }
                                fileOutputStream = fileOutputStream2;
                                Util.ensureClosed(fileOutputStream);
                                Util.ensureClosed(bufferedInputStream);
                                throw th;
                            }
                        }
                        fileOutputStream2.flush();
                        if (!this.download) {
                            new File(str2).delete();
                            publishProgress(-1);
                        } else {
                            publishProgress(100);
                        }
                        Util.ensureClosed(fileOutputStream2);
                        Util.ensureClosed(bufferedInputStream);
                    }
                    return apptentiveHttpResponse;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.AsyncTask
    public ApptentiveHttpResponse doInBackground(Object... objArr) {
        ApptentiveHttpResponse apptentiveHttpResponse = new ApptentiveHttpResponse();
        try {
            apptentiveHttpResponse = downloadBitmap((String) objArr[0], (String) objArr[1], (String) objArr[2]);
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.UTIL, e, "Error downloading bitmap", new Object[0]);
            ErrorMetrics.logException(e);
        }
        return apptentiveHttpResponse;
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        onCancelled(new ApptentiveHttpResponse());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCancelled(ApptentiveHttpResponse apptentiveHttpResponse) {
        ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
        StringBuilder sb = new StringBuilder();
        sb.append("ApptentiveDownloaderTask onCancelled, response code:  ");
        sb.append(apptentiveHttpResponse != null ? Integer.valueOf(apptentiveHttpResponse.getCode()) : "");
        ApptentiveLog.m15638v(apptentiveLogTag, sb.toString(), new Object[0]);
        this.download = false;
        this.listener.onDownloadCancel();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(ApptentiveHttpResponse apptentiveHttpResponse) {
        if (isCancelled()) {
            apptentiveHttpResponse.setCode(-1);
        }
        ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
        ApptentiveLog.m15638v(apptentiveLogTag, "ApptentiveDownloaderTask onPostExecute, response code:  " + apptentiveHttpResponse.getCode(), new Object[0]);
        if (apptentiveHttpResponse.isSuccessful()) {
            this.listener.onDownloadComplete();
        } else {
            this.listener.onDownloadError();
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
        this.download = true;
        this.listener.onDownloadStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate((Object[]) numArr);
        this.listener.onProgress(numArr[0].intValue());
    }
}
