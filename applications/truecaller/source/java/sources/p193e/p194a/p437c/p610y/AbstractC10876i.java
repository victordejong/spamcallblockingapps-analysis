package p193e.p194a.p437c.p610y;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.y.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/i.class */
public abstract class AbstractC10876i {

    /* renamed from: a */
    public final String f32296a;

    /* renamed from: e.a.c.y.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$a.class */
    public static final class C10877a extends AbstractC10876i {

        /* renamed from: b */
        public final String f32297b;

        /* renamed from: c */
        public final long f32298c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10877a(String str, long j) {
            super(str, null);
            l.e(str, "actionTitle");
            this.f32297b = str;
            this.f32298c = j;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32297b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10877a)) {
                    return false;
                }
                C10877a c10877a = (C10877a) obj;
                return l.a(this.f32297b, c10877a.f32297b) && this.f32298c == c10877a.f32298c;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32297b;
            return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f32298c);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AlreadyPaidAction(actionTitle=");
            m8728C.append(this.f32297b);
            m8728C.append(", messageId=");
            return C22128a.m8693K2(m8728C, this.f32298c, ")");
        }
    }

    /* renamed from: e.a.c.y.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$b.class */
    public static final class C10878b extends AbstractC10876i {

        /* renamed from: b */
        public final String f32299b;

        /* renamed from: c */
        public final long f32300c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10878b(String str, long j) {
            super(str, null);
            l.e(str, "actionTitle");
            this.f32299b = str;
            this.f32300c = j;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32299b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10878b)) {
                    return false;
                }
                C10878b c10878b = (C10878b) obj;
                return l.a(this.f32299b, c10878b.f32299b) && this.f32300c == c10878b.f32300c;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32299b;
            return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f32300c);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AlreadyPickedUpAction(actionTitle=");
            m8728C.append(this.f32299b);
            m8728C.append(", messageId=");
            return C22128a.m8693K2(m8728C, this.f32300c, ")");
        }
    }

    /* renamed from: e.a.c.y.i$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$c.class */
    public static final class C10879c extends AbstractC10876i {

        /* renamed from: b */
        public final String f32301b;

        /* renamed from: c */
        public final long f32302c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10879c(String str, long j) {
            super(str, null);
            l.e(str, "actionTitle");
            this.f32301b = str;
            this.f32302c = j;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32301b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10879c)) {
                    return false;
                }
                C10879c c10879c = (C10879c) obj;
                return l.a(this.f32301b, c10879c.f32301b) && this.f32302c == c10879c.f32302c;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32301b;
            return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f32302c);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AlreadyRechargedAction(actionTitle=");
            m8728C.append(this.f32301b);
            m8728C.append(", messageId=");
            return C22128a.m8693K2(m8728C, this.f32302c, ")");
        }
    }

    /* renamed from: e.a.c.y.i$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$d.class */
    public static final class C10880d extends AbstractC10876i {

        /* renamed from: b */
        public final String f32303b;

        /* renamed from: c */
        public final String f32304c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10880d(String str, String str2) {
            super(str, null);
            l.e(str, "actionTitle");
            l.e(str2, "number");
            this.f32303b = str;
            this.f32304c = str2;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32303b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10880d)) {
                    return false;
                }
                C10880d c10880d = (C10880d) obj;
                return l.a(this.f32303b, c10880d.f32303b) && l.a(this.f32304c, c10880d.f32304c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32303b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f32304c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CallAction(actionTitle=");
            m8728C.append(this.f32303b);
            m8728C.append(", number=");
            return C22128a.m8618h(m8728C, this.f32304c, ")");
        }
    }

    /* renamed from: e.a.c.y.i$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$e.class */
    public static final class C10881e extends AbstractC10876i {

        /* renamed from: b */
        public final String f32305b;

        /* renamed from: c */
        public final String f32306c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10881e(String str, String str2) {
            super(str, null);
            l.e(str, "actionTitle");
            l.e(str2, AnalyticsConstants.OTP);
            this.f32305b = str;
            this.f32306c = str2;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32305b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10881e)) {
                    return false;
                }
                C10881e c10881e = (C10881e) obj;
                return l.a(this.f32305b, c10881e.f32305b) && l.a(this.f32306c, c10881e.f32306c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32305b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f32306c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CopyOtpAction(actionTitle=");
            m8728C.append(this.f32305b);
            m8728C.append(", otp=");
            return C22128a.m8618h(m8728C, this.f32306c, ")");
        }
    }

    /* renamed from: e.a.c.y.i$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$f.class */
    public static final class C10882f extends AbstractC10876i {

        /* renamed from: b */
        public static final C10882f f32307b = new C10882f();

        public C10882f() {
            super("Delete OTP", null);
        }
    }

    /* renamed from: e.a.c.y.i$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$g.class */
    public static final class C10883g extends AbstractC10876i {

        /* renamed from: b */
        public final String f32308b;

        /* renamed from: c */
        public final String f32309c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10883g(String str, String str2) {
            super(str, null);
            l.e(str, "actionTitle");
            l.e(str2, "url");
            this.f32308b = str;
            this.f32309c = str2;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32308b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10883g)) {
                    return false;
                }
                C10883g c10883g = (C10883g) obj;
                return l.a(this.f32308b, c10883g.f32308b) && l.a(this.f32309c, c10883g.f32309c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32308b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f32309c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OpenUrlAction(actionTitle=");
            m8728C.append(this.f32308b);
            m8728C.append(", url=");
            return C22128a.m8618h(m8728C, this.f32309c, ")");
        }
    }

    /* renamed from: e.a.c.y.i$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/i$h.class */
    public static final class C10884h extends AbstractC10876i {

        /* renamed from: b */
        public final String f32310b;

        /* renamed from: c */
        public final AbstractC10443f.C10444a f32311c;

        /* renamed from: d */
        public final String f32312d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10884h(String str, AbstractC10443f.C10444a c10444a, String str2) {
            super(str, null);
            l.e(str, "actionTitle");
            l.e(c10444a, "deeplink");
            l.e(str2, "billType");
            this.f32310b = str;
            this.f32311c = c10444a;
            this.f32312d = str2;
        }

        @Override // p193e.p194a.p437c.p610y.AbstractC10876i
        /* renamed from: a */
        public String mo25531a() {
            return this.f32310b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10884h)) {
                    return false;
                }
                C10884h c10884h = (C10884h) obj;
                return l.a(this.f32310b, c10884h.f32310b) && l.a(this.f32311c, c10884h.f32311c) && l.a(this.f32312d, c10884h.f32312d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32310b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            AbstractC10443f.C10444a c10444a = this.f32311c;
            int hashCode2 = c10444a != null ? c10444a.hashCode() : 0;
            String str2 = this.f32312d;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PayBillAction(actionTitle=");
            m8728C.append(this.f32310b);
            m8728C.append(", deeplink=");
            m8728C.append(this.f32311c);
            m8728C.append(", billType=");
            return C22128a.m8618h(m8728C, this.f32312d, ")");
        }
    }

    public AbstractC10876i(String str, f fVar) {
        this.f32296a = str;
    }

    /* renamed from: a */
    public String mo25531a() {
        return this.f32296a;
    }
}
