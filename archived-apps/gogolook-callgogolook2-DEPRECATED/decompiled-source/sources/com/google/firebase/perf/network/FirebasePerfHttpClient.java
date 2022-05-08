package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.android.gms.internal.firebase_perf.zzaa;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
import p081h.p203i.p204a.p224e.p259j.p269j.C7928t5;
import p081h.p203i.p325c.p379z.p382d.C10075f;
import p081h.p203i.p325c.p379z.p382d.C10077h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfHttpClient.class */
public class FirebasePerfHttpClient {
    /* renamed from: a */
    public static <T> T m31031a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            a.m19575a(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            a.m19573b(httpRequest.getRequestLine().getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            return (T) httpClient.execute(httpHost, httpRequest, new C10075f(responseHandler, zzaaVar, a));
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static <T> T m31030a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext, zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            a.m19575a(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            a.m19573b(httpRequest.getRequestLine().getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            return (T) httpClient.execute(httpHost, httpRequest, new C10075f(responseHandler, zzaaVar, a), httpContext);
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static <T> T m31027a(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            a.m19575a(httpUriRequest.getURI().toString());
            a.m19573b(httpUriRequest.getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            return (T) httpClient.execute(httpUriRequest, new C10075f(responseHandler, zzaaVar, a));
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static <T> T m31026a(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext, zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            a.m19575a(httpUriRequest.getURI().toString());
            a.m19573b(httpUriRequest.getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            return (T) httpClient.execute(httpUriRequest, new C10075f(responseHandler, zzaaVar, a), httpContext);
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m31032a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, com.google.android.gms.internal.firebase-perf.zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            a.m19575a(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            a.m19573b(httpRequest.getRequestLine().getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            a.m19567f(zzaaVar.m31840c());
            a.m19572c(execute.getStatusLine().getStatusCode());
            Long a3 = C10077h.m13453a((HttpMessage) execute);
            if (a3 != null) {
                a.m19574b(a3.longValue());
            }
            String a4 = C10077h.m13452a(execute);
            if (a4 != null) {
                a.m19570c(a4);
            }
            a.m19561v();
            return execute;
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m31029a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, com.google.android.gms.internal.firebase-perf.zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            a.m19575a(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            a.m19573b(httpRequest.getRequestLine().getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            a.m19567f(zzaaVar.m31840c());
            a.m19572c(execute.getStatusLine().getStatusCode());
            Long a3 = C10077h.m13453a((HttpMessage) execute);
            if (a3 != null) {
                a.m19574b(a3.longValue());
            }
            String a4 = C10077h.m13452a(execute);
            if (a4 != null) {
                a.m19570c(a4);
            }
            a.m19561v();
            return execute;
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m31028a(HttpClient httpClient, HttpUriRequest httpUriRequest, com.google.android.gms.internal.firebase-perf.zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            a.m19575a(httpUriRequest.getURI().toString());
            a.m19573b(httpUriRequest.getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            HttpResponse execute = httpClient.execute(httpUriRequest);
            a.m19567f(zzaaVar.m31840c());
            a.m19572c(execute.getStatusLine().getStatusCode());
            Long a3 = C10077h.m13453a((HttpMessage) execute);
            if (a3 != null) {
                a.m19574b(a3.longValue());
            }
            String a4 = C10077h.m13452a(execute);
            if (a4 != null) {
                a.m19570c(a4);
            }
            a.m19561v();
            return execute;
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m31025a(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, com.google.android.gms.internal.firebase-perf.zzaa zzaaVar, C7928t5 t5Var) throws IOException {
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            a.m19575a(httpUriRequest.getURI().toString());
            a.m19573b(httpUriRequest.getMethod());
            Long a2 = C10077h.m13453a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m19578a(a2.longValue());
            }
            zzaaVar.m31843a();
            a.m19571c(zzaaVar.m31841b());
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            a.m19567f(zzaaVar.m31840c());
            a.m19572c(execute.getStatusLine().getStatusCode());
            Long a3 = C10077h.m13453a((HttpMessage) execute);
            if (a3 != null) {
                a.m19574b(a3.longValue());
            }
            String a4 = C10077h.m13452a(execute);
            if (a4 != null) {
                a.m19570c(a4);
            }
            a.m19561v();
            return execute;
        } catch (IOException e) {
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        return (T) m31031a(httpClient, httpHost, httpRequest, responseHandler, new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) m31030a(httpClient, httpHost, httpRequest, responseHandler, httpContext, new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) throws IOException {
        return (T) m31027a(httpClient, httpUriRequest, responseHandler, new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) m31026a(httpClient, httpUriRequest, responseHandler, httpContext, new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        return m31032a(httpClient, httpHost, httpRequest, (com.google.android.gms.internal.firebase-perf.zzaa) new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        return m31029a(httpClient, httpHost, httpRequest, httpContext, (com.google.android.gms.internal.firebase-perf.zzaa) new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        return m31028a(httpClient, httpUriRequest, new zzaa(), C7928t5.m18867c());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        return m31025a(httpClient, httpUriRequest, httpContext, (com.google.android.gms.internal.firebase-perf.zzaa) new zzaa(), C7928t5.m18867c());
    }
}
