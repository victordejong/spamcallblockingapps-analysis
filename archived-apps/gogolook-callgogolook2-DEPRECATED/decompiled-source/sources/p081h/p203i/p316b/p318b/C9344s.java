package p081h.p203i.p316b.p318b;

import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.s */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/s.class */
public class C9344s<E> extends AbstractC9323i<E> {

    /* renamed from: e */
    public static final AbstractC9323i<Object> f21372e = new C9344s(new Object[0], 0);

    /* renamed from: c */
    public final transient Object[] f21373c;

    /* renamed from: d */
    public final transient int f21374d;

    public C9344s(Object[] objArr, int i) {
        this.f21373c = objArr;
        this.f21374d = i;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9323i, p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: a */
    public int mo15372a(Object[] objArr, int i) {
        System.arraycopy(this.f21373c, 0, objArr, i, this.f21374d);
        return i + this.f21374d;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: b */
    public Object[] mo15380b() {
        return this.f21373c;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: c */
    public int mo15379c() {
        return this.f21374d;
    }

    @Override // java.util.List
    public E get(int i) {
        C9301k.m15481a(i, this.f21374d);
        return (E) this.f21373c[i];
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: q */
    public int mo15378q() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f21374d;
    }
}
