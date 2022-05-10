package com.mopub.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mopub.volley.Cache;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request.class */
public abstract class Request<T> implements Comparable<Request<T>> {

    /* renamed from: a */
    public final VolleyLog.C9000a f35089a;

    /* renamed from: b */
    public final int f35090b;

    /* renamed from: c */
    public final String f35091c;

    /* renamed from: d */
    public final int f35092d;

    /* renamed from: e */
    public final Object f35093e;

    /* renamed from: f */
    public Response.ErrorListener f35094f;

    /* renamed from: g */
    public Integer f35095g;

    /* renamed from: h */
    public RequestQueue f35096h;

    /* renamed from: i */
    public boolean f35097i;

    /* renamed from: j */
    public boolean f35098j;

    /* renamed from: k */
    public boolean f35099k;

    /* renamed from: l */
    public boolean f35100l;

    /* renamed from: m */
    public RetryPolicy f35101m;

    /* renamed from: n */
    public Cache.Entry f35102n;

    /* renamed from: o */
    public Object f35103o;

    /* renamed from: p */
    public AbstractC8998b f35104p;

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$Method.class */
    public interface Method {
        public static final int DELETE = 3;
        public static final int DEPRECATED_GET_OR_POST = -1;
        public static final int GET = 0;
        public static final int HEAD = 4;
        public static final int OPTIONS = 5;
        public static final int PATCH = 7;
        public static final int POST = 1;
        public static final int PUT = 2;
        public static final int TRACE = 6;
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$Priority.class */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    /* renamed from: com.mopub.volley.Request$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$a.class */
    public class RunnableC8997a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f35105a;

        /* renamed from: b */
        public final /* synthetic */ long f35106b;

        public RunnableC8997a(String str, long j) {
            this.f35105a = str;
            this.f35106b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Request.this.f35089a.add(this.f35105a, this.f35106b);
            Request.this.f35089a.finish(Request.this.toString());
        }
    }

    /* renamed from: com.mopub.volley.Request$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$b.class */
    public interface AbstractC8998b {
        void onNoUsableResponseReceived(Request<?> request);

        void onResponseReceived(Request<?> request, Response<?> response);
    }

    public Request(int i, String str, Response.ErrorListener errorListener) {
        this.f35089a = VolleyLog.C9000a.ENABLED ? new VolleyLog.C9000a() : null;
        this.f35093e = new Object();
        this.f35097i = true;
        this.f35098j = false;
        this.f35099k = false;
        this.f35100l = false;
        this.f35102n = null;
        this.f35090b = i;
        this.f35091c = str;
        this.f35094f = errorListener;
        setRetryPolicy(new DefaultRetryPolicy());
        this.f35092d = m3745b(str);
    }

    @Deprecated
    public Request(String str, Response.ErrorListener errorListener) {
        this(-1, str, errorListener);
    }

    /* renamed from: b */
    public static int m3745b(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* renamed from: a */
    public abstract Response<T> mo3669a(NetworkResponse networkResponse);

    /* renamed from: a */
    public VolleyError m3749a(VolleyError volleyError) {
        return volleyError;
    }

    /* renamed from: a */
    public Map<String, String> mo3754a() throws AuthFailureError {
        return null;
    }

    /* renamed from: a */
    public void m3753a(int i) {
        RequestQueue requestQueue = this.f35096h;
        if (requestQueue != null) {
            requestQueue.m3740a(this, i);
        }
    }

    /* renamed from: a */
    public void m3752a(AbstractC8998b bVar) {
        synchronized (this.f35093e) {
            this.f35104p = bVar;
        }
    }

    /* renamed from: a */
    public void m3750a(Response<?> response) {
        AbstractC8998b bVar;
        synchronized (this.f35093e) {
            bVar = this.f35104p;
        }
        if (bVar != null) {
            bVar.onResponseReceived(this, response);
        }
    }

    /* renamed from: a */
    public void m3748a(String str) {
        RequestQueue requestQueue = this.f35096h;
        if (requestQueue != null) {
            requestQueue.m3741a(this);
        }
        if (VolleyLog.C9000a.ENABLED) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC8997a(str, id));
                return;
            }
            this.f35089a.add(str, id);
            this.f35089a.finish(toString());
        }
    }

    /* renamed from: a */
    public final byte[] m3747a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() == null || entry.getValue() == null) {
                    throw new IllegalArgumentException(String.format("Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null.", entry.getKey(), entry.getValue()));
                }
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    public void addMarker(String str) {
        if (VolleyLog.C9000a.ENABLED) {
            this.f35089a.add(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: b */
    public String m3746b() {
        return com.android.volley.Request.DEFAULT_PARAMS_ENCODING;
    }

    public void cancel() {
        synchronized (this.f35093e) {
            this.f35098j = true;
            this.f35094f = null;
        }
    }

    public int compareTo(Request<T> request) {
        Priority priority = getPriority();
        Priority priority2 = request.getPriority();
        return priority == priority2 ? this.f35095g.intValue() - request.f35095g.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    @Deprecated
    /* renamed from: d */
    public Map<String, String> m3744d() throws AuthFailureError {
        return mo3754a();
    }

    public void deliverError(VolleyError volleyError) {
        Response.ErrorListener errorListener;
        synchronized (this.f35093e) {
            errorListener = this.f35094f;
        }
        if (errorListener != null) {
            errorListener.onErrorResponse(volleyError);
        }
    }

    public abstract void deliverResponse(T t);

    @Deprecated
    /* renamed from: e */
    public String m3743e() {
        return m3746b();
    }

    /* renamed from: f */
    public void m3742f() {
        AbstractC8998b bVar;
        synchronized (this.f35093e) {
            bVar = this.f35104p;
        }
        if (bVar != null) {
            bVar.onNoUsableResponseReceived(this);
        }
    }

    public byte[] getBody() throws AuthFailureError {
        Map<String, String> a = mo3754a();
        if (a == null || a.size() <= 0) {
            return null;
        }
        return m3747a(a, m3746b());
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + m3746b();
    }

    public Cache.Entry getCacheEntry() {
        return this.f35102n;
    }

    public String getCacheKey() {
        String url = getUrl();
        int method = getMethod();
        String str = url;
        if (method != 0) {
            if (method == -1) {
                str = url;
            } else {
                str = Integer.toString(method) + '-' + url;
            }
        }
        return str;
    }

    public Response.ErrorListener getErrorListener() {
        Response.ErrorListener errorListener;
        synchronized (this.f35093e) {
            errorListener = this.f35094f;
        }
        return errorListener;
    }

    public Map<String, String> getHeaders() throws AuthFailureError {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.f35090b;
    }

    @Deprecated
    public byte[] getPostBody() throws AuthFailureError {
        Map<String, String> d = m3744d();
        if (d == null || d.size() <= 0) {
            return null;
        }
        return m3747a(d, m3743e());
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public RetryPolicy getRetryPolicy() {
        return this.f35101m;
    }

    public final int getSequence() {
        Integer num = this.f35095g;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Object getTag() {
        return this.f35103o;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().getCurrentTimeout();
    }

    public int getTrafficStatsTag() {
        return this.f35092d;
    }

    public String getUrl() {
        return this.f35091c;
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.f35093e) {
            z = this.f35099k;
        }
        return z;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.f35093e) {
            z = this.f35098j;
        }
        return z;
    }

    public void markDelivered() {
        synchronized (this.f35093e) {
            this.f35099k = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(Cache.Entry entry) {
        this.f35102n = entry;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(RequestQueue requestQueue) {
        this.f35096h = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
        this.f35101m = retryPolicy;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.f35095g = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.f35097i = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldRetryServerErrors(boolean z) {
        this.f35100l = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.f35103o = obj;
        return this;
    }

    public final boolean shouldCache() {
        return this.f35097i;
    }

    public final boolean shouldRetryServerErrors() {
        return this.f35100l;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(getTrafficStatsTag());
        StringBuilder sb = new StringBuilder();
        sb.append(isCanceled() ? "[X] " : "[ ] ");
        sb.append(getUrl());
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(getPriority());
        sb.append(" ");
        sb.append(this.f35095g);
        return sb.toString();
    }
}
