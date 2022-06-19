package p046g.p047g.p048d;

import com.hiya.api.zipkin.interceptor.HeadersInfo;
import g.g.d.l.b;
import i.a.a.f.k;
import p067i.p068a.p069a.p075f.AbstractC2054x;
import p067i.p068a.p076b.C2058d;
/* renamed from: g.g.d.f */
/* loaded from: classes2-dex2jar.jar:g/g/d/f.class */
public final class C1944f {
    /* renamed from: c */
    private final AbstractC1943e m572c(AbstractC2054x abstractC2054x, String str, AbstractC1943e abstractC1943e, boolean z) {
        g gVar;
        if (z) {
            k m320a = abstractC2054x.m296a(str).m319b().m320a();
            kotlin.w.c.k.c(m320a, "tracer.spanBuilder(name).setNoParent().startSpan()");
            gVar = new g(m320a);
        } else if (abstractC1943e != null) {
            k m320a2 = abstractC2054x.m296a(str).m318c(C2058d.m291c().m288d(abstractC1943e.m585e())).m320a();
            kotlin.w.c.k.c(m320a2, "tracer.spanBuilder(name)…            ).startSpan()");
            gVar = new g(m320a2);
        } else {
            k m320a3 = abstractC2054x.m296a(str).m320a();
            kotlin.w.c.k.c(m320a3, "tracer.spanBuilder(name).startSpan()");
            gVar = new g(m320a3);
        }
        return gVar;
    }

    /* renamed from: d */
    static /* synthetic */ AbstractC1943e m571d(C1944f c1944f, AbstractC2054x abstractC2054x, String str, AbstractC1943e abstractC1943e, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            abstractC1943e = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return c1944f.m572c(abstractC2054x, str, abstractC1943e, z);
    }

    /* renamed from: a */
    public final AbstractC1941a m574a(AbstractC2054x abstractC2054x, boolean z, String str, HeadersInfo headersInfo) {
        kotlin.w.c.k.g(str, "name");
        kotlin.w.c.k.g(headersInfo, "headersInfo");
        return (abstractC2054x == null || !z) ? new b(new b(), headersInfo) : new b(m571d(this, abstractC2054x, str, null, true, 4, null), headersInfo);
    }

    /* renamed from: b */
    public final AbstractC1943e m573b(AbstractC2054x abstractC2054x, boolean z, String str, AbstractC1943e abstractC1943e) {
        kotlin.w.c.k.g(str, "name");
        return (abstractC2054x == null || !z) ? new b() : m571d(this, abstractC2054x, str, abstractC1943e, false, 8, null);
    }
}
