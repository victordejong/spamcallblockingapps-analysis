package com.google.p051a.p053b;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1507k;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
/* renamed from: com.google.a.b.s */
/* loaded from: classes-dex2jar.jar:com/google/a/b/s.class */
final class C1480s extends AbstractC1378ae<T> {

    /* renamed from: a */
    final /* synthetic */ boolean f5666a;

    /* renamed from: b */
    final /* synthetic */ boolean f5667b;

    /* renamed from: c */
    final /* synthetic */ C1507k f5668c;

    /* renamed from: d */
    final /* synthetic */ C1493a f5669d;

    /* renamed from: e */
    final /* synthetic */ C1479r f5670e;

    /* renamed from: f */
    private AbstractC1378ae<T> f5671f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1480s(C1479r rVar, boolean z, boolean z2, C1507k kVar, C1493a aVar) {
        this.f5670e = rVar;
        this.f5666a = z;
        this.f5667b = z2;
        this.f5668c = kVar;
        this.f5669d = aVar;
    }

    /* renamed from: b */
    private AbstractC1378ae<T> m6268b() {
        AbstractC1378ae<T> aeVar = this.f5671f;
        if (aeVar != 0) {
            return aeVar;
        }
        AbstractC1378ae<T> a = this.f5668c.m6183a(this.f5670e, this.f5669d);
        this.f5671f = a;
        return a;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final T mo6175a(C1495a aVar) {
        if (!this.f5666a) {
            return m6268b().mo6175a(aVar);
        }
        aVar.mo6228n();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final void mo6174a(C1498d dVar, T t) {
        if (this.f5667b) {
            dVar.mo6195f();
        } else {
            m6268b().mo6174a(dVar, t);
        }
    }
}
