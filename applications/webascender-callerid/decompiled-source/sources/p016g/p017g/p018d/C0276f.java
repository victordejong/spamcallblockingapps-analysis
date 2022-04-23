package p016g.p017g.p018d;

import com.hiya.api.zipkin.interceptor.HeadersInfo;
import g.g.d.l.b;
import i.a.a.f.k;
import p037i.p038a.p039a.p045f.AbstractC0386x;
import p037i.p038a.p046b.C0390d;
/* renamed from: g.g.d.f */
/* loaded from: classes2-dex2jar.jar:g/g/d/f.class */
public final class C0276f {
    /* renamed from: c */
    private final AbstractC0275e m572c(AbstractC0386x xVar, String str, AbstractC0275e eVar, boolean z) {
        g gVar;
        if (z) {
            k a = xVar.m296a(str).m319b().m320a();
            kotlin.w.c.k.c(a, "tracer.spanBuilder(name).setNoParent().startSpan()");
            gVar = new g(a);
        } else if (eVar != null) {
            k a2 = xVar.m296a(str).m318c(C0390d.m291c().m288d(eVar.m585e())).m320a();
            kotlin.w.c.k.c(a2, "tracer.spanBuilder(name)…            ).startSpan()");
            gVar = new g(a2);
        } else {
            k a3 = xVar.m296a(str).m320a();
            kotlin.w.c.k.c(a3, "tracer.spanBuilder(name).startSpan()");
            gVar = new g(a3);
        }
        return gVar;
    }

    /* renamed from: d */
    static /* synthetic */ AbstractC0275e m571d(C0276f fVar, AbstractC0386x xVar, String str, AbstractC0275e eVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            eVar = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return fVar.m572c(xVar, str, eVar, z);
    }

    /* renamed from: a */
    public final AbstractC0273a m574a(AbstractC0386x xVar, boolean z, String str, HeadersInfo headersInfo) {
        kotlin.w.c.k.g(str, "name");
        kotlin.w.c.k.g(headersInfo, "headersInfo");
        return (xVar == null || !z) ? new b(new b(), headersInfo) : new b(m571d(this, xVar, str, null, true, 4, null), headersInfo);
    }

    /* renamed from: b */
    public final AbstractC0275e m573b(AbstractC0386x xVar, boolean z, String str, AbstractC0275e eVar) {
        kotlin.w.c.k.g(str, "name");
        return (xVar == null || !z) ? new b() : m571d(this, xVar, str, eVar, false, 8, null);
    }
}
