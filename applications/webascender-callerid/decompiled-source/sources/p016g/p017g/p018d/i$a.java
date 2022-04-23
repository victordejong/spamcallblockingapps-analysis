package p016g.p017g.p018d;

import com.hiya.api.zipkin.interceptor.HeadersInfo;
import com.hiya.api.zipkin.interceptor.TracingEnableState;
import com.hiya.api.zipkin.reporter.ZipkinCustomHiyaSender;
import g.g.d.m.a.b;
import kotlin.w.c.g;
import kotlin.w.c.k;
import p016g.p017g.p018d.p021m.p022a.C0283c;
/* renamed from: g.g.d.i$a */
/* loaded from: classes2-dex2jar.jar:g/g/d/i$a.class */
public final class i$a {
    private i$a() {
    }

    public /* synthetic */ i$a(g gVar) {
        this();
    }

    /* renamed from: a */
    public final AbstractC0277h m565a(String str, HeadersInfo headersInfo, ZipkinCustomHiyaSender zipkinCustomHiyaSender, b bVar, TracingEnableState tracingEnableState, C0283c cVar, C0276f fVar) {
        AbstractC0277h hVar;
        synchronized (this) {
            k.g(str, "serviceName");
            k.g(headersInfo, "headersInfo");
            k.g(bVar, "randomIdGenerator");
            k.g(tracingEnableState, "tracingEnableState");
            k.g(cVar, "tracerProvider");
            k.g(fVar, "spanFactory");
            AbstractC0277h f = i.f();
            if (f != null) {
                hVar = f;
            } else {
                AbstractC0277h iVar = new i(str, headersInfo, zipkinCustomHiyaSender, bVar, tracingEnableState, cVar, fVar, (g) null);
                i.g(iVar);
                hVar = iVar;
            }
        }
        return hVar;
    }
}
