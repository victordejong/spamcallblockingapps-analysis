package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1517t;
import com.google.p051a.C1515r;
import com.google.p051a.C1519v;
import com.google.p051a.C1520w;
import com.google.p051a.C1522y;
import com.google.p051a.p053b.C1482u;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.a.b.a.at */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/at.class */
final class C1404at extends AbstractC1378ae<AbstractC1517t> {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo6174a(C1498d dVar, AbstractC1517t tVar) {
        if (tVar == null || (tVar instanceof C1519v)) {
            dVar.mo6195f();
        } else if (tVar instanceof C1522y) {
            C1522y g = tVar.m6170g();
            if (g.m6157i()) {
                dVar.mo6209a(g.mo6167a());
            } else if (g.m6158h()) {
                dVar.mo6207a(g.mo6159f());
            } else {
                dVar.mo6204b(g.mo6164b());
            }
        } else {
            boolean z = tVar instanceof C1515r;
            if (z) {
                dVar.mo6206b();
                if (z) {
                    Iterator<AbstractC1517t> it = ((C1515r) tVar).iterator();
                    while (it.hasNext()) {
                        mo6174a(dVar, it.next());
                    }
                    dVar.mo6202c();
                    return;
                }
                throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(tVar)));
            }
            boolean z2 = tVar instanceof C1520w;
            if (z2) {
                dVar.mo6199d();
                if (z2) {
                    for (Map.Entry<String, AbstractC1517t> entry : ((C1520w) tVar).m6168h()) {
                        dVar.mo6208a(entry.getKey());
                        mo6174a(dVar, entry.getValue());
                    }
                    dVar.mo6196e();
                    return;
                }
                throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(tVar)));
            }
            throw new IllegalArgumentException("Couldn't write " + tVar.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public AbstractC1517t mo6175a(C1495a aVar) {
        switch (C1413bb.f5503a[aVar.mo6236f().ordinal()]) {
            case 1:
                return new C1522y(new C1482u(aVar.mo6234h()));
            case 2:
                return new C1522y(Boolean.valueOf(aVar.mo6233i()));
            case 3:
                return new C1522y(aVar.mo6234h());
            case 4:
                aVar.mo6232j();
                return C1519v.f5776a;
            case 5:
                C1515r rVar = new C1515r();
                aVar.mo6250a();
                while (aVar.mo6237e()) {
                    rVar.m6172a(mo6175a(aVar));
                }
                aVar.mo6245b();
                return rVar;
            case 6:
                C1520w wVar = new C1520w();
                aVar.mo6240c();
                while (aVar.mo6237e()) {
                    wVar.m6169a(aVar.mo6235g(), mo6175a(aVar));
                }
                aVar.mo6238d();
                return wVar;
            default:
                throw new IllegalArgumentException();
        }
    }
}
