package p037i.p038a.p046b.p047s.p048a;

import p037i.p038a.p046b.p047s.p048a.AbstractRunnableC0402a;
/* renamed from: i.a.b.s.a.b$a */
/* loaded from: classes2-dex2jar.jar:i/a/b/s/a/b$a.class */
class b$a extends ThreadLocal<b$b<?>> {
    b$a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [i.a.b.s.a.b$b<?>, i.a.b.s.a.b$b] */
    /* renamed from: a */
    public b$b<?> initialValue() {
        return new Object() { // from class: i.a.b.s.a.b$b

            /* renamed from: a */
            private K f986a;

            /* renamed from: b */
            private int f987b;

            /* renamed from: a */
            void m267a() {
                this.f986a = null;
                this.f987b = 0;
            }

            /* renamed from: b */
            b$b<K> m266b(K k) {
                this.f986a = k;
                this.f987b = System.identityHashCode(k);
                return this;
            }

            public boolean equals(Object obj) {
                boolean z = true;
                boolean z2 = true;
                if (obj instanceof b$b) {
                    if (((b$b) obj).f986a != this.f986a) {
                        z2 = false;
                    }
                    return z2;
                }
                if (((AbstractRunnableC0402a.C0406d) obj).get() != this.f986a) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return this.f987b;
            }
        };
    }
}
