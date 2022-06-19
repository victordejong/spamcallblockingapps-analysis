package p046g.p047g.p048d;

import com.hiya.api.zipkin.interceptor.HeadersInfo;
import com.hiya.api.zipkin.interceptor.TracingEnableState;
import com.hiya.api.zipkin.reporter.ZipkinCustomHiyaSender;
import g.g.d.m.a.b;
import kotlin.w.c.g;
import kotlin.w.c.k;
import p046g.p047g.p048d.p051m.p052a.C1951c;
/* renamed from: g.g.d.i$a */
/* loaded from: classes2-dex2jar.jar:g/g/d/i$a.class */
public final class i$a {
    private i$a() {
    }

    public /* synthetic */ i$a(g gVar) {
        this();
    }

    /* renamed from: a */
    public final AbstractC1945h m565a(String str, HeadersInfo headersInfo, ZipkinCustomHiyaSender zipkinCustomHiyaSender, b bVar, TracingEnableState tracingEnableState, C1951c c1951c, C1944f c1944f) {
        i iVar;
        synchronized (this) {
            k.g(str, "serviceName");
            k.g(headersInfo, "headersInfo");
            k.g(bVar, "randomIdGenerator");
            k.g(tracingEnableState, "tracingEnableState");
            k.g(c1951c, "tracerProvider");
            k.g(c1944f, "spanFactory");
            i f = i.f();
            if (f != null) {
                iVar = f;
            } else {
                i iVar2 = new i(str, headersInfo, zipkinCustomHiyaSender, bVar, tracingEnableState, c1951c, c1944f, (g) null);
                i.g(iVar2);
                iVar = iVar2;
            }
        }
        return iVar;
    }
}
