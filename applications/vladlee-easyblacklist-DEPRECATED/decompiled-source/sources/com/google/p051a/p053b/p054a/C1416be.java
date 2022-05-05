package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.b.a.be */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/be.class */
final class C1416be extends AbstractC1378ae<Number> {
    /* renamed from: b */
    private static Number m6340b(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        try {
            return Short.valueOf((short) aVar.mo6229m());
        } catch (NumberFormatException e) {
            throw new C1374aa(e);
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Number mo6175a(C1495a aVar) {
        return m6340b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6174a(C1498d dVar, Number number) {
        dVar.mo6209a(number);
    }
}
