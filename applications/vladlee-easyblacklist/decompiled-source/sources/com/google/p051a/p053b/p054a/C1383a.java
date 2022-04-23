package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.lang.reflect.Array;
import java.util.ArrayList;
/* renamed from: com.google.a.b.a.a */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/a.class */
public final class C1383a<E> extends AbstractC1378ae<Object> {

    /* renamed from: a */
    public static final AbstractC1380ag f5485a = new C1411b();

    /* renamed from: b */
    private final Class<E> f5486b;

    /* renamed from: c */
    private final AbstractC1378ae<E> f5487c;

    public C1383a(C1507k kVar, AbstractC1378ae<E> aeVar, Class<E> cls) {
        this.f5487c = new C1444v(kVar, aeVar, cls);
        this.f5486b = cls;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final Object mo6175a(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.mo6250a();
        while (aVar.mo6237e()) {
            arrayList.add(this.f5487c.mo6175a(aVar));
        }
        aVar.mo6245b();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f5486b, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final void mo6174a(C1498d dVar, Object obj) {
        if (obj == null) {
            dVar.mo6195f();
            return;
        }
        dVar.mo6206b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f5487c.mo6174a(dVar, Array.get(obj, i));
        }
        dVar.mo6202c();
    }
}
