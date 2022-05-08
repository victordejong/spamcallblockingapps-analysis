package androidx.p026b;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.b.b */
/* loaded from: classes-dex2jar.jar:androidx/b/b.class */
public final class C0530b extends AbstractC0536h<K, V> {

    /* renamed from: a */
    final /* synthetic */ C0529a f2462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0530b(C0529a aVar) {
        this.f2462a = aVar;
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final int mo8926a() {
        return this.f2462a.f2511h;
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final int mo8922a(Object obj) {
        return this.f2462a.m8909a(obj);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final Object mo8924a(int i, int i2) {
        return this.f2462a.f2510g[(i << 1) + i2];
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final V mo8923a(int i, V v) {
        return this.f2462a.m8910a(i, (int) v);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final void mo8925a(int i) {
        this.f2462a.m8902d(i);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: a */
    protected final void mo8921a(K k, V v) {
        this.f2462a.put(k, v);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: b */
    protected final int mo8915b(Object obj) {
        return this.f2462a.m8904b(obj);
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: b */
    protected final Map<K, V> mo8917b() {
        return this.f2462a;
    }

    @Override // androidx.p026b.AbstractC0536h
    /* renamed from: c */
    protected final void mo8914c() {
        this.f2462a.clear();
    }
}
