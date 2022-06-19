package p193e.p194a.p437c.p438a.p471e.p475d;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p531c0.C10031q;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.e.d.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/d/a.class */
public abstract class AbstractC8995a {

    /* renamed from: a */
    public final String f27327a;

    /* renamed from: b */
    public final String f27328b;

    /* renamed from: c */
    public final String f27329c;

    /* renamed from: d */
    public final String f27330d;

    /* renamed from: e */
    public final String f27331e;

    /* renamed from: f */
    public final String f27332f;

    /* renamed from: e.a.c.a.e.d.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/d/a$a.class */
    public static abstract class AbstractC8996a extends AbstractC8995a {

        /* renamed from: e.a.c.a.e.d.a$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/d/a$a$a.class */
        public static final class C8997a extends AbstractC8996a {

            /* renamed from: g */
            public final String f27333g;

            /* renamed from: h */
            public final boolean f27334h;

            /* renamed from: i */
            public final String f27335i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8997a(String str, boolean z, String str2) {
                super("semicard_blacklisting", "bottomsheet", C10031q.m26803a(str, z), "click", "got_it", str2, null);
                l.e(str, "senderId");
                l.e(str2, "analyticContext");
                this.f27333g = str;
                this.f27334h = z;
                this.f27335i = str2;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C8997a)) {
                        return false;
                    }
                    C8997a c8997a = (C8997a) obj;
                    return l.a(this.f27333g, c8997a.f27333g) && this.f27334h == c8997a.f27334h && l.a(this.f27335i, c8997a.f27335i);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f27333g;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                boolean z = this.f27334h;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                String str2 = this.f27335i;
                if (str2 != null) {
                    i = str2.hashCode();
                }
                return (((hashCode * 31) + i2) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("GotIt(senderId=");
                m8728C.append(this.f27333g);
                m8728C.append(", isIM=");
                m8728C.append(this.f27334h);
                m8728C.append(", analyticContext=");
                return C22128a.m8618h(m8728C, this.f27335i, ")");
            }
        }

        /* renamed from: e.a.c.a.e.d.a$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/d/a$a$b.class */
        public static final class C8998b extends AbstractC8996a {

            /* renamed from: g */
            public final String f27336g;

            /* renamed from: h */
            public final boolean f27337h;

            /* renamed from: i */
            public final String f27338i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8998b(String str, boolean z, String str2) {
                super("semicard_blacklisting", "bottomsheet", C10031q.m26803a(str, z), "click", "undo", str2, null);
                l.e(str, "senderId");
                l.e(str2, "analyticContext");
                this.f27336g = str;
                this.f27337h = z;
                this.f27338i = str2;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C8998b)) {
                        return false;
                    }
                    C8998b c8998b = (C8998b) obj;
                    return l.a(this.f27336g, c8998b.f27336g) && this.f27337h == c8998b.f27337h && l.a(this.f27338i, c8998b.f27338i);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f27336g;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                boolean z = this.f27337h;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                String str2 = this.f27338i;
                if (str2 != null) {
                    i = str2.hashCode();
                }
                return (((hashCode * 31) + i2) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Undo(senderId=");
                m8728C.append(this.f27336g);
                m8728C.append(", isIM=");
                m8728C.append(this.f27337h);
                m8728C.append(", analyticContext=");
                return C22128a.m8618h(m8728C, this.f27338i, ")");
            }
        }

        /* renamed from: e.a.c.a.e.d.a$a$c */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/d/a$a$c.class */
        public static final class C8999c extends AbstractC8996a {

            /* renamed from: g */
            public final String f27339g;

            /* renamed from: h */
            public final boolean f27340h;

            /* renamed from: i */
            public final String f27341i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8999c(String str, boolean z, String str2) {
                super("semicard_blacklisting", "bottomsheet", C10031q.m26803a(str, z), "click", "whats_this", str2, null);
                l.e(str, "senderId");
                l.e(str2, "analyticContext");
                this.f27339g = str;
                this.f27340h = z;
                this.f27341i = str2;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C8999c)) {
                        return false;
                    }
                    C8999c c8999c = (C8999c) obj;
                    return l.a(this.f27339g, c8999c.f27339g) && this.f27340h == c8999c.f27340h && l.a(this.f27341i, c8999c.f27341i);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f27339g;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                boolean z = this.f27340h;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                String str2 = this.f27341i;
                if (str2 != null) {
                    i = str2.hashCode();
                }
                return (((hashCode * 31) + i2) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("WhatsThis(senderId=");
                m8728C.append(this.f27339g);
                m8728C.append(", isIM=");
                m8728C.append(this.f27340h);
                m8728C.append(", analyticContext=");
                return C22128a.m8618h(m8728C, this.f27341i, ")");
            }
        }

        public AbstractC8996a(String str, String str2, String str3, String str4, String str5, String str6, f fVar) {
            super(str, str2, str6, str4, str5, str3, null);
        }
    }

    public AbstractC8995a(String str, String str2, String str3, String str4, String str5, String str6, f fVar) {
        this.f27327a = str;
        this.f27328b = str2;
        this.f27329c = str3;
        this.f27330d = str4;
        this.f27331e = str5;
        this.f27332f = str6;
    }
}
