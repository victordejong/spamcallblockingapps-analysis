package p193e.p194a.p619d.p657v.p659l.p660e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.d.v.l.e.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/a.class */
public abstract class AbstractC12036a {

    /* renamed from: e.a.d.v.l.e.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/a$a.class */
    public static final class C12037a extends AbstractC12036a {

        /* renamed from: a */
        public final boolean f35256a;

        public C12037a(boolean z) {
            super(null);
            this.f35256a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12037a) && this.f35256a == ((C12037a) obj).f35256a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f35256a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("Muted(muted="), this.f35256a, ")");
        }
    }

    /* renamed from: e.a.d.v.l.e.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/a$b.class */
    public static final class C12038b extends AbstractC12036a {

        /* renamed from: a */
        public final boolean f35257a;

        public C12038b(boolean z) {
            super(null);
            this.f35257a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12038b) && this.f35257a == ((C12038b) obj).f35257a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f35257a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("OnHold(onHold="), this.f35257a, ")");
        }
    }

    public AbstractC12036a() {
    }

    public AbstractC12036a(f fVar) {
    }
}
