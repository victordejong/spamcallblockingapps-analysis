package p193e.p194a.p619d.p637c0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p627b0.C11161a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/j.class */
public abstract class AbstractC11416j {

    /* renamed from: e.a.d.c0.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/j$a.class */
    public static final class C11417a extends AbstractC11416j {

        /* renamed from: a */
        public static final C11417a f33539a = new C11417a();

        public C11417a() {
            super(null);
        }
    }

    /* renamed from: e.a.d.c0.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/j$b.class */
    public static final class C11418b extends AbstractC11416j {

        /* renamed from: a */
        public final C11161a f33540a;

        /* renamed from: b */
        public final boolean f33541b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11418b(C11161a c11161a, boolean z) {
            super(null);
            l.e(c11161a, "user");
            this.f33540a = c11161a;
            this.f33541b = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11418b)) {
                    return false;
                }
                C11418b c11418b = (C11418b) obj;
                return l.a(this.f33540a, c11418b.f33540a) && this.f33541b == c11418b.f33541b;
            }
            return true;
        }

        public int hashCode() {
            C11161a c11161a = this.f33540a;
            int hashCode = c11161a != null ? c11161a.hashCode() : 0;
            boolean z = this.f33541b;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Ready(user=");
            m8728C.append(this.f33540a);
            m8728C.append(", isFinal=");
            return C22128a.m8590o(m8728C, this.f33541b, ")");
        }
    }

    /* renamed from: e.a.d.c0.j$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/j$c.class */
    public static final class C11419c extends AbstractC11416j {

        /* renamed from: a */
        public static final C11419c f33542a = new C11419c();

        public C11419c() {
            super(null);
        }
    }

    public AbstractC11416j() {
    }

    public AbstractC11416j(f fVar) {
    }
}
