package p046g.p047g.p048d.p050k;

import com.hiya.api.zipkin.interceptor.HeadersInfo;
import com.hiya.api.zipkin.interceptor.TracingEnableState;
import com.hiya.api.zipkin.reporter.ZipkinCustomHiyaSender;
import g.g.d.i;
import g.g.d.m.a.b;
import kotlin.w.c.k;
import p046g.p047g.p048d.AbstractC1945h;
import p046g.p047g.p048d.C1944f;
import p046g.p047g.p048d.p051m.p052a.C1951c;
/* renamed from: g.g.d.k.b */
/* loaded from: classes2-dex2jar.jar:g/g/d/k/b.class */
public final class C1949b {

    /* renamed from: a */
    private final AbstractC1950i f5255a;

    public C1949b(AbstractC1950i abstractC1950i) {
        k.g(abstractC1950i, "tracingProvider");
        this.f5255a = abstractC1950i;
    }

    /* renamed from: a */
    public final AbstractC1948a m563a() {
        return this.f5255a.m557a();
    }

    /* renamed from: b */
    public final String m562b() {
        return this.f5255a.m553e();
    }

    /* renamed from: c */
    public final HeadersInfo m561c() {
        return this.f5255a.m555c();
    }

    /* renamed from: d */
    public final AbstractC1945h m560d(String str, ZipkinCustomHiyaSender zipkinCustomHiyaSender, HeadersInfo headersInfo, b bVar, TracingEnableState tracingEnableState, C1951c c1951c, C1944f c1944f) {
        k.g(str, "serviceName");
        k.g(headersInfo, "headersInfo");
        k.g(bVar, "randomIdGenerator");
        k.g(tracingEnableState, "tracingEnableState");
        k.g(c1951c, "tracerProvider");
        k.g(c1944f, "spanFactory");
        return i.g.m565a(str, headersInfo, zipkinCustomHiyaSender, bVar, tracingEnableState, c1951c, c1944f);
    }

    /* renamed from: e */
    public final String m559e() {
        return this.f5255a.m556b();
    }

    /* renamed from: f */
    public final TracingEnableState m558f() {
        return this.f5255a.m554d();
    }
}
