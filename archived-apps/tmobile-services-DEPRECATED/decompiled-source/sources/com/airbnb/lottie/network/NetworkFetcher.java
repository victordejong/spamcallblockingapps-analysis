package com.airbnb.lottie.network;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.util.Pair;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.ZipInputStream;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/network/NetworkFetcher.class */
public class NetworkFetcher {

    /* renamed from: a */
    private final Context f6282a;

    /* renamed from: b */
    private final String f6283b;
    @Nullable

    /* renamed from: c */
    private final NetworkCache f6284c;

    private NetworkFetcher(Context context, String str, @Nullable String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f6282a = applicationContext;
        this.f6283b = str;
        if (str2 == null) {
            this.f6284c = null;
        } else {
            this.f6284c = new NetworkCache(applicationContext);
        }
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    private LottieComposition m15891a() {
        Pair<FileExtension, InputStream> a;
        NetworkCache networkCache = this.f6284c;
        if (networkCache == null || (a = networkCache.m15897a(this.f6283b)) == null) {
            return null;
        }
        FileExtension fileExtension = a.f3206a;
        InputStream inputStream = a.f3207b;
        LottieResult<LottieComposition> u = fileExtension == FileExtension.ZIP ? LottieCompositionFactory.m16304u(new ZipInputStream(inputStream), this.f6283b) : LottieCompositionFactory.m16316i(inputStream, this.f6283b);
        if (u.m16215b() != null) {
            return u.m16215b();
        }
        return null;
    }

    @WorkerThread
    /* renamed from: b */
    private LottieResult<LottieComposition> m15890b() {
        try {
            return m15889c();
        } catch (IOException e) {
            return new LottieResult<>(e);
        }
    }

    @WorkerThread
    /* renamed from: c */
    private LottieResult<LottieComposition> m15889c() throws IOException {
        Logger.m15738a("Fetching " + this.f6283b);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f6283b).openConnection();
        httpURLConnection.setRequestMethod("GET");
        try {
            httpURLConnection.connect();
            if (httpURLConnection.getErrorStream() == null && httpURLConnection.getResponseCode() == 200) {
                LottieResult<LottieComposition> g = m15885g(httpURLConnection);
                StringBuilder sb = new StringBuilder();
                sb.append("Completed fetch from network. Success: ");
                sb.append(g.m16215b() != null);
                Logger.m15738a(sb.toString());
                return g;
            }
            String f = m15886f(httpURLConnection);
            return new LottieResult<>(new IllegalArgumentException("Unable to fetch " + this.f6283b + ". Failed with " + httpURLConnection.getResponseCode() + "\n" + f));
        } catch (Exception e) {
            return new LottieResult<>(e);
        } finally {
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: e */
    public static LottieResult<LottieComposition> m15887e(Context context, String str, @Nullable String str2) {
        return new NetworkFetcher(context, str, str2).m15888d();
    }

    /* renamed from: f */
    private String m15886f(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine);
                        sb.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception e) {
                        }
                    }
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Exception e3) {
                }
                throw th;
            }
        }
        bufferedReader.close();
        return sb.toString();
    }

    @Nullable
    /* renamed from: g */
    private LottieResult<LottieComposition> m15885g(HttpURLConnection httpURLConnection) throws IOException {
        FileExtension fileExtension;
        LottieResult<LottieComposition> lottieResult;
        String contentType = httpURLConnection.getContentType();
        String str = contentType;
        if (contentType == null) {
            str = AbstractSpiCall.ACCEPT_JSON_VALUE;
        }
        if (str.contains("application/zip")) {
            Logger.m15738a("Handling zip response.");
            fileExtension = FileExtension.ZIP;
            NetworkCache networkCache = this.f6284c;
            lottieResult = networkCache == null ? LottieCompositionFactory.m16304u(new ZipInputStream(httpURLConnection.getInputStream()), null) : LottieCompositionFactory.m16304u(new ZipInputStream(new FileInputStream(networkCache.m15892f(this.f6283b, httpURLConnection.getInputStream(), fileExtension))), this.f6283b);
        } else {
            Logger.m15738a("Received json response.");
            fileExtension = FileExtension.JSON;
            NetworkCache networkCache2 = this.f6284c;
            lottieResult = networkCache2 == null ? LottieCompositionFactory.m16316i(httpURLConnection.getInputStream(), null) : LottieCompositionFactory.m16316i(new FileInputStream(new File(networkCache2.m15892f(this.f6283b, httpURLConnection.getInputStream(), fileExtension).getAbsolutePath())), this.f6283b);
        }
        if (!(this.f6284c == null || lottieResult.m16215b() == null)) {
            this.f6284c.m15893e(this.f6283b, fileExtension);
        }
        return lottieResult;
    }

    @WorkerThread
    /* renamed from: d */
    public LottieResult<LottieComposition> m15888d() {
        LottieComposition a = m15891a();
        if (a != null) {
            return new LottieResult<>(a);
        }
        Logger.m15738a("Animation for " + this.f6283b + " not found in cache. Fetching from network.");
        return m15890b();
    }
}
