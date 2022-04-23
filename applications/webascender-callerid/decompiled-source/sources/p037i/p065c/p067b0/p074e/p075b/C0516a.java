package p037i.p065c.p067b0.p074e.p075b;

import i.c.b0.j.b;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p037i.p065c.p067b0.p071b.AbstractC0475d0;
import p037i.p065c.p067b0.p071b.C0492u;
import p037i.p065c.p067b0.p073d.AbstractC0499a;
import p037i.p065c.p067b0.p073d.AbstractC0500b;
import p037i.p065c.p067b0.p073d.AbstractC0501c;
import p037i.p065c.p067b0.p073d.AbstractC0503e;
import p037i.p065c.p067b0.p073d.AbstractC0505g;
import p037i.p065c.p067b0.p073d.AbstractC0506h;
import p037i.p065c.p067b0.p073d.AbstractC0507i;
import p037i.p065c.p067b0.p073d.AbstractC0508j;
import p037i.p065c.p067b0.p073d.AbstractC0509k;
import p037i.p065c.p067b0.p073d.AbstractC0510l;
import p037i.p065c.p067b0.p073d.AbstractC0511m;
import p037i.p065c.p067b0.p073d.AbstractC0512n;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
import p037i.p065c.p067b0.p073d.AbstractC0514p;
import p037i.p065c.p067b0.p073d.AbstractC0515q;
/* renamed from: i.c.b0.e.b.a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a.class */
public final class C0516a {

    /* renamed from: a */
    static final AbstractC0513o<Object, Object> f1192a = new t();

    /* renamed from: b */
    public static final Runnable f1193b = new RunnableC0517p();

    /* renamed from: c */
    public static final AbstractC0499a f1194c = new n();

    /* renamed from: d */
    static final AbstractC0505g<Object> f1195d = new o();

    /* renamed from: e */
    public static final AbstractC0505g<Throwable> f1196e = new b0();

    /* renamed from: f */
    static final AbstractC0514p<Object> f1197f = new g0();

    /* renamed from: g */
    static final AbstractC0514p<Object> f1198g = new r();

    /* renamed from: h */
    static final AbstractC0515q<Object> f1199h = new a0();

    /* renamed from: i.c.b0.e.b.a$p */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/a$p.class */
    static final class RunnableC0517p implements Runnable {
        RunnableC0517p() {
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
    enum EnumC0518w implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: A */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> AbstractC0513o<Object[], R> m53A(AbstractC0511m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        return new h(mVar);
    }

    /* renamed from: B */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> AbstractC0513o<Object[], R> m52B(AbstractC0512n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        return new i(nVar);
    }

    /* renamed from: C */
    public static <T, K> AbstractC0500b<Map<K, T>, T> m51C(AbstractC0513o<? super T, ? extends K> oVar) {
        return new d0(oVar);
    }

    /* renamed from: D */
    public static <T, K, V> AbstractC0500b<Map<K, V>, T> m50D(AbstractC0513o<? super T, ? extends K> oVar, AbstractC0513o<? super T, ? extends V> oVar2) {
        return new e0(oVar2, oVar);
    }

    /* renamed from: E */
    public static <T, K, V> AbstractC0500b<Map<K, Collection<V>>, T> m49E(AbstractC0513o<? super T, ? extends K> oVar, AbstractC0513o<? super T, ? extends V> oVar2, AbstractC0513o<? super K, ? extends Collection<? super V>> oVar3) {
        return new f0(oVar3, oVar2, oVar);
    }

    /* renamed from: a */
    public static <T> AbstractC0505g<T> m48a(AbstractC0499a aVar) {
        return new a(aVar);
    }

    /* renamed from: b */
    public static <T> AbstractC0514p<T> m47b() {
        return (AbstractC0514p<T>) f1198g;
    }

    /* renamed from: c */
    public static <T> AbstractC0514p<T> m46c() {
        return (AbstractC0514p<T>) f1197f;
    }

    /* renamed from: d */
    public static <T, U> AbstractC0513o<T, U> m45d(Class<U> cls) {
        return new l(cls);
    }

    /* renamed from: e */
    public static <T> AbstractC0515q<List<T>> m44e(int i) {
        return new j(i);
    }

    /* renamed from: f */
    public static <T> AbstractC0515q<Set<T>> m43f() {
        return s.INSTANCE;
    }

    /* renamed from: g */
    public static <T> AbstractC0505g<T> m42g() {
        return (AbstractC0505g<T>) f1195d;
    }

    /* renamed from: h */
    public static <T> AbstractC0514p<T> m41h(T t) {
        return new q(t);
    }

    /* renamed from: i */
    public static <T> AbstractC0513o<T, T> m40i() {
        return (AbstractC0513o<T, T>) f1192a;
    }

    /* renamed from: j */
    public static <T, U> AbstractC0514p<T> m39j(Class<U> cls) {
        return new m(cls);
    }

    /* renamed from: k */
    public static <T, U> AbstractC0513o<T, U> m38k(U u) {
        return new u(u);
    }

    /* renamed from: l */
    public static <T> AbstractC0515q<T> m37l(T t) {
        return new u(t);
    }

    /* renamed from: m */
    public static <T> AbstractC0513o<List<T>, List<T>> m36m(Comparator<? super T> comparator) {
        return new v(comparator);
    }

    /* renamed from: n */
    public static <T> Comparator<T> m35n() {
        return EnumC0518w.INSTANCE;
    }

    /* renamed from: o */
    public static <T> AbstractC0499a m34o(AbstractC0505g<? super C0492u<T>> gVar) {
        return new x(gVar);
    }

    /* renamed from: p */
    public static <T> AbstractC0505g<Throwable> m33p(AbstractC0505g<? super C0492u<T>> gVar) {
        return new y(gVar);
    }

    /* renamed from: q */
    public static <T> AbstractC0505g<T> m32q(AbstractC0505g<? super C0492u<T>> gVar) {
        return new z(gVar);
    }

    /* renamed from: r */
    public static <T> AbstractC0515q<T> m31r() {
        return (AbstractC0515q<T>) f1199h;
    }

    /* renamed from: s */
    public static <T> AbstractC0514p<T> m30s(AbstractC0503e eVar) {
        return new k(eVar);
    }

    /* renamed from: t */
    public static <T> AbstractC0513o<T, b<T>> m29t(TimeUnit timeUnit, AbstractC0475d0 d0Var) {
        return new c0(timeUnit, d0Var);
    }

    /* renamed from: u */
    public static <T1, T2, R> AbstractC0513o<Object[], R> m28u(AbstractC0501c<? super T1, ? super T2, ? extends R> cVar) {
        return new b(cVar);
    }

    /* renamed from: v */
    public static <T1, T2, T3, R> AbstractC0513o<Object[], R> m27v(AbstractC0506h<T1, T2, T3, R> hVar) {
        return new c(hVar);
    }

    /* renamed from: w */
    public static <T1, T2, T3, T4, R> AbstractC0513o<Object[], R> m26w(AbstractC0507i<T1, T2, T3, T4, R> iVar) {
        return new d(iVar);
    }

    /* renamed from: x */
    public static <T1, T2, T3, T4, T5, R> AbstractC0513o<Object[], R> m25x(AbstractC0508j<T1, T2, T3, T4, T5, R> jVar) {
        return new e(jVar);
    }

    /* renamed from: y */
    public static <T1, T2, T3, T4, T5, T6, R> AbstractC0513o<Object[], R> m24y(AbstractC0509k<T1, T2, T3, T4, T5, T6, R> kVar) {
        return new f(kVar);
    }

    /* renamed from: z */
    public static <T1, T2, T3, T4, T5, T6, T7, R> AbstractC0513o<Object[], R> m23z(AbstractC0510l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        return new g(lVar);
    }
}
