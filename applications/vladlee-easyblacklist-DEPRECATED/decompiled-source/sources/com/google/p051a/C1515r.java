package com.google.p051a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.a.r */
/* loaded from: classes-dex2jar.jar:com/google/a/r.class */
public final class C1515r extends AbstractC1517t implements Iterable<AbstractC1517t> {

    /* renamed from: a */
    private final List<AbstractC1517t> f5775a = new ArrayList();

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: a */
    public final Number mo6167a() {
        if (this.f5775a.size() == 1) {
            return this.f5775a.get(0).mo6167a();
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public final void m6172a(AbstractC1517t tVar) {
        AbstractC1517t tVar2 = tVar;
        if (tVar == null) {
            tVar2 = C1519v.f5776a;
        }
        this.f5775a.add(tVar2);
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: b */
    public final String mo6164b() {
        if (this.f5775a.size() == 1) {
            return this.f5775a.get(0).mo6164b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: c */
    public final double mo6162c() {
        if (this.f5775a.size() == 1) {
            return this.f5775a.get(0).mo6162c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: d */
    public final long mo6161d() {
        if (this.f5775a.size() == 1) {
            return this.f5775a.get(0).mo6161d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: e */
    public final int mo6160e() {
        if (this.f5775a.size() == 1) {
            return this.f5775a.get(0).mo6160e();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C1515r) && ((C1515r) obj).f5775a.equals(this.f5775a);
        }
        return true;
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: f */
    public final boolean mo6159f() {
        if (this.f5775a.size() == 1) {
            return this.f5775a.get(0).mo6159f();
        }
        throw new IllegalStateException();
    }

    public final int hashCode() {
        return this.f5775a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC1517t> iterator() {
        return this.f5775a.iterator();
    }
}
