package p193e.p194a.p918j.p934e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.j.e.e */
/* loaded from: classes14-dex2jar.jar:e/a/j/e/e.class */
public abstract class AbstractC15487e {

    /* renamed from: e.a.j.e.e$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/e/e$a.class */
    public static final class C15488a extends AbstractC15487e {

        /* renamed from: a */
        public final boolean f43904a;

        /* renamed from: b */
        public final boolean f43905b;

        public C15488a(boolean z, boolean z2) {
            super(null);
            this.f43904a = z;
            this.f43905b = z2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15488a)) {
                    return false;
                }
                C15488a c15488a = (C15488a) obj;
                return this.f43904a == c15488a.f43904a && this.f43905b == c15488a.f43905b;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f43904a;
            int i = 1;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            boolean z3 = this.f43905b;
            if (!z3) {
                i = z3;
            }
            return ((z2 ? 1 : 0) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Acs(isInPhonebook=");
            m8728C.append(this.f43904a);
            m8728C.append(", wasCallPickedUp=");
            return C22128a.m8590o(m8728C, this.f43905b, ")");
        }
    }

    public AbstractC15487e() {
    }

    public AbstractC15487e(f fVar) {
    }
}
