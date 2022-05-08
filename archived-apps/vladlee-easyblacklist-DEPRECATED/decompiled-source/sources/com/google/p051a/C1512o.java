package com.google.p051a;

import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.a.o */
/* loaded from: classes-dex2jar.jar:com/google/a/o.class */
final class C1512o extends AbstractC1378ae<AtomicLong> {

    /* renamed from: a */
    final /* synthetic */ AbstractC1378ae f5773a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1512o(AbstractC1378ae aeVar) {
        this.f5773a = aeVar;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ AtomicLong mo6175a(C1495a aVar) {
        return new AtomicLong(((Number) this.f5773a.mo6175a(aVar)).longValue());
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, AtomicLong atomicLong) {
        this.f5773a.mo6174a(dVar, Long.valueOf(atomicLong.get()));
    }
}
