package p193e.p194a.p717f.p731w;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p717f.p718a.C13642g;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.f.w.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/w/f.class */
public abstract class AbstractC13738f {

    /* renamed from: e.a.f.w.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/w/f$a.class */
    public static final class C13739a extends AbstractC13738f {

        /* renamed from: a */
        public static final C13739a f39793a = new C13739a();

        public C13739a() {
            super(null);
        }
    }

    /* renamed from: e.a.f.w.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/w/f$b.class */
    public static final class C13740b extends AbstractC13738f {

        /* renamed from: a */
        public final C13642g f39794a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13740b(C13642g c13642g) {
            super(null);
            l.e(c13642g, "callerInfo");
            this.f39794a = c13642g;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13740b) && l.a(this.f39794a, ((C13740b) obj).f39794a);
            }
            return true;
        }

        public int hashCode() {
            C13642g c13642g = this.f39794a;
            return c13642g != null ? c13642g.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SearchComplete(callerInfo=");
            m8728C.append(this.f39794a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.f.w.f$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/w/f$c.class */
    public static final class C13741c extends AbstractC13738f {

        /* renamed from: a */
        public final String f39795a;

        public C13741c(String str) {
            super(null);
            this.f39795a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13741c) && l.a(this.f39795a, ((C13741c) obj).f39795a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f39795a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Searching(phoneNumber="), this.f39795a, ")");
        }
    }

    public AbstractC13738f() {
    }

    public AbstractC13738f(f fVar) {
    }
}
