package p193e.p194a.p619d.p657v;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/f.class */
public abstract class AbstractC11835f {

    /* renamed from: e.a.d.v.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/f$a.class */
    public static final class C11836a extends AbstractC11835f {

        /* renamed from: a */
        public final AbstractC11822b f34807a;

        /* renamed from: b */
        public final AbstractC11592d f34808b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11836a(AbstractC11822b abstractC11822b, AbstractC11592d abstractC11592d) {
            super(null);
            l.e(abstractC11822b, "call");
            l.e(abstractC11592d, "callInfo");
            this.f34807a = abstractC11822b;
            this.f34808b = abstractC11592d;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11836a)) {
                    return false;
                }
                C11836a c11836a = (C11836a) obj;
                return l.a(this.f34807a, c11836a.f34807a) && l.a(this.f34808b, c11836a.f34808b);
            }
            return true;
        }

        public int hashCode() {
            AbstractC11822b abstractC11822b = this.f34807a;
            int i = 0;
            int hashCode = abstractC11822b != null ? abstractC11822b.hashCode() : 0;
            AbstractC11592d abstractC11592d = this.f34808b;
            if (abstractC11592d != null) {
                i = abstractC11592d.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Active(call=");
            m8728C.append(this.f34807a);
            m8728C.append(", callInfo=");
            m8728C.append(this.f34808b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.v.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/f$b.class */
    public static final class C11837b extends AbstractC11835f {

        /* renamed from: a */
        public static final C11837b f34809a = new C11837b();

        public C11837b() {
            super(null);
        }
    }

    /* renamed from: e.a.d.v.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/f$c.class */
    public static final class C11838c extends AbstractC11835f {

        /* renamed from: a */
        public final AbstractC11592d f34810a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11838c(AbstractC11592d abstractC11592d) {
            super(null);
            l.e(abstractC11592d, "callInfo");
            this.f34810a = abstractC11592d;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11838c) && l.a(this.f34810a, ((C11838c) obj).f34810a);
            }
            return true;
        }

        public int hashCode() {
            AbstractC11592d abstractC11592d = this.f34810a;
            return abstractC11592d != null ? abstractC11592d.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Initiating(callInfo=");
            m8728C.append(this.f34810a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC11835f() {
    }

    public AbstractC11835f(f fVar) {
    }
}
