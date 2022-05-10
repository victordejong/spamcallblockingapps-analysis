package com.mopub.volley.toolbox;

import com.mopub.volley.Cache;
import com.mopub.volley.Header;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.ServerError;
import com.mopub.volley.VolleyError;
import com.mopub.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/BasicNetwork.class */
public class BasicNetwork implements Network {

    /* renamed from: c */
    public static final boolean f35127c = VolleyLog.DEBUG;

    /* renamed from: a */
    public final BaseHttpStack f35128a;

    /* renamed from: b */
    public final ByteArrayPool f35129b;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f35128a = baseHttpStack;
        this.f35129b = byteArrayPool;
    }

    /* renamed from: a */
    public static List<Header> m3729a(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (Header header : list) {
                treeSet.add(header.getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header2 : entry.allResponseHeaders) {
                    if (!treeSet.contains(header2.getName())) {
                        arrayList.add(header2);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m3730a(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
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

    /* renamed from: a */
    public final Map<String, String> m3732a(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        String str = entry.etag;
        if (str != null) {
            hashMap.put("If-None-Match", str);
        }
        long j = entry.lastModified;
        if (j > 0) {
            hashMap.put("If-Modified-Since", HttpHeaderParser.m3705a(j));
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m3733a(long j, Request<?> request, byte[] bArr, int i) {
        if (f35127c || j > 3000) {
            VolleyLog.m3738d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00a9: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a5 */
    /* renamed from: a */
    public final byte[] m3731a(InputStream inputStream, int i) throws IOException, ServerError {
        byte[] bArr;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.f35129b, i);
        try {
            if (inputStream != null) {
                byte[] buf = this.f35129b.getBuf(1024);
                while (true) {
                    int read = inputStream.read(buf);
                    if (read == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(buf, 0, read);
                }
                byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        VolleyLog.m3735v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.f35129b.returnBuf(buf);
                poolingByteArrayOutputStream.close();
                return byteArray;
            }
            throw new ServerError();
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    VolleyLog.m3735v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f35129b.returnBuf(bArr);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fb, code lost:
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0221 A[SYNTHETIC] */
    @Override // com.mopub.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.volley.NetworkResponse performRequest(com.mopub.volley.Request<?> r11) throws com.mopub.volley.VolleyError {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.BasicNetwork.performRequest(com.mopub.volley.Request):com.mopub.volley.NetworkResponse");
    }
}
