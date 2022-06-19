package p067i.p068a.p076b.p077s.p078a;

import p067i.p068a.p076b.p077s.p078a.AbstractRunnableC2070a;
/* renamed from: i.a.b.s.a.b$a */
/* loaded from: classes2-dex2jar.jar:i/a/b/s/a/b$a.class */
class b$a extends ThreadLocal<b$b<?>> {
    b$a() {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [i.a.b.s.a.b$b<?>, i.a.b.s.a.b$b] */
    /* renamed from: a */
    public b$b<?> initialValue() {
        return new Object() { // from class: i.a.b.s.a.b$b

            /* renamed from: a */
            private K f5665a;

            /* renamed from: b */
            private int f5666b;

            /* renamed from: a */
            void m267a() {
                this.f5665a = null;
                this.f5666b = 0;
            }

            /* renamed from: b */
            b$b<K> m266b(K k) {
                this.f5665a = k;
                this.f5666b = System.identityHashCode(k);
                return this;
            }

            public boolean equals(Object obj) {
                boolean z = true;
                if (!(obj instanceof b$b)) {
                    return ((AbstractRunnableC2070a.C2074d) obj).get() == this.f5665a;
                }
                if (((b$b) obj).f5665a != this.f5665a) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return this.f5666b;
            }
        };
    }
}
