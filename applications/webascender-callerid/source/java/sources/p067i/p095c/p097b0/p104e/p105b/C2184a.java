package p067i.p095c.p097b0.p104e.p105b;

import i.c.b0.j.b;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p067i.p095c.p097b0.p101b.AbstractC2143d0;
import p067i.p095c.p097b0.p101b.C2160u;
import p067i.p095c.p097b0.p103d.AbstractC2167a;
import p067i.p095c.p097b0.p103d.AbstractC2168b;
import p067i.p095c.p097b0.p103d.AbstractC2169c;
import p067i.p095c.p097b0.p103d.AbstractC2171e;
import p067i.p095c.p097b0.p103d.AbstractC2173g;
import p067i.p095c.p097b0.p103d.AbstractC2174h;
import p067i.p095c.p097b0.p103d.AbstractC2175i;
import p067i.p095c.p097b0.p103d.AbstractC2176j;
import p067i.p095c.p097b0.p103d.AbstractC2177k;
import p067i.p095c.p097b0.p103d.AbstractC2178l;
import p067i.p095c.p097b0.p103d.AbstractC2179m;
import p067i.p095c.p097b0.p103d.AbstractC2180n;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
import p067i.p095c.p097b0.p103d.AbstractC2182p;
import p067i.p095c.p097b0.p103d.AbstractC2183q;
/* renamed from: i.c.b0.e.b.a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a.class */
public final class C2184a {

    /* renamed from: a */
    static final AbstractC2181o<Object, Object> f5871a = new t();

    /* renamed from: b */
    public static final Runnable f5872b = new RunnableC2185p();

    /* renamed from: c */
    public static final AbstractC2167a f5873c = new n();

    /* renamed from: d */
    static final AbstractC2173g<Object> f5874d = new o();

    /* renamed from: e */
    public static final AbstractC2173g<Throwable> f5875e = new b0();

    /* renamed from: f */
    static final AbstractC2182p<Object> f5876f = new g0();

    /* renamed from: g */
    static final AbstractC2182p<Object> f5877g = new r();

    /* renamed from: h */
    static final AbstractC2183q<Object> f5878h = new a0();

    /* renamed from: i.c.b0.e.b.a$p */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a$p.class */
    static final class RunnableC2185p implements Runnable {
        RunnableC2185p() {
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
    enum EnumC2186w implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: A */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> AbstractC2181o<Object[], R> m53A(AbstractC2179m<T1, T2, T3, T4, T5, T6, T7, T8, R> abstractC2179m) {
        return new h(abstractC2179m);
    }

    /* renamed from: B */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> AbstractC2181o<Object[], R> m52B(AbstractC2180n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> abstractC2180n) {
        return new i(abstractC2180n);
    }

    /* renamed from: C */
    public static <T, K> AbstractC2168b<Map<K, T>, T> m51C(AbstractC2181o<? super T, ? extends K> abstractC2181o) {
        return new d0(abstractC2181o);
    }

    /* renamed from: D */
    public static <T, K, V> AbstractC2168b<Map<K, V>, T> m50D(AbstractC2181o<? super T, ? extends K> abstractC2181o, AbstractC2181o<? super T, ? extends V> abstractC2181o2) {
        return new e0(abstractC2181o2, abstractC2181o);
    }

    /* renamed from: E */
    public static <T, K, V> AbstractC2168b<Map<K, Collection<V>>, T> m49E(AbstractC2181o<? super T, ? extends K> abstractC2181o, AbstractC2181o<? super T, ? extends V> abstractC2181o2, AbstractC2181o<? super K, ? extends Collection<? super V>> abstractC2181o3) {
        return new f0(abstractC2181o3, abstractC2181o2, abstractC2181o);
    }

    /* renamed from: a */
    public static <T> AbstractC2173g<T> m48a(AbstractC2167a abstractC2167a) {
        return new a(abstractC2167a);
    }

    /* renamed from: b */
    public static <T> AbstractC2182p<T> m47b() {
        return (AbstractC2182p<T>) f5877g;
    }

    /* renamed from: c */
    public static <T> AbstractC2182p<T> m46c() {
        return (AbstractC2182p<T>) f5876f;
    }

    /* renamed from: d */
    public static <T, U> AbstractC2181o<T, U> m45d(Class<U> cls) {
        return new l(cls);
    }

    /* renamed from: e */
    public static <T> AbstractC2183q<List<T>> m44e(int i) {
        return new j(i);
    }

    /* renamed from: f */
    public static <T> AbstractC2183q<Set<T>> m43f() {
        return s.INSTANCE;
    }

    /* renamed from: g */
    public static <T> AbstractC2173g<T> m42g() {
        return (AbstractC2173g<T>) f5874d;
    }

    /* renamed from: h */
    public static <T> AbstractC2182p<T> m41h(T t) {
        return new q(t);
    }

    /* renamed from: i */
    public static <T> AbstractC2181o<T, T> m40i() {
        return (AbstractC2181o<T, T>) f5871a;
    }

    /* renamed from: j */
    public static <T, U> AbstractC2182p<T> m39j(Class<U> cls) {
        return new m(cls);
    }

    /* renamed from: k */
    public static <T, U> AbstractC2181o<T, U> m38k(U u) {
        return new u(u);
    }

    /* renamed from: l */
    public static <T> AbstractC2183q<T> m37l(T t) {
        return new u(t);
    }

    /* renamed from: m */
    public static <T> AbstractC2181o<List<T>, List<T>> m36m(Comparator<? super T> comparator) {
        return new v(comparator);
    }

    /* renamed from: n */
    public static <T> Comparator<T> m35n() {
        return EnumC2186w.INSTANCE;
    }

    /* renamed from: o */
    public static <T> AbstractC2167a m34o(AbstractC2173g<? super C2160u<T>> abstractC2173g) {
        return new x(abstractC2173g);
    }

    /* renamed from: p */
    public static <T> AbstractC2173g<Throwable> m33p(AbstractC2173g<? super C2160u<T>> abstractC2173g) {
        return new y(abstractC2173g);
    }

    /* renamed from: q */
    public static <T> AbstractC2173g<T> m32q(AbstractC2173g<? super C2160u<T>> abstractC2173g) {
        return new z(abstractC2173g);
    }

    /* renamed from: r */
    public static <T> AbstractC2183q<T> m31r() {
        return (AbstractC2183q<T>) f5878h;
    }

    /* renamed from: s */
    public static <T> AbstractC2182p<T> m30s(AbstractC2171e abstractC2171e) {
        return new k(abstractC2171e);
    }

    /* renamed from: t */
    public static <T> AbstractC2181o<T, b<T>> m29t(TimeUnit timeUnit, AbstractC2143d0 abstractC2143d0) {
        return new c0(timeUnit, abstractC2143d0);
    }

    /* renamed from: u */
    public static <T1, T2, R> AbstractC2181o<Object[], R> m28u(AbstractC2169c<? super T1, ? super T2, ? extends R> abstractC2169c) {
        return new b(abstractC2169c);
    }

    /* renamed from: v */
    public static <T1, T2, T3, R> AbstractC2181o<Object[], R> m27v(AbstractC2174h<T1, T2, T3, R> abstractC2174h) {
        return new c(abstractC2174h);
    }

    /* renamed from: w */
    public static <T1, T2, T3, T4, R> AbstractC2181o<Object[], R> m26w(AbstractC2175i<T1, T2, T3, T4, R> abstractC2175i) {
        return new d(abstractC2175i);
    }

    /* renamed from: x */
    public static <T1, T2, T3, T4, T5, R> AbstractC2181o<Object[], R> m25x(AbstractC2176j<T1, T2, T3, T4, T5, R> abstractC2176j) {
        return new e(abstractC2176j);
    }

    /* renamed from: y */
    public static <T1, T2, T3, T4, T5, T6, R> AbstractC2181o<Object[], R> m24y(AbstractC2177k<T1, T2, T3, T4, T5, T6, R> abstractC2177k) {
        return new f(abstractC2177k);
    }

    /* renamed from: z */
    public static <T1, T2, T3, T4, T5, T6, T7, R> AbstractC2181o<Object[], R> m23z(AbstractC2178l<T1, T2, T3, T4, T5, T6, T7, R> abstractC2178l) {
        return new g(abstractC2178l);
    }
}
