package com.aotter.net.volley.toolbox;

import android.os.SystemClock;
import com.aotter.net.volley.Cache;
import com.aotter.net.volley.Network;
import com.aotter.net.volley.Request;
import com.aotter.net.volley.RetryPolicy;
import com.aotter.net.volley.ServerError;
import com.aotter.net.volley.VolleyError;
import com.aotter.net.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/BasicNetwork.class */
public class BasicNetwork implements Network {
    public final HttpStack mHttpStack;
    public final ByteArrayPool mPool;
    public static final boolean DEBUG = VolleyLog.DEBUG;
    public static int SLOW_REQUEST_THRESHOLD_MS = 3000;
    public static int DEFAULT_POOL_SIZE = 4096;

    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(DEFAULT_POOL_SIZE));
    }

    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.mHttpStack = httpStack;
        this.mPool = byteArrayPool;
    }

    private void addCacheHeaders(Map<String, String> map, Cache.Entry entry) {
        if (entry != null) {
            String str = entry.etag;
            if (str != null) {
                map.put("If-None-Match", str);
            }
            long j = entry.lastModified;
            if (j > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(j)));
            }
        }
    }

    public static void attemptRetryOnException(String str, Request<?> request, VolleyError volleyError) {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    public static Map<String, String> convertHeaders(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private byte[] entityToBytes(HttpEntity httpEntity) {
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content != null) {
                byte[] buf = this.mPool.getBuf(1024);
                while (true) {
                    int read = content.read(buf);
                    if (read == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(buf, 0, read);
                }
                byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
                try {
                    httpEntity.consumeContent();
                } catch (IOException e) {
                    VolleyLog.m36306v("Error occured when calling consumingContent", new Object[0]);
                }
                this.mPool.returnBuf(buf);
                poolingByteArrayOutputStream.close();
                return byteArray;
            }
            throw new ServerError();
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                VolleyLog.m36306v("Error occured when calling consumingContent", new Object[0]);
            }
            this.mPool.returnBuf(null);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    private void logSlowRequests(long j, Request<?> request, byte[] bArr, StatusLine statusLine) {
        if (DEBUG || j > SLOW_REQUEST_THRESHOLD_MS) {
            VolleyLog.m36309d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : C14247d.f31851f, Integer.valueOf(statusLine.getStatusCode()), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
        }
    }

    public void logError(String str, String str2, long j) {
        VolleyLog.m36306v("HTTP ERROR(%s) %d ms to fetch %s", str, Long.valueOf(SystemClock.elapsedRealtime() - j), str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0114, code lost:
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0229 A[SYNTHETIC] */
    @Override // com.aotter.net.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.aotter.net.volley.NetworkResponse performRequest(com.aotter.net.volley.Request<?> r12) {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.volley.toolbox.BasicNetwork.performRequest(com.aotter.net.volley.Request):com.aotter.net.volley.NetworkResponse");
    }
}
