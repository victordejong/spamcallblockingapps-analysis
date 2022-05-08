package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import com.google.firebase.appindexing.Indexable;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/UrlConnectionDownloader.class */
public class UrlConnectionDownloader implements Downloader {
    private static final String FORCE_CACHE = "only-if-cached,max-age=2147483647";
    static final String RESPONSE_SOURCE = "X-Android-Response-Source";
    static volatile Object cache;
    private final Context context;
    private static final Object lock = new Object();
    private static final ThreadLocal<StringBuilder> CACHE_HEADER_BUILDER = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.UrlConnectionDownloader.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs.class */
    public static class ResponseCacheIcs {
        private ResponseCacheIcs() {
        }

        static void close(Object obj) {
            try {
                ((HttpResponseCache) obj).close();
            } catch (IOException e) {
            }
        }

        static Object install(Context context) throws IOException {
            File createDefaultCacheDir = Utils.createDefaultCacheDir(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            HttpResponseCache httpResponseCache = installed;
            if (installed == null) {
                httpResponseCache = HttpResponseCache.install(createDefaultCacheDir, Utils.calculateDiskCacheSize(createDefaultCacheDir));
            }
            return httpResponseCache;
        }
    }

    public UrlConnectionDownloader(Context context) {
        this.context = context.getApplicationContext();
    }

    private static void installCacheIfNeeded(Context context) {
        if (cache == null) {
            try {
                synchronized (lock) {
                    if (cache == null) {
                        cache = ResponseCacheIcs.install(context);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.Response load(Uri uri, int i) throws IOException {
        String str;
        if (Build.VERSION.SDK_INT >= 14) {
            installCacheIfNeeded(this.context);
        }
        HttpURLConnection openConnection = openConnection(uri);
        openConnection.setUseCaches(true);
        if (i != 0) {
            if (NetworkPolicy.isOfflineOnly(i)) {
                str = FORCE_CACHE;
            } else {
                StringBuilder sb = CACHE_HEADER_BUILDER.get();
                sb.setLength(0);
                if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                    sb.append("no-cache");
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append("no-store");
                }
                str = sb.toString();
            }
            openConnection.setRequestProperty("Cache-Control", str);
        }
        int responseCode = openConnection.getResponseCode();
        if (responseCode >= 300) {
            openConnection.disconnect();
            throw new Downloader.ResponseException(responseCode + " " + openConnection.getResponseMessage(), i, responseCode);
        }
        return new Downloader.Response(openConnection.getInputStream(), Utils.parseResponseSourceHeader(openConnection.getHeaderField(RESPONSE_SOURCE)), openConnection.getHeaderFieldInt("Content-Length", -1));
    }

    protected HttpURLConnection openConnection(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(Indexable.MAX_STRING_LENGTH);
        return httpURLConnection;
    }

    @Override // com.squareup.picasso.Downloader
    public void shutdown() {
        if (Build.VERSION.SDK_INT >= 14 && cache != null) {
            ResponseCacheIcs.close(cache);
        }
    }
}
