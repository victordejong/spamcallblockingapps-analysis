package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.b.a.bd */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/bd.class */
final class C1415bd extends AbstractC1378ae<Number> {
    /* renamed from: b */
    private static Number m6341b(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        try {
            return Byte.valueOf((byte) aVar.mo6229m());
        } catch (NumberFormatException e) {
            throw new C1374aa(e);
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Number mo6175a(C1495a aVar) {
        return m6341b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6174a(C1498d dVar, Number number) {
        dVar.mo6209a(number);
    }
}
