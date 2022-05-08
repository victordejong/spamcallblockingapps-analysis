package p010g.p011g.p012d;

import g.g.a.f.a.a;
import g.g.a.f.a.c;
import g.g.a.f.b.d;
import kotlin.w.c.g;
import kotlin.w.c.k;
import p010g.p011g.p012d.p015m.p016a.C0228b;
/* renamed from: g.g.d.i$a */
/* loaded from: classes2-dex2jar.jar:g/g/d/i$a.class */
public final class i$a {
    private i$a() {
    }

    public /* synthetic */ i$a(g gVar) {
        this();
    }

    /* renamed from: a */
    public final AbstractC0223h m652a(String str, a aVar, d dVar, g.g.d.m.a.a aVar2, c cVar, C0228b bVar, C0222f fVar) {
        AbstractC0223h hVar;
        synchronized (this) {
            k.g(str, "serviceName");
            k.g(aVar, "headersInfo");
            k.g(aVar2, "randomIdGenerator");
            k.g(cVar, "tracingEnableState");
            k.g(bVar, "tracerProvider");
            k.g(fVar, "spanFactory");
            AbstractC0223h e = i.e();
            if (e != null) {
                hVar = e;
            } else {
                hVar = new i(str, aVar, dVar, aVar2, cVar, bVar, fVar, (g) null);
                i.f(hVar);
            }
        }
        return hVar;
    }
}
