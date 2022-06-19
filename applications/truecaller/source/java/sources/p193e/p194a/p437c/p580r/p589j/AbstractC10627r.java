package p193e.p194a.p437c.p580r.p589j;

import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r.class */
public abstract class AbstractC10627r {

    /* renamed from: e.a.c.r.j.r$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$a.class */
    public static final class C10628a extends AbstractC10627r {

        /* renamed from: a */
        public static final C10628a f31665a = new C10628a();

        public C10628a() {
            super(null);
        }

        public String toString() {
            return "Bill";
        }
    }

    /* renamed from: e.a.c.r.j.r$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$b.class */
    public static final class C10629b extends AbstractC10627r {

        /* renamed from: a */
        public static final C10629b f31666a = new C10629b();

        public C10629b() {
            super(null);
        }

        public String toString() {
            return "creditcard_bill";
        }
    }

    /* renamed from: e.a.c.r.j.r$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$c.class */
    public static final class C10630c extends AbstractC10627r {

        /* renamed from: a */
        public final String f31667a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10630c(String str) {
            super(null);
            l.e(str, "orderStatus");
            this.f31667a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10630c) && l.a(this.f31667a, ((C10630c) obj).f31667a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31667a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return this.f31667a;
        }
    }

    /* renamed from: e.a.c.r.j.r$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$d.class */
    public static final class C10631d extends AbstractC10627r {

        /* renamed from: a */
        public final String f31668a;

        /* renamed from: b */
        public final String f31669b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10631d(String str, String str2) {
            super(null);
            l.e(str, "eventType");
            l.e(str2, "eventStatus");
            this.f31668a = str;
            this.f31669b = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10631d)) {
                    return false;
                }
                C10631d c10631d = (C10631d) obj;
                return l.a(this.f31668a, c10631d.f31668a) && l.a(this.f31669b, c10631d.f31669b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31668a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31669b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return this.f31668a + '_' + this.f31669b;
        }
    }

    /* renamed from: e.a.c.r.j.r$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$e.class */
    public static final class C10632e extends AbstractC10627r {

        /* renamed from: a */
        public static final C10632e f31670a = new C10632e();

        public C10632e() {
            super(null);
        }

        public String toString() {
            return "prepaid_expiry";
        }
    }

    /* renamed from: e.a.c.r.j.r$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$f.class */
    public static final class C10633f extends AbstractC10627r {

        /* renamed from: a */
        public static final C10633f f31671a = new C10633f();

        public C10633f() {
            super(null);
        }

        public String toString() {
            return "prepaid_success";
        }
    }

    /* renamed from: e.a.c.r.j.r$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/r$g.class */
    public static final class C10634g extends AbstractC10627r {

        /* renamed from: a */
        public static final C10634g f31672a = new C10634g();

        public C10634g() {
            super(null);
        }

        public String toString() {
            return "Unknown";
        }
    }

    public AbstractC10627r() {
    }

    public AbstractC10627r(f fVar) {
    }
}
