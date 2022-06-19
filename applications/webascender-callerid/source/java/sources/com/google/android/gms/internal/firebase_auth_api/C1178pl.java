package com.google.android.gms.internal.firebase_auth_api;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.internal.firebase-auth-api.al;
import com.google.android.gms.internal.firebase-auth-api.nl;
import com.google.android.gms.internal.firebase-auth-api.wk;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.Charset;
import org.json.JSONException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.pl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/pl.class */
public final class C1178pl {
    /* renamed from: a */
    public static void m2619a(String str, wk wkVar, nl nlVar, Type type, al alVar) {
        Exception e;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoOutput(true);
            byte[] bytes = wkVar.zza().getBytes(Charset.defaultCharset());
            int length = bytes.length;
            httpURLConnection.setFixedLengthStreamingMode(length);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setConnectTimeout(60000);
            alVar.m3028a(httpURLConnection);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream(), length);
            try {
                bufferedOutputStream.write(bytes, 0, length);
                bufferedOutputStream.close();
                int responseCode = httpURLConnection.getResponseCode();
                InputStream inputStream = m2618b(responseCode) ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            C1214td.m2397a(th, th2);
                        }
                        throw th;
                    }
                }
                bufferedReader.close();
                String sb2 = sb.toString();
                if (!m2618b(responseCode)) {
                    nlVar.m2735g((String) C1233vk.m2390a(sb2, String.class));
                } else {
                    nlVar.a((AbstractC1256xk) C1233vk.m2390a(sb2, type));
                }
            } catch (Throwable th3) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th4) {
                    C1214td.m2397a(th3, th4);
                }
                throw th3;
            }
        } catch (zzqe e2) {
            e = e2;
            nlVar.m2735g(e.getMessage());
        } catch (SocketTimeoutException e3) {
            nlVar.m2735g(Payload.RESPONSE_TIMEOUT);
        } catch (IOException e4) {
            e = e4;
            nlVar.m2735g(e.getMessage());
        } catch (JSONException e5) {
            e = e5;
            nlVar.m2735g(e.getMessage());
        }
    }

    /* renamed from: b */
    private static final boolean m2618b(int i) {
        return i >= 200 && i < 300;
    }
}
