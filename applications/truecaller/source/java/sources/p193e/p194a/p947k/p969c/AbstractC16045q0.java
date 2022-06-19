package p193e.p194a.p947k.p969c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.c.q0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/q0.class */
public abstract class AbstractC16045q0 {

    /* renamed from: e.a.k.c.q0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/q0$a.class */
    public static final class C16046a extends AbstractC16045q0 {

        /* renamed from: a */
        public final Exception f45235a;

        public C16046a() {
            this(null);
        }

        public C16046a(Exception exc) {
            super(null);
            this.f45235a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16046a) && l.a(this.f45235a, ((C16046a) obj).f45235a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f45235a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Failed(exception=");
            m8728C.append(this.f45235a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.c.q0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/q0$b.class */
    public static final class C16047b extends AbstractC16045q0 {

        /* renamed from: a */
        public final C16042p0 f45236a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16047b(C16042p0 c16042p0) {
            super(null);
            l.e(c16042p0, "uploadLinks");
            this.f45236a = c16042p0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16047b) && l.a(this.f45236a, ((C16047b) obj).f45236a);
            }
            return true;
        }

        public int hashCode() {
            C16042p0 c16042p0 = this.f45236a;
            return c16042p0 != null ? c16042p0.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Successful(uploadLinks=");
            m8728C.append(this.f45236a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC16045q0() {
    }

    public AbstractC16045q0(f fVar) {
    }
}
