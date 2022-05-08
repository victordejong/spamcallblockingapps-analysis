package p081h.p203i.p316b.p318b;

import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.x */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/x.class */
public final class C9356x<E> extends AbstractC9331k<E> {

    /* renamed from: c */
    public final transient E f21399c;

    /* renamed from: d */
    public transient int f21400d;

    public C9356x(E e) {
        C9301k.m15478a(e);
        this.f21399c = e;
    }

    public C9356x(E e, int i) {
        this.f21399c = e;
        this.f21400d = i;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: a */
    public int mo15372a(Object[] objArr, int i) {
        objArr[i] = this.f21399c;
        return i + 1;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f21399c.equals(obj);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f21400d;
        int i2 = i;
        if (i == 0) {
            i2 = this.f21399c.hashCode();
            this.f21400d = i2;
        }
        return i2;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public AbstractC9311a0<E> iterator() {
        return C9334m.m15408a(this.f21399c);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k
    /* renamed from: s */
    public AbstractC9323i<E> mo15371s() {
        return AbstractC9323i.m15426of((Object) this.f21399c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k
    /* renamed from: t */
    public boolean mo15370t() {
        return this.f21400d != 0;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.f21399c.toString() + ']';
    }
}
