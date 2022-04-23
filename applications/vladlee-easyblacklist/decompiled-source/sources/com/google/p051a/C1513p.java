package com.google.p051a;

import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;
/* renamed from: com.google.a.p */
/* loaded from: classes-dex2jar.jar:com/google/a/p.class */
final class C1513p extends AbstractC1378ae<AtomicLongArray> {

    /* renamed from: a */
    final /* synthetic */ AbstractC1378ae f5774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1513p(AbstractC1378ae aeVar) {
        this.f5774a = aeVar;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ AtomicLongArray mo6175a(C1495a aVar) {
        ArrayList arrayList = new ArrayList();
        aVar.mo6250a();
        while (aVar.mo6237e()) {
            arrayList.add(Long.valueOf(((Number) this.f5774a.mo6175a(aVar)).longValue()));
        }
        aVar.mo6245b();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i = 0; i < size; i++) {
            atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
        }
        return atomicLongArray;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, AtomicLongArray atomicLongArray) {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        dVar.mo6206b();
        int length = atomicLongArray2.length();
        for (int i = 0; i < length; i++) {
            this.f5774a.mo6174a(dVar, Long.valueOf(atomicLongArray2.get(i)));
        }
        dVar.mo6202c();
    }
}
