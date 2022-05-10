package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpClientStack;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import p131c.p161d.p170b.p224d.p252g.p253a.C3347a9;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbd.class */
public final class zzbd extends zzar {

    /* renamed from: a */
    public final zzbf f24789a;

    public zzbd() {
        this(null);
    }

    public zzbd(zzbf zzbfVar) {
        this(null, null);
    }

    public zzbd(zzbf zzbfVar, SSLSocketFactory sSLSocketFactory) {
        this.f24789a = null;
    }

    /* renamed from: a */
    public static InputStream m15813a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        return inputStream;
    }

    /* renamed from: a */
    public static List<zzu> m15811a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new zzu(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzar
    /* renamed from: a */
    public final zzbb mo15814a(zzaa<?> zzaaVar, Map<String, String> map) throws IOException, zzl {
        Throwable th;
        String d = zzaaVar.m16959d();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(zzaaVar.mo16972a());
        zzbf zzbfVar = this.f24789a;
        String str = d;
        if (zzbfVar != null) {
            str = zzbfVar.m15677a(d);
            if (str == null) {
                String valueOf = String.valueOf(d);
                throw new IOException(valueOf.length() != 0 ? "URL blocked by rewriter: ".concat(valueOf) : new String("URL blocked by rewriter: "));
            }
        }
        URL url = new URL(str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int i = zzaaVar.m16954i();
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url.getProtocol());
        try {
            for (String str2 : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str2, (String) hashMap.get(str2));
            }
            switch (zzaaVar.m16963b()) {
                case -1:
                    break;
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    m15812a(httpURLConnection, zzaaVar);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    m15812a(httpURLConnection, zzaaVar);
                    break;
                case 3:
                    httpURLConnection.setRequestMethod("DELETE");
                    break;
                case 4:
                    httpURLConnection.setRequestMethod("HEAD");
                    break;
                case 5:
                    httpURLConnection.setRequestMethod("OPTIONS");
                    break;
                case 6:
                    httpURLConnection.setRequestMethod("TRACE");
                    break;
                case 7:
                    httpURLConnection.setRequestMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                    m15812a(httpURLConnection, zzaaVar);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != -1) {
                if (!((zzaaVar.m16963b() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                    zzbb zzbbVar = new zzbb(responseCode, m15811a(httpURLConnection.getHeaderFields()));
                    httpURLConnection.disconnect();
                    return zzbbVar;
                }
                try {
                    return new zzbb(responseCode, m15811a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new C3347a9(httpURLConnection));
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                    if (!z) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } else {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public final void m15812a(HttpURLConnection httpURLConnection, zzaa<?> zzaaVar) throws IOException, zzl {
        byte[] g = zzaaVar.mo16956g();
        if (g != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", Request.DEFAULT_PARAMS_ENCODING.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(Request.DEFAULT_PARAMS_ENCODING) : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(g);
            dataOutputStream.close();
        }
    }
}
