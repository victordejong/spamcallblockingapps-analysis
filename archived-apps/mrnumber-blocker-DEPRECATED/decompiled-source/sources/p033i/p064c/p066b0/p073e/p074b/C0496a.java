package p033i.p064c.p066b0.p073e.p074b;

import i.c.b0.j.b;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p033i.p064c.p066b0.p070b.AbstractC0455d0;
import p033i.p064c.p066b0.p070b.C0472u;
import p033i.p064c.p066b0.p072d.AbstractC0479a;
import p033i.p064c.p066b0.p072d.AbstractC0480b;
import p033i.p064c.p066b0.p072d.AbstractC0481c;
import p033i.p064c.p066b0.p072d.AbstractC0483e;
import p033i.p064c.p066b0.p072d.AbstractC0485g;
import p033i.p064c.p066b0.p072d.AbstractC0486h;
import p033i.p064c.p066b0.p072d.AbstractC0487i;
import p033i.p064c.p066b0.p072d.AbstractC0488j;
import p033i.p064c.p066b0.p072d.AbstractC0489k;
import p033i.p064c.p066b0.p072d.AbstractC0490l;
import p033i.p064c.p066b0.p072d.AbstractC0491m;
import p033i.p064c.p066b0.p072d.AbstractC0492n;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
import p033i.p064c.p066b0.p072d.AbstractC0494p;
import p033i.p064c.p066b0.p072d.AbstractC0495q;
/* renamed from: i.c.b0.e.b.a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a.class */
public final class C0496a {

    /* renamed from: a */
    static final AbstractC0493o<Object, Object> f1067a = new t();

    /* renamed from: b */
    public static final Runnable f1068b = new RunnableC0497p();

    /* renamed from: c */
    public static final AbstractC0479a f1069c = new n();

    /* renamed from: d */
    static final AbstractC0485g<Object> f1070d = new o();

    /* renamed from: e */
    public static final AbstractC0485g<Throwable> f1071e = new b0();

    /* renamed from: f */
    static final AbstractC0494p<Object> f1072f = new g0();

    /* renamed from: g */
    static final AbstractC0494p<Object> f1073g = new r();

    /* renamed from: h */
    static final AbstractC0495q<Object> f1074h = new a0();

    /* renamed from: i.c.b0.e.b.a$p */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a$p.class */
    static final class RunnableC0497p implements Runnable {
        RunnableC0497p() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* renamed from: i.c.b0.e.b.a$w */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a$w.class */
    enum EnumC0498w implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: A */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> AbstractC0493o<Object[], R> m53A(AbstractC0491m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        return new h(mVar);
    }

    /* renamed from: B */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> AbstractC0493o<Object[], R> m52B(AbstractC0492n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        return new i(nVar);
    }

    /* renamed from: C */
    public static <T, K> AbstractC0480b<Map<K, T>, T> m51C(AbstractC0493o<? super T, ? extends K> oVar) {
        return new d0(oVar);
    }

    /* renamed from: D */
    public static <T, K, V> AbstractC0480b<Map<K, V>, T> m50D(AbstractC0493o<? super T, ? extends K> oVar, AbstractC0493o<? super T, ? extends V> oVar2) {
        return new e0(oVar2, oVar);
    }

    /* renamed from: E */
    public static <T, K, V> AbstractC0480b<Map<K, Collection<V>>, T> m49E(AbstractC0493o<? super T, ? extends K> oVar, AbstractC0493o<? super T, ? extends V> oVar2, AbstractC0493o<? super K, ? extends Collection<? super V>> oVar3) {
        return new f0(oVar3, oVar2, oVar);
    }

    /* renamed from: a */
    public static <T> AbstractC0485g<T> m48a(AbstractC0479a aVar) {
        return new a(aVar);
    }

    /* renamed from: b */
    public static <T> AbstractC0494p<T> m47b() {
        return (AbstractC0494p<T>) f1073g;
    }

    /* renamed from: c */
    public static <T> AbstractC0494p<T> m46c() {
        return (AbstractC0494p<T>) f1072f;
    }

    /* renamed from: d */
    public static <T, U> AbstractC0493o<T, U> m45d(Class<U> cls) {
        return new l(cls);
    }

    /* renamed from: e */
    public static <T> AbstractC0495q<List<T>> m44e(int i) {
        return new j(i);
    }

    /* renamed from: f */
    public static <T> AbstractC0495q<Set<T>> m43f() {
        return s.INSTANCE;
    }

    /* renamed from: g */
    public static <T> AbstractC0485g<T> m42g() {
        return (AbstractC0485g<T>) f1070d;
    }

    /* renamed from: h */
    public static <T> AbstractC0494p<T> m41h(T t) {
        return new q(t);
    }

    /* renamed from: i */
    public static <T> AbstractC0493o<T, T> m40i() {
        return (AbstractC0493o<T, T>) f1067a;
    }

    /* renamed from: j */
    public static <T, U> AbstractC0494p<T> m39j(Class<U> cls) {
        return new m(cls);
    }

    /* renamed from: k */
    public static <T, U> AbstractC0493o<T, U> m38k(U u) {
        return new u(u);
    }

    /* renamed from: l */
    public static <T> AbstractC0495q<T> m37l(T t) {
        return new u(t);
    }

    /* renamed from: m */
    public static <T> AbstractC0493o<List<T>, List<T>> m36m(Comparator<? super T> comparator) {
        return new v(comparator);
    }

    /* renamed from: n */
    public static <T> Comparator<T> m35n() {
        return EnumC0498w.INSTANCE;
    }

    /* renamed from: o */
    public static <T> AbstractC0479a m34o(AbstractC0485g<? super C0472u<T>> gVar) {
        return new x(gVar);
    }

    /* renamed from: p */
    public static <T> AbstractC0485g<Throwable> m33p(AbstractC0485g<? super C0472u<T>> gVar) {
        return new y(gVar);
    }

    /* renamed from: q */
    public static <T> AbstractC0485g<T> m32q(AbstractC0485g<? super C0472u<T>> gVar) {
        return new z(gVar);
    }

    /* renamed from: r */
    public static <T> AbstractC0495q<T> m31r() {
        return (AbstractC0495q<T>) f1074h;
    }

    /* renamed from: s */
    public static <T> AbstractC0494p<T> m30s(AbstractC0483e eVar) {
        return new k(eVar);
    }

    /* renamed from: t */
    public static <T> AbstractC0493o<T, b<T>> m29t(TimeUnit timeUnit, AbstractC0455d0 d0Var) {
        return new c0(timeUnit, d0Var);
    }

    /* renamed from: u */
    public static <T1, T2, R> AbstractC0493o<Object[], R> m28u(AbstractC0481c<? super T1, ? super T2, ? extends R> cVar) {
        return new b(cVar);
    }

    /* renamed from: v */
    public static <T1, T2, T3, R> AbstractC0493o<Object[], R> m27v(AbstractC0486h<T1, T2, T3, R> hVar) {
        return new c(hVar);
    }

    /* renamed from: w */
    public static <T1, T2, T3, T4, R> AbstractC0493o<Object[], R> m26w(AbstractC0487i<T1, T2, T3, T4, R> iVar) {
        return new d(iVar);
    }

    /* renamed from: x */
    public static <T1, T2, T3, T4, T5, R> AbstractC0493o<Object[], R> m25x(AbstractC0488j<T1, T2, T3, T4, T5, R> jVar) {
        return new e(jVar);
    }

    /* renamed from: y */
    public static <T1, T2, T3, T4, T5, T6, R> AbstractC0493o<Object[], R> m24y(AbstractC0489k<T1, T2, T3, T4, T5, T6, R> kVar) {
        return new f(kVar);
    }

    /* renamed from: z */
    public static <T1, T2, T3, T4, T5, T6, T7, R> AbstractC0493o<Object[], R> m23z(AbstractC0490l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        return new g(lVar);
    }
}
