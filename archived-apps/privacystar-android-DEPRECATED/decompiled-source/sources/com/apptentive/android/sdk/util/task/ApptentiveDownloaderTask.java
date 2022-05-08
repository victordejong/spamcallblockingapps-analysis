package com.apptentive.android.sdk.util.task;

import android.os.AsyncTask;
import android.widget.ImageView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.comm.ApptentiveClient;
import com.apptentive.android.sdk.comm.ApptentiveHttpResponse;
import com.apptentive.android.sdk.util.Util;
import com.zendesk.service.HttpConstants;
import io.fabric.sdk.android.services.network.HttpRequest;
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
        IllegalArgumentException e;
        SocketTimeoutException e2;
        MalformedURLException e3;
        IOException e4;
        URL url;
        FileOutputStream fileOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream = null;
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
                            httpURLConnection.setRequestProperty("User-Agent", ApptentiveClient.getUserAgentString());
                            httpURLConnection.setRequestProperty("Authorization", "OAuth " + str3);
                            httpURLConnection.setRequestProperty("X-API-Version", String.valueOf(9));
                        } catch (IOException e5) {
                            e4 = e5;
                            ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e4, "ClientProtocolException", new Object[0]);
                            try {
                                apptentiveHttpResponse.setContent(ApptentiveClient.getErrorResponse(httpURLConnection, apptentiveHttpResponse.isZipped()));
                            } catch (IOException e6) {
                                ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e6, "Can't read error stream.", new Object[0]);
                            }
                            return apptentiveHttpResponse;
                        }
                    } else if (str4 != null) {
                        httpURLConnection.setRequestProperty("Cookie", str4);
                    }
                    httpURLConnection.setConnectTimeout(45000);
                    httpURLConnection.setReadTimeout(45000);
                    httpURLConnection.setRequestProperty(HttpRequest.HEADER_ACCEPT_ENCODING, HttpRequest.ENCODING_GZIP);
                    httpURLConnection.setRequestProperty("Accept", "application/json");
                    httpURLConnection.setRequestMethod(HttpRequest.METHOD_GET);
                    httpURLConnection.setInstanceFollowRedirects(false);
                } catch (IOException e7) {
                    e4 = e7;
                }
            } catch (IllegalArgumentException e8) {
                e = e8;
            } catch (MalformedURLException e9) {
                e3 = e9;
            } catch (SocketTimeoutException e10) {
                e2 = e10;
            }
            switch (httpURLConnection.getResponseCode()) {
                case HttpConstants.HTTP_MOVED_PERM /* 301 */:
                case HttpConstants.HTTP_MOVED_TEMP /* 302 */:
                case HttpConstants.HTTP_SEE_OTHER /* 303 */:
                    str5 = new URL(new URL(str5), httpURLConnection.getHeaderField(HttpRequest.HEADER_LOCATION)).toExternalForm();
                    str4 = httpURLConnection.getHeaderField("Set-Cookie");
                    httpURLConnection = httpURLConnection;
                    z = false;
                default:
                    apptentiveHttpResponse.setCode(httpURLConnection.getResponseCode());
                    apptentiveHttpResponse.setReason(httpURLConnection.getResponseMessage());
                    ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "Response Status Line: " + httpURLConnection.getResponseMessage(), new Object[0]);
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                        hashMap.put(entry.getKey(), entry.getValue().toString());
                    }
                    apptentiveHttpResponse.setHeaders(hashMap);
                    try {
                        if (apptentiveHttpResponse.isSuccessful()) {
                            try {
                                int contentLength = httpURLConnection.getContentLength();
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(url.openStream(), 8192);
                                try {
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(str2);
                                    bufferedInputStream = bufferedInputStream2;
                                    try {
                                        byte[] bArr = new byte[8192];
                                        long j = 0;
                                        while (true) {
                                            bufferedInputStream = bufferedInputStream2;
                                            int read = bufferedInputStream2.read(bArr);
                                            if (read != -1) {
                                                try {
                                                    if (isCancelled()) {
                                                        try {
                                                            this.download = false;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            bufferedInputStream = bufferedInputStream2;
                                                            fileOutputStream = fileOutputStream2;
                                                            Util.ensureClosed(fileOutputStream);
                                                            Util.ensureClosed(bufferedInputStream);
                                                            throw th;
                                                        }
                                                    } else if (this.download) {
                                                        j += read;
                                                        if (contentLength > 0) {
                                                            try {
                                                                publishProgress(Integer.valueOf((int) ((100 * j) / contentLength)));
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                bufferedInputStream = bufferedInputStream2;
                                                                fileOutputStream = fileOutputStream2;
                                                                Util.ensureClosed(fileOutputStream);
                                                                Util.ensureClosed(bufferedInputStream);
                                                                throw th;
                                                            }
                                                        }
                                                        fileOutputStream2.write(bArr, 0, read);
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    bufferedInputStream = bufferedInputStream2;
                                                    fileOutputStream = fileOutputStream2;
                                                    Util.ensureClosed(fileOutputStream);
                                                    Util.ensureClosed(bufferedInputStream);
                                                    throw th;
                                                }
                                            }
                                        }
                                        try {
                                            fileOutputStream2.flush();
                                            if (!this.download) {
                                                new File(str2).delete();
                                                publishProgress(-1);
                                            } else {
                                                publishProgress(100);
                                            }
                                            Util.ensureClosed(fileOutputStream2);
                                            Util.ensureClosed(bufferedInputStream2);
                                        } catch (Throwable th5) {
                                            th = th5;
                                            bufferedInputStream = bufferedInputStream2;
                                            fileOutputStream = fileOutputStream2;
                                            Util.ensureClosed(fileOutputStream);
                                            Util.ensureClosed(bufferedInputStream);
                                            throw th;
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        fileOutputStream = fileOutputStream2;
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    fileOutputStream = null;
                                    bufferedInputStream = bufferedInputStream2;
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                fileOutputStream = null;
                            }
                        }
                    } catch (IllegalArgumentException e11) {
                        e = e11;
                        ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e, "Error communicating with server.", new Object[0]);
                        return apptentiveHttpResponse;
                    } catch (MalformedURLException e12) {
                        e3 = e12;
                        ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e3, "ClientProtocolException", new Object[0]);
                        return apptentiveHttpResponse;
                    } catch (SocketTimeoutException e13) {
                        e2 = e13;
                        ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e2, "Timeout communicating with server.", new Object[0]);
                        return apptentiveHttpResponse;
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
            ApptentiveLog.m410e(ApptentiveLogTag.UTIL, e, "Error downloading bitmap", new Object[0]);
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
        ApptentiveLog.m403v(apptentiveLogTag, sb.toString(), new Object[0]);
        this.download = false;
        this.listener.onDownloadCancel();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(ApptentiveHttpResponse apptentiveHttpResponse) {
        if (isCancelled()) {
            apptentiveHttpResponse.setCode(-1);
        }
        ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
        ApptentiveLog.m403v(apptentiveLogTag, "ApptentiveDownloaderTask onPostExecute, response code:  " + apptentiveHttpResponse.getCode(), new Object[0]);
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
