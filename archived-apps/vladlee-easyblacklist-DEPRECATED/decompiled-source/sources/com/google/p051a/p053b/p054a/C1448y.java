package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* renamed from: com.google.a.b.a.y */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/y.class */
final class C1448y extends AbstractC1378ae<AtomicIntegerArray> {
    /* renamed from: b */
    private static AtomicIntegerArray m6311b(C1495a aVar) {
        ArrayList arrayList = new ArrayList();
        aVar.mo6250a();
        while (aVar.mo6237e()) {
            try {
                arrayList.add(Integer.valueOf(aVar.mo6229m()));
            } catch (NumberFormatException e) {
                throw new C1374aa(e);
            }
        }
        aVar.mo6245b();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i = 0; i < size; i++) {
            atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
        }
        return atomicIntegerArray;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ AtomicIntegerArray mo6175a(C1495a aVar) {
        return m6311b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, AtomicIntegerArray atomicIntegerArray) {
        AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
        dVar.mo6206b();
        int length = atomicIntegerArray2.length();
        for (int i = 0; i < length; i++) {
            dVar.mo6211a(atomicIntegerArray2.get(i));
        }
        dVar.mo6202c();
    }
}
