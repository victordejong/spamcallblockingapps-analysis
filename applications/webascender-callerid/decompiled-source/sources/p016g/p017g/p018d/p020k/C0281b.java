package p016g.p017g.p018d.p020k;

import com.hiya.api.zipkin.interceptor.HeadersInfo;
import com.hiya.api.zipkin.interceptor.TracingEnableState;
import com.hiya.api.zipkin.reporter.ZipkinCustomHiyaSender;
import g.g.d.i;
import g.g.d.m.a.b;
import kotlin.w.c.k;
import p016g.p017g.p018d.AbstractC0277h;
import p016g.p017g.p018d.C0276f;
import p016g.p017g.p018d.p021m.p022a.C0283c;
/* renamed from: g.g.d.k.b */
/* loaded from: classes2-dex2jar.jar:g/g/d/k/b.class */
public final class C0281b {

    /* renamed from: a */
    private final AbstractC0282i f576a;

    public C0281b(AbstractC0282i iVar) {
        k.g(iVar, "tracingProvider");
        this.f576a = iVar;
    }

    /* renamed from: a */
    public final AbstractC0280a m563a() {
        return this.f576a.m557a();
    }

    /* renamed from: b */
    public final String m562b() {
        return this.f576a.m553e();
    }

    /* renamed from: c */
    public final HeadersInfo m561c() {
        return this.f576a.m555c();
    }

    /* renamed from: d */
    public final AbstractC0277h m560d(String str, ZipkinCustomHiyaSender zipkinCustomHiyaSender, HeadersInfo headersInfo, b bVar, TracingEnableState tracingEnableState, C0283c cVar, C0276f fVar) {
        k.g(str, "serviceName");
        k.g(headersInfo, "headersInfo");
        k.g(bVar, "randomIdGenerator");
        k.g(tracingEnableState, "tracingEnableState");
        k.g(cVar, "tracerProvider");
        k.g(fVar, "spanFactory");
        return i.g.m565a(str, headersInfo, zipkinCustomHiyaSender, bVar, tracingEnableState, cVar, fVar);
    }

    /* renamed from: e */
    public final String m559e() {
        return this.f576a.m556b();
    }

    /* renamed from: f */
    public final TracingEnableState m558f() {
        return this.f576a.m554d();
    }
}
