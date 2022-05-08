package p081h.p203i.p325c.p379z.p382d;

import com.google.android.gms.internal.firebase-perf.zzaa;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
/* renamed from: h.i.c.z.d.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/e.class */
public final class C10074e {

    /* renamed from: a */
    public final HttpURLConnection f22776a;

    /* renamed from: b */
    public final C7759a1 f22777b;

    /* renamed from: c */
    public long f22778c = -1;

    /* renamed from: d */
    public long f22779d = -1;

    /* renamed from: e */
    public final zzaa f22780e;

    public C10074e(HttpURLConnection httpURLConnection, zzaa zzaaVar, C7759a1 a1Var) {
        this.f22776a = httpURLConnection;
        this.f22777b = a1Var;
        this.f22780e = zzaaVar;
        this.f22777b.m19575a(this.f22776a.getURL().toString());
    }

    /* renamed from: A */
    public final String m13508A() throws IOException {
        m13504E();
        if (this.f22779d == -1) {
            this.f22779d = this.f22780e.m31840c();
            this.f22777b.m19568e(this.f22779d);
        }
        try {
            String responseMessage = this.f22776a.getResponseMessage();
            this.f22777b.m19572c(this.f22776a.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: B */
    public final URL m13507B() {
        return this.f22776a.getURL();
    }

    /* renamed from: C */
    public final boolean m13506C() {
        return this.f22776a.getUseCaches();
    }

    /* renamed from: D */
    public final boolean m13505D() {
        return this.f22776a.usingProxy();
    }

    /* renamed from: E */
    public final void m13504E() {
        if (this.f22778c == -1) {
            this.f22780e.m31843a();
            this.f22778c = this.f22780e.m31841b();
            this.f22777b.m19571c(this.f22778c);
        }
        String requestMethod = this.f22776a.getRequestMethod();
        if (requestMethod != null) {
            this.f22777b.m19573b(requestMethod);
        } else if (this.f22776a.getDoOutput()) {
            this.f22777b.m19573b("POST");
        } else {
            this.f22777b.m19573b("GET");
        }
    }

    /* renamed from: a */
    public final int m13499a(String str, int i) {
        m13504E();
        return this.f22776a.getHeaderFieldInt(str, i);
    }

    /* renamed from: a */
    public final long m13498a(String str, long j) {
        m13504E();
        return this.f22776a.getHeaderFieldDate(str, j);
    }

    /* renamed from: a */
    public final Object m13495a(Class[] clsArr) throws IOException {
        m13504E();
        this.f22777b.m19572c(this.f22776a.getResponseCode());
        try {
            Object content = this.f22776a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f22777b.m19570c(this.f22776a.getContentType());
                content = new C10070a((InputStream) content, this.f22777b, this.f22780e);
            } else {
                this.f22777b.m19570c(this.f22776a.getContentType());
                this.f22777b.m19574b(this.f22776a.getContentLength());
                this.f22777b.m19567f(this.f22780e.m31840c());
                this.f22777b.m19561v();
            }
            return content;
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: a */
    public final String m13502a(int i) {
        m13504E();
        return this.f22776a.getHeaderField(i);
    }

    /* renamed from: a */
    public final String m13500a(String str) {
        m13504E();
        return this.f22776a.getHeaderField(str);
    }

    /* renamed from: a */
    public final void m13503a() throws IOException {
        if (this.f22778c == -1) {
            this.f22780e.m31843a();
            this.f22778c = this.f22780e.m31841b();
            this.f22777b.m19571c(this.f22778c);
        }
        try {
            this.f22776a.connect();
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: a */
    public final void m13501a(long j) {
        this.f22776a.setFixedLengthStreamingMode(j);
    }

    /* renamed from: a */
    public final void m13497a(String str, String str2) {
        this.f22776a.addRequestProperty(str, str2);
    }

    /* renamed from: a */
    public final void m13496a(boolean z) {
        this.f22776a.setAllowUserInteraction(z);
    }

    /* renamed from: b */
    public final long m13490b(String str, long j) {
        m13504E();
        return this.f22776a.getHeaderFieldLong(str, j);
    }

    /* renamed from: b */
    public final String m13493b(int i) {
        m13504E();
        return this.f22776a.getHeaderFieldKey(i);
    }

    /* renamed from: b */
    public final String m13491b(String str) {
        return this.f22776a.getRequestProperty(str);
    }

    /* renamed from: b */
    public final void m13494b() {
        this.f22777b.m19567f(this.f22780e.m31840c());
        this.f22777b.m19561v();
        this.f22776a.disconnect();
    }

    /* renamed from: b */
    public final void m13492b(long j) {
        this.f22776a.setIfModifiedSince(j);
    }

    /* renamed from: b */
    public final void m13489b(String str, String str2) {
        this.f22776a.setRequestProperty(str, str2);
    }

    /* renamed from: b */
    public final void m13488b(boolean z) {
        this.f22776a.setDefaultUseCaches(z);
    }

    /* renamed from: c */
    public final void m13486c(int i) {
        this.f22776a.setChunkedStreamingMode(i);
    }

    /* renamed from: c */
    public final void m13485c(String str) throws ProtocolException {
        this.f22776a.setRequestMethod(str);
    }

    /* renamed from: c */
    public final void m13484c(boolean z) {
        this.f22776a.setDoInput(z);
    }

    /* renamed from: c */
    public final boolean m13487c() {
        return this.f22776a.getAllowUserInteraction();
    }

    /* renamed from: d */
    public final int m13483d() {
        return this.f22776a.getConnectTimeout();
    }

    /* renamed from: d */
    public final void m13482d(int i) {
        this.f22776a.setConnectTimeout(i);
    }

    /* renamed from: d */
    public final void m13481d(boolean z) {
        this.f22776a.setDoOutput(z);
    }

    /* renamed from: e */
    public final Object m13480e() throws IOException {
        m13504E();
        this.f22777b.m19572c(this.f22776a.getResponseCode());
        try {
            Object content = this.f22776a.getContent();
            if (content instanceof InputStream) {
                this.f22777b.m19570c(this.f22776a.getContentType());
                content = new C10070a((InputStream) content, this.f22777b, this.f22780e);
            } else {
                this.f22777b.m19570c(this.f22776a.getContentType());
                this.f22777b.m19574b(this.f22776a.getContentLength());
                this.f22777b.m19567f(this.f22780e.m31840c());
                this.f22777b.m19561v();
            }
            return content;
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: e */
    public final void m13479e(int i) {
        this.f22776a.setFixedLengthStreamingMode(i);
    }

    /* renamed from: e */
    public final void m13478e(boolean z) {
        this.f22776a.setInstanceFollowRedirects(z);
    }

    public final boolean equals(Object obj) {
        return this.f22776a.equals(obj);
    }

    /* renamed from: f */
    public final String m13477f() {
        m13504E();
        return this.f22776a.getContentEncoding();
    }

    /* renamed from: f */
    public final void m13476f(int i) {
        this.f22776a.setReadTimeout(i);
    }

    /* renamed from: f */
    public final void m13475f(boolean z) {
        this.f22776a.setUseCaches(z);
    }

    /* renamed from: g */
    public final int m13474g() {
        m13504E();
        return this.f22776a.getContentLength();
    }

    /* renamed from: h */
    public final long m13473h() {
        m13504E();
        return this.f22776a.getContentLengthLong();
    }

    public final int hashCode() {
        return this.f22776a.hashCode();
    }

    /* renamed from: i */
    public final String m13472i() {
        m13504E();
        return this.f22776a.getContentType();
    }

    /* renamed from: j */
    public final long m13471j() {
        m13504E();
        return this.f22776a.getDate();
    }

    /* renamed from: k */
    public final boolean m13470k() {
        return this.f22776a.getDefaultUseCaches();
    }

    /* renamed from: l */
    public final boolean m13469l() {
        return this.f22776a.getDoInput();
    }

    /* renamed from: m */
    public final boolean m13468m() {
        return this.f22776a.getDoOutput();
    }

    /* renamed from: n */
    public final InputStream m13467n() {
        m13504E();
        try {
            this.f22777b.m19572c(this.f22776a.getResponseCode());
        } catch (IOException e) {
        }
        InputStream errorStream = this.f22776a.getErrorStream();
        return errorStream != null ? new C10070a(errorStream, this.f22777b, this.f22780e) : errorStream;
    }

    /* renamed from: o */
    public final long m13466o() {
        m13504E();
        return this.f22776a.getExpiration();
    }

    /* renamed from: p */
    public final Map<String, List<String>> m13465p() {
        m13504E();
        return this.f22776a.getHeaderFields();
    }

    /* renamed from: q */
    public final long m13464q() {
        return this.f22776a.getIfModifiedSince();
    }

    /* renamed from: r */
    public final InputStream m13463r() throws IOException {
        m13504E();
        this.f22777b.m19572c(this.f22776a.getResponseCode());
        this.f22777b.m19570c(this.f22776a.getContentType());
        try {
            return new C10070a(this.f22776a.getInputStream(), this.f22777b, this.f22780e);
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: s */
    public final boolean m13462s() {
        return this.f22776a.getInstanceFollowRedirects();
    }

    /* renamed from: t */
    public final long m13461t() {
        m13504E();
        return this.f22776a.getLastModified();
    }

    public final String toString() {
        return this.f22776a.toString();
    }

    /* renamed from: u */
    public final OutputStream m13460u() throws IOException {
        try {
            return new C10071b(this.f22776a.getOutputStream(), this.f22777b, this.f22780e);
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: v */
    public final Permission m13459v() throws IOException {
        try {
            return this.f22776a.getPermission();
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }

    /* renamed from: w */
    public final int m13458w() {
        return this.f22776a.getReadTimeout();
    }

    /* renamed from: x */
    public final String m13457x() {
        return this.f22776a.getRequestMethod();
    }

    /* renamed from: y */
    public final Map<String, List<String>> m13456y() {
        return this.f22776a.getRequestProperties();
    }

    /* renamed from: z */
    public final int m13455z() throws IOException {
        m13504E();
        if (this.f22779d == -1) {
            this.f22779d = this.f22780e.m31840c();
            this.f22777b.m19568e(this.f22779d);
        }
        try {
            int responseCode = this.f22776a.getResponseCode();
            this.f22777b.m19572c(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.f22777b.m19567f(this.f22780e.m31840c());
            C10077h.m13454a(this.f22777b);
            throw e;
        }
    }
}
