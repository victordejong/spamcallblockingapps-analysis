package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.math.BigInteger;
/* renamed from: com.google.a.b.a.ag */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ag.class */
final class C1391ag extends AbstractC1378ae<BigInteger> {
    /* renamed from: b */
    private static BigInteger m6346b(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        try {
            return new BigInteger(aVar.mo6234h());
        } catch (NumberFormatException e) {
            throw new C1374aa(e);
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ BigInteger mo6175a(C1495a aVar) {
        return m6346b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6174a(C1498d dVar, BigInteger bigInteger) {
        dVar.mo6209a(bigInteger);
    }
}
