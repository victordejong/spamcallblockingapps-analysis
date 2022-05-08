package com.aotter.net.trek.network;

import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.aotter.net.trek.common.CacheService;
import com.aotter.net.trek.common.TrekHttpUrlConnection;
import com.aotter.net.trek.common.util.Streams;
import com.aotter.net.trek.network.VideoDownloader;
import com.aotter.net.trek.util.TrekLog;
import java.io.BufferedInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.Deque;
@VisibleForTesting
/* renamed from: com.aotter.net.trek.network.i */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/i.class */
public class AsyncTaskC1763i extends AsyncTask<String, Void, Boolean> {
    @NonNull

    /* renamed from: a */
    public final VideoDownloader.VideoDownloaderListener f1581a;
    @NonNull

    /* renamed from: b */
    public final WeakReference<AsyncTaskC1763i> f1582b = new WeakReference<>(this);

    @VisibleForTesting
    public AsyncTaskC1763i(@NonNull VideoDownloader.VideoDownloaderListener videoDownloaderListener) {
        Deque deque;
        this.f1581a = videoDownloaderListener;
        deque = VideoDownloader.f1564b;
        deque.add(this.f1582b);
    }

    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        Throwable th;
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        Exception e;
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            TrekLog.m36319d("VideoDownloader task tried to execute null or empty url.");
            return false;
        }
        String str = strArr[0];
        String str2 = strArr[1];
        BufferedInputStream bufferedInputStream2 = null;
        try {
            httpURLConnection = TrekHttpUrlConnection.getHttpUrlConnection(str);
            httpURLConnection = httpURLConnection;
            try {
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnection = null;
            bufferedInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            bufferedInputStream2 = null;
        }
        try {
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                TrekLog.m36319d("VideoDownloader encountered unexpected statusCode: " + responseCode);
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return false;
            }
            int contentLength = httpURLConnection.getContentLength();
            if (contentLength > 26214400) {
                TrekLog.m36319d(String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), Integer.valueOf((int) VideoDownloader.f1563a)));
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return false;
            }
            boolean putToDiskCache = CacheService.putToDiskCache(str2, bufferedInputStream);
            Streams.closeStream(bufferedInputStream);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return Boolean.valueOf(putToDiskCache);
        } catch (Exception e4) {
            e = e4;
            httpURLConnection = httpURLConnection;
            bufferedInputStream2 = bufferedInputStream;
            TrekLog.m36318d("VideoDownloader task threw an internal exception.", e);
            Streams.closeStream(bufferedInputStream);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return false;
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream2 = bufferedInputStream;
            Streams.closeStream(bufferedInputStream2);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        Deque deque;
        if (isCancelled()) {
            onCancelled();
            return;
        }
        deque = VideoDownloader.f1564b;
        deque.remove(this.f1582b);
        if (bool == null) {
            this.f1581a.onComplete(false);
        } else {
            this.f1581a.onComplete(bool.booleanValue());
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        Deque deque;
        TrekLog.m36319d("VideoDownloader task was cancelled.");
        deque = VideoDownloader.f1564b;
        deque.remove(this.f1582b);
        this.f1581a.onComplete(false);
    }
}
