package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.Request;
import com.aotter.net.volley.toolbox.HttpClientStack;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
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
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/HurlStack.class */
public class HurlStack implements HttpStack {
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public final SSLSocketFactory mSslSocketFactory;
    public final UrlRewriter mUrlRewriter;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/HurlStack$UrlRewriter.class */
    public interface UrlRewriter {
        String rewriteUrl(String str);
    }

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.mUrlRewriter = urlRewriter;
        this.mSslSocketFactory = sSLSocketFactory;
    }

    public static void addBodyIfExists(HttpURLConnection httpURLConnection, Request<?> request) {
        byte[] body = request.getBody();
        if (body != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", request.getBodyContentType());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(body);
            dataOutputStream.close();
        }
    }

    public static HttpEntity entityFromConnection(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(inputStream);
        basicHttpEntity.setContentLength(httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    public static boolean hasResponseBody(int i, int i2) {
        return (i == 4 || (100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
    }

    private HttpURLConnection openConnection(URL url, Request<?> request) {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection createConnection = createConnection(url);
        int timeoutMs = request.getTimeoutMs();
        createConnection.setConnectTimeout(timeoutMs);
        createConnection.setReadTimeout(timeoutMs);
        createConnection.setUseCaches(false);
        createConnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.mSslSocketFactory) != null) {
            ((HttpsURLConnection) createConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        return createConnection;
    }

    public static void setConnectionParametersForRequest(HttpURLConnection httpURLConnection, Request<?> request) {
        String str;
        String str2;
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", request.getPostBodyContentType());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(postBody);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                str = "GET";
                httpURLConnection.setRequestMethod(str);
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                addBodyIfExists(httpURLConnection, request);
                return;
            case 2:
                str2 = "PUT";
                httpURLConnection.setRequestMethod(str2);
                addBodyIfExists(httpURLConnection, request);
                return;
            case 3:
                str = "DELETE";
                httpURLConnection.setRequestMethod(str);
                return;
            case 4:
                str = "HEAD";
                httpURLConnection.setRequestMethod(str);
                return;
            case 5:
                str = "OPTIONS";
                httpURLConnection.setRequestMethod(str);
                return;
            case 6:
                str = "TRACE";
                httpURLConnection.setRequestMethod(str);
                return;
            case 7:
                str2 = HttpClientStack.HttpPatch.METHOD_NAME;
                httpURLConnection.setRequestMethod(str2);
                addBodyIfExists(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    public HttpURLConnection createConnection(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    @Override // com.aotter.net.volley.toolbox.HttpStack
    public HttpResponse performRequest(Request<?> request, Map<String, String> map) {
        String str;
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(request.getHeaders());
        hashMap.putAll(map);
        UrlRewriter urlRewriter = this.mUrlRewriter;
        if (urlRewriter != null) {
            str = urlRewriter.rewriteUrl(url);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: " + url);
            }
        } else {
            str = url;
        }
        HttpURLConnection openConnection = openConnection(new URL(str), request);
        for (String str2 : hashMap.keySet()) {
            openConnection.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        setConnectionParametersForRequest(openConnection, request);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (openConnection.getResponseCode() != -1) {
            BasicStatusLine basicStatusLine = new BasicStatusLine(protocolVersion, openConnection.getResponseCode(), openConnection.getResponseMessage());
            BasicHttpResponse basicHttpResponse = new BasicHttpResponse(basicStatusLine);
            if (hasResponseBody(request.getMethod(), basicStatusLine.getStatusCode())) {
                basicHttpResponse.setEntity(entityFromConnection(openConnection));
            }
            for (Map.Entry<String, List<String>> entry : openConnection.getHeaderFields().entrySet()) {
                if (entry.getKey() != null) {
                    basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
                }
            }
            return basicHttpResponse;
        }
        throw new IOException("Could not retrieve response code from HttpUrlConnection.");
    }
}
