package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.pdo.ClassifierType;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p.class */
public abstract class AbstractC10616p {

    /* renamed from: a */
    public static final C10619c f31654a = new C10619c(null);

    /* renamed from: e.a.c.r.j.p$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$a.class */
    public static final class C10617a extends AbstractC10616p {

        /* renamed from: b */
        public static final C10617a f31655b = new C10617a();

        public C10617a() {
            super(null);
        }

        public String toString() {
            return "Bank";
        }
    }

    /* renamed from: e.a.c.r.j.p$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$b.class */
    public static final class C10618b extends AbstractC10616p {

        /* renamed from: b */
        public static final C10618b f31656b = new C10618b();

        public C10618b() {
            super(null);
        }

        public String toString() {
            return "Bill";
        }
    }

    /* renamed from: e.a.c.r.j.p$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$c.class */
    public static final class C10619c {
        public C10619c(f fVar) {
        }
    }

    /* renamed from: e.a.c.r.j.p$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$d.class */
    public static final class C10620d extends AbstractC10616p {

        /* renamed from: b */
        public static final C10620d f31657b = new C10620d();

        public C10620d() {
            super(null);
        }

        public String toString() {
            return "Delivery";
        }
    }

    /* renamed from: e.a.c.r.j.p$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$e.class */
    public static final class C10621e extends AbstractC10616p {

        /* renamed from: b */
        public static final C10621e f31658b = new C10621e();

        public C10621e() {
            super(null);
        }

        public String toString() {
            return "Event";
        }
    }

    /* renamed from: e.a.c.r.j.p$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$f.class */
    public static final class C10622f extends AbstractC10616p {

        /* renamed from: b */
        public static final C10622f f31659b = new C10622f();

        public C10622f() {
            super(null);
        }

        public String toString() {
            return "Feedback";
        }
    }

    /* renamed from: e.a.c.r.j.p$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$g.class */
    public static final class C10623g extends AbstractC10616p {

        /* renamed from: b */
        public static final C10623g f31660b = new C10623g();

        public C10623g() {
            super(null);
        }

        public String toString() {
            return "OTP";
        }
    }

    /* renamed from: e.a.c.r.j.p$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$h.class */
    public static final class C10624h extends AbstractC10616p {

        /* renamed from: b */
        public final String f31661b;

        public C10624h() {
            this("Travel");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10624h(String str) {
            super(null);
            l.e(str, "category");
            this.f31661b = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10624h) && l.a(this.f31661b, ((C10624h) obj).f31661b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31661b;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return this.f31661b;
        }
    }

    /* renamed from: e.a.c.r.j.p$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/p$i.class */
    public static final class C10625i extends AbstractC10616p {

        /* renamed from: b */
        public final String f31662b;

        /* renamed from: c */
        public final ClassifierType f31663c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10625i(String str, ClassifierType classifierType) {
            super(null);
            l.e(str, "updateCategory");
            l.e(classifierType, "classifierType");
            this.f31662b = str;
            this.f31663c = classifierType;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10625i)) {
                    return false;
                }
                C10625i c10625i = (C10625i) obj;
                return l.a(this.f31662b, c10625i.f31662b) && l.a(this.f31663c, c10625i.f31663c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31662b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            ClassifierType classifierType = this.f31663c;
            if (classifierType != null) {
                i = classifierType.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return this.f31662b;
        }
    }

    public AbstractC10616p() {
    }

    public AbstractC10616p(f fVar) {
    }
}
