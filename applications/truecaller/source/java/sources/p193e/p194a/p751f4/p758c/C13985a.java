package p193e.p194a.p751f4.p758c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1410z4.AbstractC21881d;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.l;
import u3.f;
import u3.p0.g.e;
import u3.u;
/* renamed from: e.a.f4.c.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/c/a.class */
public final class C13985a implements u.b {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC19463a0>> f40432a;

    /* renamed from: b */
    public final AbstractC19222c f40433b;

    /* renamed from: c */
    public final a<AbstractC21881d> f40434c;

    @Inject
    public C13985a(a<AbstractC19854f<AbstractC19463a0>> aVar, AbstractC19222c abstractC19222c, a<AbstractC21881d> aVar2) {
        l.e(aVar, "eventsTracker");
        l.e(abstractC19222c, "clock");
        l.e(aVar2, "generalSettings");
        this.f40432a = aVar;
        this.f40433b = abstractC19222c;
        this.f40434c = aVar2;
    }

    /* renamed from: a */
    public u m20905a(f fVar) {
        boolean z;
        u uVar;
        l.e(fVar, "call");
        String str = ((e) fVar).q.b.e.toString();
        String string = ((AbstractC21881d) this.f40434c.get()).getString("httpAnalyitcsHosts", "");
        l.d(string, "generalSettings\n        …HTTP_ANALYTICS_HOSTS, \"\")");
        List U = v.U(string, new String[]{","}, false, 0, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : U) {
            if (!r.p((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                } else if (r.y(str, (String) it.next(), false, 2)) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            Object obj2 = this.f40432a.get();
            l.d(obj2, "eventsTracker.get()");
            uVar = new C13987c((AbstractC19854f) obj2, this.f40433b, str);
        } else {
            uVar = C13988d.f40443b;
        }
        return uVar;
    }
}
