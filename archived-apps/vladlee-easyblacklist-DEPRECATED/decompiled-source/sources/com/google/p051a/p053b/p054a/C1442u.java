package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.AbstractC1516s;
import com.google.p051a.AbstractC1523z;
import com.google.p051a.C1507k;
import com.google.p051a.C1519v;
import com.google.p051a.p053b.C1451ab;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
/* renamed from: com.google.a.b.a.u */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/u.class */
public final class C1442u<T> extends AbstractC1378ae<T> {

    /* renamed from: a */
    final C1507k f5551a;

    /* renamed from: b */
    private final AbstractC1523z<T> f5552b;

    /* renamed from: c */
    private final AbstractC1516s<T> f5553c;

    /* renamed from: d */
    private final C1493a<T> f5554d;

    /* renamed from: g */
    private AbstractC1378ae<T> f5557g;

    /* renamed from: f */
    private final C1442u<T>.C1443a f5556f = new C1443a(this, (byte) 0);

    /* renamed from: e */
    private final AbstractC1380ag f5555e = null;

    /* renamed from: com.google.a.b.a.u$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/a/u$a.class */
    private final class C1443a {
        private C1443a() {
        }

        /* synthetic */ C1443a(C1442u uVar, byte b) {
            this();
        }
    }

    public C1442u(AbstractC1523z<T> zVar, AbstractC1516s<T> sVar, C1507k kVar, C1493a<T> aVar) {
        this.f5552b = zVar;
        this.f5553c = sVar;
        this.f5551a = kVar;
        this.f5554d = aVar;
    }

    /* renamed from: b */
    private AbstractC1378ae<T> m6315b() {
        AbstractC1378ae<T> aeVar = this.f5557g;
        if (aeVar != null) {
            return aeVar;
        }
        AbstractC1378ae<T> a = this.f5551a.m6183a(this.f5555e, this.f5554d);
        this.f5557g = a;
        return a;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final T mo6175a(C1495a aVar) {
        if (this.f5553c == null) {
            return m6315b().mo6175a(aVar);
        }
        if (C1451ab.m6306a(aVar) instanceof C1519v) {
            return null;
        }
        return this.f5553c.m6171a();
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final void mo6174a(C1498d dVar, T t) {
        AbstractC1523z<T> zVar = this.f5552b;
        if (zVar == null) {
            m6315b().mo6174a(dVar, t);
        } else if (t == null) {
            dVar.mo6195f();
        } else {
            C1451ab.m6305a(zVar.m6155a(), dVar);
        }
    }
}
