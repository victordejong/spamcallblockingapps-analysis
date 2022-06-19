package p193e.p194a.p947k.p948a.p964k.p965z;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.k.z.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b.class */
public abstract class AbstractC15868b {

    /* renamed from: e.a.k.a.k.z.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b$a.class */
    public static final class C15869a extends AbstractC15868b {

        /* renamed from: a */
        public static final C15869a f44760a = new C15869a();

        public C15869a() {
            super(null);
        }
    }

    /* renamed from: e.a.k.a.k.z.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b$b.class */
    public static final class C15870b extends AbstractC15868b {

        /* renamed from: a */
        public final Exception f44761a;

        public C15870b() {
            this(null);
        }

        public C15870b(Exception exc) {
            super(null);
            this.f44761a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C15870b) && l.a(this.f44761a, ((C15870b) obj).f44761a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f44761a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Error(ex=");
            m8728C.append(this.f44761a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.a.k.z.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b$c.class */
    public static final class C15871c extends AbstractC15868b {

        /* renamed from: a */
        public static final C15871c f44762a = new C15871c();

        public C15871c() {
            super(null);
        }
    }

    /* renamed from: e.a.k.a.k.z.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b$d.class */
    public static final class C15872d extends AbstractC15868b {

        /* renamed from: a */
        public static final C15872d f44763a = new C15872d();

        public C15872d() {
            super(null);
        }
    }

    /* renamed from: e.a.k.a.k.z.b$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b$e.class */
    public static final class C15873e extends AbstractC15868b {

        /* renamed from: a */
        public final int f44764a;

        public C15873e(int i) {
            super(null);
            this.f44764a = i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C15873e) && this.f44764a == ((C15873e) obj).f44764a;
            }
            return true;
        }

        public int hashCode() {
            return this.f44764a;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("Playing(cachePercentage="), this.f44764a, ")");
        }
    }

    /* renamed from: e.a.k.a.k.z.b$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/b$f.class */
    public static final class C15874f extends AbstractC15868b {

        /* renamed from: a */
        public static final C15874f f44765a = new C15874f();

        public C15874f() {
            super(null);
        }
    }

    public AbstractC15868b() {
    }

    public AbstractC15868b(f fVar) {
    }
}
