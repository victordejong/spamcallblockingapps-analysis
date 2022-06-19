package p193e.p194a.p982k0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.k0.h */
/* loaded from: classes7-dex2jar.jar:e/a/k0/h.class */
public abstract class AbstractC16315h {

    /* renamed from: e.a.k0.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/h$a.class */
    public static final class C16316a extends AbstractC16315h {

        /* renamed from: a */
        public static final C16316a f45932a = new C16316a();

        public C16316a() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.h$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/h$b.class */
    public static final class C16317b extends AbstractC16315h {

        /* renamed from: a */
        public final Exception f45933a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16317b(Exception exc) {
            super(null);
            l.e(exc, "exception");
            this.f45933a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16317b) && l.a(this.f45933a, ((C16317b) obj).f45933a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f45933a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Error(exception=");
            m8728C.append(this.f45933a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k0.h$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/h$c.class */
    public static final class C16318c extends AbstractC16315h {

        /* renamed from: a */
        public static final C16318c f45934a = new C16318c();

        public C16318c() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.h$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/h$d.class */
    public static final class C16319d extends AbstractC16315h {

        /* renamed from: a */
        public static final C16319d f45935a = new C16319d();

        public C16319d() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.h$e */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/h$e.class */
    public static final class C16320e extends AbstractC16315h {

        /* renamed from: a */
        public final b f45936a;

        /* renamed from: b */
        public final long f45937b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16320e(b bVar, long j) {
            super(null);
            l.e(bVar, "startTime");
            this.f45936a = bVar;
            this.f45937b = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16320e)) {
                    return false;
                }
                C16320e c16320e = (C16320e) obj;
                return l.a(this.f45936a, c16320e.f45936a) && this.f45937b == c16320e.f45937b;
            }
            return true;
        }

        public int hashCode() {
            b bVar = this.f45936a;
            return ((bVar != null ? bVar.hashCode() : 0) * 31) + C4876d.m34274a(this.f45937b);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Started(startTime=");
            m8728C.append(this.f45936a);
            m8728C.append(", startTimeBase=");
            return C22128a.m8693K2(m8728C, this.f45937b, ")");
        }
    }

    public AbstractC16315h() {
    }

    public AbstractC16315h(f fVar) {
    }
}
