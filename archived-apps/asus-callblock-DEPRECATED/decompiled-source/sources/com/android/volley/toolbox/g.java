package com.android.volley.toolbox;

import android.support.v4.view.p;
import com.android.volley.n;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/g.class */
public final class g implements f {

    /* renamed from: a  reason: collision with root package name */
    private final a f2328a;

    /* renamed from: b  reason: collision with root package name */
    private final SSLSocketFactory f2329b;

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/g$a.class */
    public interface a {
        String a();
    }

    public g() {
        this((byte) 0);
    }

    private g(byte b2) {
        this((char) 0);
    }

    private g(char c) {
        this.f2328a = null;
        this.f2329b = null;
    }

    private static HttpEntity a(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            errorStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(errorStream);
        basicHttpEntity.setContentLength(httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    private static void a(HttpURLConnection httpURLConnection, n<?> nVar) {
        byte[] h = nVar.h();
        if (h != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", nVar.g());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(h);
            dataOutputStream.close();
        }
    }

    @Override // com.android.volley.toolbox.f
    public final HttpResponse a(n<?> nVar, Map<String, String> map) {
        String str;
        String b2 = nVar.b();
        HashMap hashMap = new HashMap();
        hashMap.putAll(nVar.d());
        hashMap.putAll(map);
        if (this.f2328a != null) {
            String a2 = this.f2328a.a();
            str = a2;
            if (a2 == null) {
                throw new IOException("URL blocked by rewriter: " + b2);
            }
        } else {
            str = b2;
        }
        URL url = new URL(str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        int j = nVar.j();
        httpURLConnection.setConnectTimeout(j);
        httpURLConnection.setReadTimeout(j);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.f2329b != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.f2329b);
        }
        for (String str2 : hashMap.keySet()) {
            httpURLConnection.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        switch (nVar.f2302a) {
            case p.POSITION_UNCHANGED /* -1 */:
                byte[] f = nVar.f();
                if (f != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", nVar.e());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(f);
                    dataOutputStream.close();
                    break;
                }
                break;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                break;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                a(httpURLConnection, nVar);
                break;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                a(httpURLConnection, nVar);
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
                httpURLConnection.setRequestMethod("PATCH");
                a(httpURLConnection, nVar);
                break;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (httpURLConnection.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicStatusLine basicStatusLine = new BasicStatusLine(protocolVersion, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage());
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(basicStatusLine);
        int i = nVar.f2302a;
        int statusCode = basicStatusLine.getStatusCode();
        if ((i == 4 || (100 <= statusCode && statusCode < 200) || statusCode == 204 || statusCode == 304) ? false : true) {
            basicHttpResponse.setEntity(a(httpURLConnection));
        }
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return basicHttpResponse;
    }
}
