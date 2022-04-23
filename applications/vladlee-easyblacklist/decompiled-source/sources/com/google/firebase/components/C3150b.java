package com.google.firebase.components;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/b.class */
public final class C3150b<T> {

    /* renamed from: a */
    private final Set<Class<? super T>> f18981a;

    /* renamed from: b */
    private final Set<C3167n> f18982b;

    /* renamed from: c */
    private final int f18983c;

    /* renamed from: d */
    private final int f18984d;

    /* renamed from: e */
    private final AbstractC3158g<T> f18985e;

    /* renamed from: f */
    private final Set<Class<?>> f18986f;

    /* renamed from: com.google.firebase.components.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/b$a.class */
    public static final class C3151a<T> {

        /* renamed from: a */
        private final Set<Class<? super T>> f18987a;

        /* renamed from: b */
        private final Set<C3167n> f18988b;

        /* renamed from: c */
        private int f18989c;

        /* renamed from: d */
        private int f18990d;

        /* renamed from: e */
        private AbstractC3158g<T> f18991e;

        /* renamed from: f */
        private Set<Class<?>> f18992f;

        @SafeVarargs
        private C3151a(Class<T> cls, Class<? super T>... clsArr) {
            this.f18987a = new HashSet();
            this.f18988b = new HashSet();
            this.f18989c = 0;
            this.f18990d = 0;
            this.f18992f = new HashSet();
            Preconditions.checkNotNull(cls, "Null interface");
            this.f18987a.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                Preconditions.checkNotNull(cls2, "Null interface");
            }
            Collections.addAll(this.f18987a, clsArr);
        }

        /* synthetic */ C3151a(Class cls, Class[] clsArr, byte b) {
            this(cls, clsArr);
        }

        /* renamed from: a */
        private C3151a<T> m626a(int i) {
            Preconditions.checkState(this.f18989c == 0, "Instantiation type has already been set.");
            this.f18989c = i;
            return this;
        }

        /* renamed from: a */
        public final C3151a<T> m627a() {
            return m626a(1);
        }

        /* renamed from: a */
        public final C3151a<T> m624a(AbstractC3158g<T> gVar) {
            this.f18991e = (AbstractC3158g) Preconditions.checkNotNull(gVar, "Null factory");
            return this;
        }

        /* renamed from: a */
        public final C3151a<T> m623a(C3167n nVar) {
            Preconditions.checkNotNull(nVar, "Null dependency");
            Preconditions.checkArgument(!this.f18987a.contains(nVar.m595a()), "Components are not allowed to depend on interfaces they themselves provide.");
            this.f18988b.add(nVar);
            return this;
        }

        /* renamed from: b */
        public final C3151a<T> m622b() {
            return m626a(2);
        }

        /* renamed from: c */
        public final C3150b<T> m621c() {
            Preconditions.checkState(this.f18991e != null, "Missing required property: factory.");
            return new C3150b<>(new HashSet(this.f18987a), new HashSet(this.f18988b), this.f18989c, this.f18990d, this.f18991e, this.f18992f, (byte) 0);
        }
    }

    private C3150b(Set<Class<? super T>> set, Set<C3167n> set2, int i, int i2, AbstractC3158g<T> gVar, Set<Class<?>> set3) {
        this.f18981a = Collections.unmodifiableSet(set);
        this.f18982b = Collections.unmodifiableSet(set2);
        this.f18983c = i;
        this.f18984d = i2;
        this.f18985e = gVar;
        this.f18986f = Collections.unmodifiableSet(set3);
    }

    /* synthetic */ C3150b(Set set, Set set2, int i, int i2, AbstractC3158g gVar, Set set3, byte b) {
        this(set, set2, i, i2, gVar, set3);
    }

    /* renamed from: a */
    public static <T> C3151a<T> m636a(Class<T> cls) {
        return new C3151a<>(cls, new Class[0], (byte) 0);
    }

    /* renamed from: a */
    public static <T> C3150b<T> m635a(T t, Class<T> cls) {
        return m636a(cls).f18990d = 1.m624a(C3153d.m619a(t)).m621c();
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C3150b<T> m634a(T t, Class<T> cls, Class<? super T>... clsArr) {
        return new C3151a(cls, clsArr, (byte) 0).m624a(C3152c.m620a(t)).m621c();
    }

    /* renamed from: a */
    public final Set<Class<? super T>> m637a() {
        return this.f18981a;
    }

    /* renamed from: b */
    public final Set<C3167n> m633b() {
        return this.f18982b;
    }

    /* renamed from: c */
    public final AbstractC3158g<T> m632c() {
        return this.f18985e;
    }

    /* renamed from: d */
    public final Set<Class<?>> m631d() {
        return this.f18986f;
    }

    /* renamed from: e */
    public final boolean m630e() {
        return this.f18983c == 1;
    }

    /* renamed from: f */
    public final boolean m629f() {
        return this.f18983c == 2;
    }

    /* renamed from: g */
    public final boolean m628g() {
        return this.f18984d == 0;
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f18981a.toArray()) + ">{" + this.f18983c + ", type=" + this.f18984d + ", deps=" + Arrays.toString(this.f18982b.toArray()) + "}";
    }
}
