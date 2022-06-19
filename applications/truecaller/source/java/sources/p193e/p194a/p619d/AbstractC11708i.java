package p193e.p194a.p619d;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.x2.f;
import s1.z.c.l;
/* renamed from: e.a.d.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/i.class */
public abstract class AbstractC11708i {

    /* renamed from: e.a.d.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/i$a.class */
    public static final class C11709a extends AbstractC11708i {

        /* renamed from: a */
        public final boolean f34364a;

        public C11709a(boolean z) {
            super(null);
            this.f34364a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11709a) && this.f34364a == ((C11709a) obj).f34364a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f34364a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("Connecting(isOutgoing="), this.f34364a, ")");
        }
    }

    /* renamed from: e.a.d.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/i$b.class */
    public static final class C11710b extends AbstractC11708i {

        /* renamed from: a */
        public static final C11710b f34365a = new C11710b();

        public C11710b() {
            super(null);
        }
    }

    /* renamed from: e.a.d.i$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/i$c.class */
    public static final class C11711c extends AbstractC11708i {

        /* renamed from: a */
        public static final C11711c f34366a = new C11711c();

        public C11711c() {
            super(null);
        }
    }

    /* renamed from: e.a.d.i$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/i$d.class */
    public static final class C11712d extends AbstractC11708i {

        /* renamed from: a */
        public final long f34367a;

        /* renamed from: b */
        public final f<String> f34368b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11712d(long j, f<String> fVar) {
            super(null);
            l.e(fVar, AnalyticsConstants.NAME);
            this.f34367a = j;
            this.f34368b = fVar;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11712d)) {
                    return false;
                }
                C11712d c11712d = (C11712d) obj;
                return this.f34367a == c11712d.f34367a && l.a(this.f34368b, c11712d.f34368b);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f34367a);
            f<String> fVar = this.f34368b;
            return (m34274a * 31) + (fVar != null ? fVar.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Ongoing(connectedTime=");
            m8728C.append(this.f34367a);
            m8728C.append(", name=");
            m8728C.append(this.f34368b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.i$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/i$e.class */
    public static final class C11713e extends AbstractC11708i {

        /* renamed from: a */
        public static final C11713e f34369a = new C11713e();

        public C11713e() {
            super(null);
        }
    }

    public AbstractC11708i() {
    }

    public AbstractC11708i(s1.z.c.f fVar) {
    }
}
