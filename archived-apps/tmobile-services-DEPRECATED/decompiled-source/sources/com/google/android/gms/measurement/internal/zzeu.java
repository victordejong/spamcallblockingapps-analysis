package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeu.class */
public final class zzeu extends zzkj {

    /* renamed from: d */
    private final SSLSocketFactory f9125d;

    public zzeu(zzki zzkiVar) {
        super(zzkiVar);
        this.f9125d = Build.VERSION.SDK_INT < 19 ? new zzky() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: v */
    public static byte[] m11534v(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream inputStream2 = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream2.read(bArr);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            inputStream = inputStream2;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (inputStream2 != null) {
                inputStream2.close();
            }
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: t */
    public final HttpURLConnection m11536t(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.f9125d;
            if (sSLSocketFactory != null && (openConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) openConnection).setSSLSocketFactory(sSLSocketFactory);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }

    /* renamed from: w */
    public final boolean m11533w() {
        NetworkInfo networkInfo;
        m11038q();
        try {
            networkInfo = ((ConnectivityManager) mo11075f().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }
}
