package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.a.b.a.bg */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/bg.class */
final class C1418bg extends AbstractC1378ae<AtomicInteger> {
    /* renamed from: b */
    private static AtomicInteger m6338b(C1495a aVar) {
        try {
            return new AtomicInteger(aVar.mo6229m());
        } catch (NumberFormatException e) {
            throw new C1374aa(e);
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ AtomicInteger mo6175a(C1495a aVar) {
        return m6338b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, AtomicInteger atomicInteger) {
        dVar.mo6211a(atomicInteger.get());
    }
}
