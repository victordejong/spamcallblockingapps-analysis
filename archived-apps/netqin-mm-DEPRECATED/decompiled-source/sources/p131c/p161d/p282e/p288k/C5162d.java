package p131c.p161d.p282e.p288k;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: c.d.e.k.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/d.class */
public final class C5162d<T> {

    /* renamed from: a */
    public final Set<Class<? super T>> f17800a;

    /* renamed from: b */
    public final Set<C5180n> f17801b;

    /* renamed from: c */
    public final int f17802c;

    /* renamed from: d */
    public final int f17803d;

    /* renamed from: e */
    public final AbstractC5170g<T> f17804e;

    /* renamed from: f */
    public final Set<Class<?>> f17805f;

    /* renamed from: c.d.e.k.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/k/d$b.class */
    public static class C5164b<T> {

        /* renamed from: a */
        public final Set<Class<? super T>> f17806a;

        /* renamed from: b */
        public final Set<C5180n> f17807b;

        /* renamed from: c */
        public int f17808c;

        /* renamed from: d */
        public int f17809d;

        /* renamed from: e */
        public AbstractC5170g<T> f17810e;

        /* renamed from: f */
        public Set<Class<?>> f17811f;

        @SafeVarargs
        public C5164b(Class<T> cls, Class<? super T>... clsArr) {
            this.f17806a = new HashSet();
            this.f17807b = new HashSet();
            this.f17808c = 0;
            this.f17809d = 0;
            this.f17811f = new HashSet();
            C5184r.m24333a(cls, "Null interface");
            this.f17806a.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                C5184r.m24333a(cls2, "Null interface");
            }
            Collections.addAll(this.f17806a, clsArr);
        }

        /* renamed from: a */
        public final C5164b<T> m24381a(int i) {
            C5184r.m24331b(this.f17808c == 0, "Instantiation type has already been set.");
            this.f17808c = i;
            return this;
        }

        /* renamed from: a */
        public C5164b<T> m24379a(AbstractC5170g<T> gVar) {
            C5184r.m24333a(gVar, "Null factory");
            this.f17810e = gVar;
            return this;
        }

        /* renamed from: a */
        public C5164b<T> m24378a(C5180n nVar) {
            C5184r.m24333a(nVar, "Null dependency");
            m24377a(nVar.m24348a());
            this.f17807b.add(nVar);
            return this;
        }

        /* renamed from: a */
        public C5162d<T> m24382a() {
            C5184r.m24331b(this.f17810e != null, "Missing required property: factory.");
            return new C5162d<>(new HashSet(this.f17806a), new HashSet(this.f17807b), this.f17808c, this.f17809d, this.f17810e, this.f17811f);
        }

        /* renamed from: a */
        public final void m24377a(Class<?> cls) {
            C5184r.m24332a(!this.f17806a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        /* renamed from: b */
        public C5164b<T> m24376b() {
            m24381a(2);
            return this;
        }

        /* renamed from: c */
        public final C5164b<T> m24375c() {
            this.f17809d = 1;
            return this;
        }
    }

    public C5162d(Set<Class<? super T>> set, Set<C5180n> set2, int i, int i2, AbstractC5170g<T> gVar, Set<Class<?>> set3) {
        this.f17800a = Collections.unmodifiableSet(set);
        this.f17801b = Collections.unmodifiableSet(set2);
        this.f17802c = i;
        this.f17803d = i2;
        this.f17804e = gVar;
        this.f17805f = Collections.unmodifiableSet(set3);
    }

    /* renamed from: a */
    public static <T> C5164b<T> m24395a(Class<T> cls) {
        return new C5164b<>(cls, new Class[0]);
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C5164b<T> m24394a(Class<T> cls, Class<? super T>... clsArr) {
        return new C5164b<>(cls, clsArr);
    }

    /* renamed from: a */
    public static <T> C5162d<T> m24392a(T t, Class<T> cls) {
        C5164b b = m24389b(cls);
        b.m24379a(C5161c.m24397a(t));
        return b.m24382a();
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C5162d<T> m24391a(T t, Class<T> cls, Class<? super T>... clsArr) {
        C5164b a = m24394a(cls, clsArr);
        a.m24379a(C5160b.m24398a(t));
        return a.m24382a();
    }

    /* renamed from: a */
    public static /* synthetic */ Object m24393a(Object obj, AbstractC5165e eVar) {
        return obj;
    }

    /* renamed from: b */
    public static <T> C5164b<T> m24389b(Class<T> cls) {
        C5164b<T> a = m24395a(cls);
        a.m24375c();
        return a;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m24388b(Object obj, AbstractC5165e eVar) {
        return obj;
    }

    /* renamed from: a */
    public Set<C5180n> m24396a() {
        return this.f17801b;
    }

    /* renamed from: b */
    public AbstractC5170g<T> m24390b() {
        return this.f17804e;
    }

    /* renamed from: c */
    public Set<Class<? super T>> m24387c() {
        return this.f17800a;
    }

    /* renamed from: d */
    public Set<Class<?>> m24386d() {
        return this.f17805f;
    }

    /* renamed from: e */
    public boolean m24385e() {
        boolean z = true;
        if (this.f17802c != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m24384f() {
        return this.f17802c == 2;
    }

    /* renamed from: g */
    public boolean m24383g() {
        return this.f17803d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f17800a.toArray()) + ">{" + this.f17802c + ", type=" + this.f17803d + ", deps=" + Arrays.toString(this.f17801b.toArray()) + "}";
    }
}
