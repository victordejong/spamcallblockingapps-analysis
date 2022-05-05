package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p053b.C1482u;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.b.a.ac */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ac.class */
final class C1387ac extends AbstractC1378ae<Number> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Number mo6175a(C1495a aVar) {
        EnumC1497c f = aVar.mo6236f();
        int i = C1413bb.f5503a[f.ordinal()];
        if (i == 1 || i == 3) {
            return new C1482u(aVar.mo6234h());
        }
        if (i == 4) {
            aVar.mo6232j();
            return null;
        }
        throw new C1374aa("Expecting number, got: ".concat(String.valueOf(f)));
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6174a(C1498d dVar, Number number) {
        dVar.mo6209a(number);
    }
}
