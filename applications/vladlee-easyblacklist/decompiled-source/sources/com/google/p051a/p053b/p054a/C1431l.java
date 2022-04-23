package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p053b.C1483v;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.ArrayList;
/* renamed from: com.google.a.b.a.l */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/l.class */
public final class C1431l extends AbstractC1378ae<Object> {

    /* renamed from: a */
    public static final AbstractC1380ag f5527a = new C1432m();

    /* renamed from: b */
    private final C1507k f5528b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1431l(C1507k kVar) {
        this.f5528b = kVar;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final Object mo6175a(C1495a aVar) {
        switch (C1433n.f5529a[aVar.mo6236f().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.mo6250a();
                while (aVar.mo6237e()) {
                    arrayList.add(mo6175a(aVar));
                }
                aVar.mo6245b();
                return arrayList;
            case 2:
                C1483v vVar = new C1483v();
                aVar.mo6240c();
                while (aVar.mo6237e()) {
                    vVar.put(aVar.mo6235g(), mo6175a(aVar));
                }
                aVar.mo6238d();
                return vVar;
            case 3:
                return aVar.mo6234h();
            case 4:
                return Double.valueOf(aVar.mo6231k());
            case 5:
                return Boolean.valueOf(aVar.mo6233i());
            case 6:
                aVar.mo6232j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final void mo6174a(C1498d dVar, Object obj) {
        if (obj == null) {
            dVar.mo6195f();
            return;
        }
        AbstractC1378ae a = this.f5528b.m6179a((Class) obj.getClass());
        if (a instanceof C1431l) {
            dVar.mo6199d();
            dVar.mo6196e();
            return;
        }
        a.mo6174a(dVar, obj);
    }
}
