package com.google.p051a;

import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.af */
/* loaded from: classes-dex2jar.jar:com/google/a/af.class */
final class C1379af extends AbstractC1378ae<T> {

    /* renamed from: a */
    final /* synthetic */ AbstractC1378ae f5483a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1379af(AbstractC1378ae aeVar) {
        this.f5483a = aeVar;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final T mo6175a(C1495a aVar) {
        if (aVar.mo6236f() != EnumC1497c.NULL) {
            return this.f5483a.mo6175a(aVar);
        }
        aVar.mo6232j();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final void mo6174a(C1498d dVar, T t) {
        if (t == 0) {
            dVar.mo6195f();
        } else {
            this.f5483a.mo6174a(dVar, t);
        }
    }
}
