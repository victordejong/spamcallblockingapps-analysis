package com.moat.analytics.mobile.mpub;

import com.android.volley.Request;
import com.moat.analytics.mobile.mpub.p522a.p524b.C8615a;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.moat.analytics.mobile.mpub.q */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/q.class */
public class C8653q {
    /* renamed from: a */
    public static C8615a<String> m4840a(String str) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() >= 400) {
                    return C8615a.m4987a();
                }
                InputStream inputStream3 = httpURLConnection.getInputStream();
                C8615a<String> a = C8615a.m4986a(m4841a(inputStream3));
                if (inputStream3 != null) {
                    try {
                        inputStream3.close();
                    } catch (IOException e) {
                    }
                }
                return a;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream2.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            C8615a<String> a2 = C8615a.m4987a();
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                }
            }
            return a2;
        }
    }

    /* renamed from: a */
    public static String m4841a(InputStream inputStream) {
        int i;
        char[] cArr = new char[256];
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, Request.DEFAULT_PARAMS_ENCODING);
        int i2 = 0;
        do {
            int read = inputStreamReader.read(cArr, 0, 256);
            if (read <= 0) {
                break;
            }
            i = i2 + read;
            sb.append(cArr, 0, read);
            i2 = i;
        } while (i < 1024);
        return sb.toString();
    }

    /* renamed from: b */
    public static void m4839b(final String str) {
        new Thread() { // from class: com.moat.analytics.mobile.mpub.q.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    C8653q.m4840a(str);
                } catch (Exception e) {
                }
            }
        }.start();
    }
}
