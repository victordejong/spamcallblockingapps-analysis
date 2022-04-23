package androidx.p026b;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.b.d */
/* loaded from: classes-dex2jar.jar:androidx/b/d.class */
public final class C0532d extends AbstractC0536h<E, E> {

    /* renamed from: a */
    final /* synthetic */ C0531c f2473a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0532d(C0531c cVar) {
        this.f2473a = cVar;
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final int mo8926a() {
        return this.f2473a.f2470b;
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final int mo8922a(Object obj) {
        return this.f2473a.m8951a(obj);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final Object mo8924a(int i, int i2) {
        return this.f2473a.f2469a[i];
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final E mo8923a(int i, E e) {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final void mo8925a(int i) {
        this.f2473a.m8948b(i);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final void mo8921a(E e, E e2) {
        this.f2473a.add(e);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: b */
    protected final int mo8915b(Object obj) {
        return this.f2473a.m8951a(obj);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: b */
    protected final Map<E, E> mo8917b() {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: c */
    protected final void mo8914c() {
        this.f2473a.clear();
    }
}
