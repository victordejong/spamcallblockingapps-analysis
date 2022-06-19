package p193e.p194a.p437c.p580r.p589j;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.DomainOrigin;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a.class */
public abstract class AbstractC10567a {

    /* renamed from: a */
    public final String f31501a;

    /* renamed from: b */
    public final AbstractC10584c f31502b = null;

    /* renamed from: e.a.c.r.j.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$a.class */
    public static abstract class AbstractC10568a extends AbstractC10567a {

        /* renamed from: e.a.c.r.j.a$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$a$a.class */
        public static final class C10569a extends AbstractC10568a {

            /* renamed from: c */
            public final long f31503c;

            /* renamed from: d */
            public final String f31504d;

            /* renamed from: e */
            public final boolean f31505e;

            /* renamed from: f */
            public final DomainOrigin f31506f;

            /* renamed from: g */
            public final String f31507g;

            /* renamed from: h */
            public final String f31508h;

            /* renamed from: i */
            public final String f31509i;

            /* renamed from: j */
            public final AbstractC10584c f31510j;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C10569a(long r11, java.lang.String r13, boolean r14, com.truecaller.insights.models.DomainOrigin r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, p193e.p194a.p437c.p580r.p589j.AbstractC10584c r19, int r20) {
                /*
                    r10 = this;
                    r0 = r20
                    r1 = 64
                    r0 = r0 & r1
                    if (r0 == 0) goto Lf
                    java.lang.String r0 = ""
                    r18 = r0
                    goto L12
                Lf:
                    r0 = 0
                    r18 = r0
                L12:
                    r0 = r20
                    r1 = 128(0x80, float:1.794E-43)
                    r0 = r0 & r1
                    if (r0 == 0) goto L31
                    e.a.c.r.j.d r0 = new e.a.c.r.j.d
                    r1 = r0
                    r2 = r11
                    r3 = r15
                    r4 = r13
                    r5 = r14
                    r6 = r16
                    r7 = r17
                    r1.<init>(r2, r3, r4, r5, r6, r7)
                    r19 = r0
                    goto L34
                L31:
                    r0 = 0
                    r19 = r0
                L34:
                    r0 = r13
                    java.lang.String r1 = "senderId"
                    s1.z.c.l.e(r0, r1)
                    r0 = r15
                    java.lang.String r1 = "origin"
                    s1.z.c.l.e(r0, r1)
                    r0 = r16
                    java.lang.String r1 = "type"
                    s1.z.c.l.e(r0, r1)
                    r0 = r17
                    java.lang.String r1 = "analyticsContext"
                    s1.z.c.l.e(r0, r1)
                    r0 = r18
                    java.lang.String r1 = "title"
                    s1.z.c.l.e(r0, r1)
                    r0 = r19
                    java.lang.String r1 = "action"
                    s1.z.c.l.e(r0, r1)
                    r0 = r10
                    r1 = r18
                    r2 = r14
                    r3 = 0
                    r0.<init>(r1, r2, r3)
                    r0 = r10
                    r1 = r11
                    r0.f31503c = r1
                    r0 = r10
                    r1 = r13
                    r0.f31504d = r1
                    r0 = r10
                    r1 = r14
                    r0.f31505e = r1
                    r0 = r10
                    r1 = r15
                    r0.f31506f = r1
                    r0 = r10
                    r1 = r16
                    r0.f31507g = r1
                    r0 = r10
                    r1 = r17
                    r0.f31508h = r1
                    r0 = r10
                    r1 = r18
                    r0.f31509i = r1
                    r0 = r10
                    r1 = r19
                    r0.f31510j = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p589j.AbstractC10567a.AbstractC10568a.C10569a.<init>(long, java.lang.String, boolean, com.truecaller.insights.models.DomainOrigin, java.lang.String, java.lang.String, java.lang.String, e.a.c.r.j.c, int):void");
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: a */
            public AbstractC10584c mo25781a() {
                return this.f31510j;
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: b */
            public String mo25780b() {
                return this.f31509i;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C10569a)) {
                        return false;
                    }
                    C10569a c10569a = (C10569a) obj;
                    return this.f31503c == c10569a.f31503c && l.a(this.f31504d, c10569a.f31504d) && this.f31505e == c10569a.f31505e && l.a(this.f31506f, c10569a.f31506f) && l.a(this.f31507g, c10569a.f31507g) && l.a(this.f31508h, c10569a.f31508h) && l.a(this.f31509i, c10569a.f31509i) && l.a(this.f31510j, c10569a.f31510j);
                }
                return true;
            }

            public int hashCode() {
                int m34274a = C4876d.m34274a(this.f31503c);
                String str = this.f31504d;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                boolean z = this.f31505e;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                DomainOrigin domainOrigin = this.f31506f;
                int hashCode2 = domainOrigin != null ? domainOrigin.hashCode() : 0;
                String str2 = this.f31507g;
                int hashCode3 = str2 != null ? str2.hashCode() : 0;
                String str3 = this.f31508h;
                int hashCode4 = str3 != null ? str3.hashCode() : 0;
                String str4 = this.f31509i;
                int hashCode5 = str4 != null ? str4.hashCode() : 0;
                AbstractC10584c abstractC10584c = this.f31510j;
                if (abstractC10584c != null) {
                    i = abstractC10584c.hashCode();
                }
                return (((((((((((((m34274a * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("AlreadyPaid(messageId=");
                m8728C.append(this.f31503c);
                m8728C.append(", senderId=");
                m8728C.append(this.f31504d);
                m8728C.append(", isIM=");
                m8728C.append(this.f31505e);
                m8728C.append(", origin=");
                m8728C.append(this.f31506f);
                m8728C.append(", type=");
                m8728C.append(this.f31507g);
                m8728C.append(", analyticsContext=");
                m8728C.append(this.f31508h);
                m8728C.append(", title=");
                m8728C.append(this.f31509i);
                m8728C.append(", action=");
                m8728C.append(this.f31510j);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.c.r.j.a$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$a$b.class */
        public static final class C10570b extends AbstractC10568a {

            /* renamed from: c */
            public final long f31511c;

            /* renamed from: d */
            public final AbstractC10443f.C10444a f31512d;

            /* renamed from: e */
            public final String f31513e;

            /* renamed from: f */
            public final boolean f31514f;

            /* renamed from: g */
            public final DomainOrigin f31515g;

            /* renamed from: h */
            public final String f31516h;

            /* renamed from: i */
            public final String f31517i;

            /* renamed from: j */
            public final String f31518j;

            /* renamed from: k */
            public final AbstractC10584c f31519k;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C10570b(long r12, p193e.p194a.p437c.p570j.AbstractC10443f.C10444a r14, java.lang.String r15, boolean r16, com.truecaller.insights.models.DomainOrigin r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, p193e.p194a.p437c.p580r.p589j.AbstractC10584c r21, int r22) {
                /*
                    r11 = this;
                    r0 = r22
                    r1 = 128(0x80, float:1.794E-43)
                    r0 = r0 & r1
                    if (r0 == 0) goto L10
                    java.lang.String r0 = ""
                    r20 = r0
                    goto L10
                L10:
                    r0 = r22
                    r1 = 256(0x100, float:3.59E-43)
                    r0 = r0 & r1
                    if (r0 == 0) goto L31
                    e.a.c.r.j.u r0 = new e.a.c.r.j.u
                    r1 = r0
                    r2 = r12
                    r3 = r17
                    r4 = r15
                    r5 = r16
                    r6 = r14
                    r7 = r18
                    r8 = r19
                    r1.<init>(r2, r3, r4, r5, r6, r7, r8)
                    r21 = r0
                    goto L34
                L31:
                    r0 = 0
                    r21 = r0
                L34:
                    r0 = r14
                    java.lang.String r1 = "deepLink"
                    s1.z.c.l.e(r0, r1)
                    r0 = r15
                    java.lang.String r1 = "senderId"
                    s1.z.c.l.e(r0, r1)
                    r0 = r17
                    java.lang.String r1 = "origin"
                    s1.z.c.l.e(r0, r1)
                    r0 = r18
                    java.lang.String r1 = "type"
                    s1.z.c.l.e(r0, r1)
                    r0 = r19
                    java.lang.String r1 = "analyticsContext"
                    s1.z.c.l.e(r0, r1)
                    r0 = r20
                    java.lang.String r1 = "title"
                    s1.z.c.l.e(r0, r1)
                    r0 = r21
                    java.lang.String r1 = "action"
                    s1.z.c.l.e(r0, r1)
                    r0 = r11
                    r1 = r20
                    r2 = r16
                    r3 = 0
                    r0.<init>(r1, r2, r3)
                    r0 = r11
                    r1 = r12
                    r0.f31511c = r1
                    r0 = r11
                    r1 = r14
                    r0.f31512d = r1
                    r0 = r11
                    r1 = r15
                    r0.f31513e = r1
                    r0 = r11
                    r1 = r16
                    r0.f31514f = r1
                    r0 = r11
                    r1 = r17
                    r0.f31515g = r1
                    r0 = r11
                    r1 = r18
                    r0.f31516h = r1
                    r0 = r11
                    r1 = r19
                    r0.f31517i = r1
                    r0 = r11
                    r1 = r20
                    r0.f31518j = r1
                    r0 = r11
                    r1 = r21
                    r0.f31519k = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p589j.AbstractC10567a.AbstractC10568a.C10570b.<init>(long, e.a.c.j.f$a, java.lang.String, boolean, com.truecaller.insights.models.DomainOrigin, java.lang.String, java.lang.String, java.lang.String, e.a.c.r.j.c, int):void");
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: a */
            public AbstractC10584c mo25781a() {
                return this.f31519k;
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: b */
            public String mo25780b() {
                return this.f31518j;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C10570b)) {
                        return false;
                    }
                    C10570b c10570b = (C10570b) obj;
                    return this.f31511c == c10570b.f31511c && l.a(this.f31512d, c10570b.f31512d) && l.a(this.f31513e, c10570b.f31513e) && this.f31514f == c10570b.f31514f && l.a(this.f31515g, c10570b.f31515g) && l.a(this.f31516h, c10570b.f31516h) && l.a(this.f31517i, c10570b.f31517i) && l.a(this.f31518j, c10570b.f31518j) && l.a(this.f31519k, c10570b.f31519k);
                }
                return true;
            }

            public int hashCode() {
                int m34274a = C4876d.m34274a(this.f31511c);
                AbstractC10443f.C10444a c10444a = this.f31512d;
                int i = 0;
                int hashCode = c10444a != null ? c10444a.hashCode() : 0;
                String str = this.f31513e;
                int hashCode2 = str != null ? str.hashCode() : 0;
                boolean z = this.f31514f;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                DomainOrigin domainOrigin = this.f31515g;
                int hashCode3 = domainOrigin != null ? domainOrigin.hashCode() : 0;
                String str2 = this.f31516h;
                int hashCode4 = str2 != null ? str2.hashCode() : 0;
                String str3 = this.f31517i;
                int hashCode5 = str3 != null ? str3.hashCode() : 0;
                String str4 = this.f31518j;
                int hashCode6 = str4 != null ? str4.hashCode() : 0;
                AbstractC10584c abstractC10584c = this.f31519k;
                if (abstractC10584c != null) {
                    i = abstractC10584c.hashCode();
                }
                return (((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Pay(messageId=");
                m8728C.append(this.f31511c);
                m8728C.append(", deepLink=");
                m8728C.append(this.f31512d);
                m8728C.append(", senderId=");
                m8728C.append(this.f31513e);
                m8728C.append(", isIM=");
                m8728C.append(this.f31514f);
                m8728C.append(", origin=");
                m8728C.append(this.f31515g);
                m8728C.append(", type=");
                m8728C.append(this.f31516h);
                m8728C.append(", analyticsContext=");
                m8728C.append(this.f31517i);
                m8728C.append(", title=");
                m8728C.append(this.f31518j);
                m8728C.append(", action=");
                m8728C.append(this.f31519k);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        public AbstractC10568a(String str, boolean z, f fVar) {
            super(str, null, z, 2);
        }
    }

    /* renamed from: e.a.c.r.j.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$b.class */
    public static final class C10571b extends AbstractC10567a {

        /* renamed from: c */
        public final String f31520c;

        /* renamed from: d */
        public final String f31521d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10571b(String str, String str2) {
            super(str, null, false, 6);
            l.e(str, "title");
            l.e(str2, "number");
            this.f31520c = str;
            this.f31521d = str2;
        }

        @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
        /* renamed from: b */
        public String mo25780b() {
            return this.f31520c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10571b)) {
                    return false;
                }
                C10571b c10571b = (C10571b) obj;
                return l.a(this.f31520c, c10571b.f31520c) && l.a(this.f31521d, c10571b.f31521d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31520c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31521d;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Call(title=");
            m8728C.append(this.f31520c);
            m8728C.append(", number=");
            return C22128a.m8618h(m8728C, this.f31521d, ")");
        }
    }

    /* renamed from: e.a.c.r.j.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$c.class */
    public static final class C10572c extends AbstractC10567a {

        /* renamed from: c */
        public final long f31522c;

        /* renamed from: d */
        public String f31523d;

        /* renamed from: e */
        public final String f31524e;

        /* renamed from: f */
        public final boolean f31525f;

        /* renamed from: g */
        public final DomainOrigin f31526g;

        /* renamed from: h */
        public final String f31527h;

        /* renamed from: i */
        public final AbstractC10584c f31528i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10572c(long j, String str, String str2, boolean z, DomainOrigin domainOrigin, String str3, AbstractC10584c abstractC10584c, int i) {
            super("", null, z, 2);
            C10596g c10596g = (i & 64) != 0 ? new C10596g(j, domainOrigin, str, str2, z, str3) : null;
            l.e(str, "domain");
            l.e(str2, "senderId");
            l.e(domainOrigin, "origin");
            l.e(str3, "analyticsContext");
            l.e(c10596g, "action");
            this.f31522c = j;
            this.f31523d = str;
            this.f31524e = str2;
            this.f31525f = z;
            this.f31526g = domainOrigin;
            this.f31527h = str3;
            this.f31528i = c10596g;
        }

        @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
        /* renamed from: a */
        public AbstractC10584c mo25781a() {
            return this.f31528i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10572c)) {
                    return false;
                }
                C10572c c10572c = (C10572c) obj;
                return this.f31522c == c10572c.f31522c && l.a(this.f31523d, c10572c.f31523d) && l.a(this.f31524e, c10572c.f31524e) && this.f31525f == c10572c.f31525f && l.a(this.f31526g, c10572c.f31526g) && l.a(this.f31527h, c10572c.f31527h) && l.a(this.f31528i, c10572c.f31528i);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f31522c);
            String str = this.f31523d;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31524e;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            boolean z = this.f31525f;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            DomainOrigin domainOrigin = this.f31526g;
            int hashCode3 = domainOrigin != null ? domainOrigin.hashCode() : 0;
            String str3 = this.f31527h;
            int hashCode4 = str3 != null ? str3.hashCode() : 0;
            AbstractC10584c abstractC10584c = this.f31528i;
            if (abstractC10584c != null) {
                i = abstractC10584c.hashCode();
            }
            return (((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Dismiss(messageId=");
            m8728C.append(this.f31522c);
            m8728C.append(", domain=");
            m8728C.append(this.f31523d);
            m8728C.append(", senderId=");
            m8728C.append(this.f31524e);
            m8728C.append(", isIM=");
            m8728C.append(this.f31525f);
            m8728C.append(", origin=");
            m8728C.append(this.f31526g);
            m8728C.append(", analyticsContext=");
            m8728C.append(this.f31527h);
            m8728C.append(", action=");
            m8728C.append(this.f31528i);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.r.j.a$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$d.class */
    public static final class C10573d extends AbstractC10567a {

        /* renamed from: c */
        public static final C10573d f31529c = new C10573d();

        public C10573d() {
            super("", null, false, 6);
        }
    }

    /* renamed from: e.a.c.r.j.a$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$e.class */
    public static final class C10574e extends AbstractC10567a {

        /* renamed from: c */
        public final String f31530c;

        /* renamed from: d */
        public final String f31531d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10574e(String str, String str2) {
            super(str, null, false, 6);
            l.e(str, "title");
            l.e(str2, "url");
            this.f31530c = str;
            this.f31531d = str2;
        }

        @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
        /* renamed from: b */
        public String mo25780b() {
            return this.f31530c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10574e)) {
                    return false;
                }
                C10574e c10574e = (C10574e) obj;
                return l.a(this.f31530c, c10574e.f31530c) && l.a(this.f31531d, c10574e.f31531d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31530c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31531d;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OpenWebUrl(title=");
            m8728C.append(this.f31530c);
            m8728C.append(", url=");
            return C22128a.m8618h(m8728C, this.f31531d, ")");
        }
    }

    /* renamed from: e.a.c.r.j.a$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$f.class */
    public static abstract class AbstractC10575f extends AbstractC10567a {

        /* renamed from: e.a.c.r.j.a$f$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$f$a.class */
        public static final class C10576a extends AbstractC10575f {

            /* renamed from: c */
            public final String f31532c;

            /* renamed from: d */
            public final long f31533d;

            /* renamed from: e */
            public final DomainOrigin f31534e;

            /* renamed from: f */
            public final String f31535f;

            /* renamed from: g */
            public final Context f31536g;

            /* renamed from: h */
            public final AbstractC10584c f31537h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10576a(String str, long j, DomainOrigin domainOrigin, String str2, Context context, AbstractC10584c abstractC10584c, int i) {
                super(str, null);
                context = (i & 16) != 0 ? null : context;
                C10590e c10590e = ((i & 32) == 0 || context == null) ? null : new C10590e(j, domainOrigin, str2, context);
                l.e(str, "title");
                l.e(domainOrigin, "origin");
                l.e(str2, AnalyticsConstants.OTP);
                this.f31532c = str;
                this.f31533d = j;
                this.f31534e = domainOrigin;
                this.f31535f = str2;
                this.f31536g = context;
                this.f31537h = c10590e;
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: a */
            public AbstractC10584c mo25781a() {
                return this.f31537h;
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: b */
            public String mo25780b() {
                return this.f31532c;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C10576a)) {
                        return false;
                    }
                    C10576a c10576a = (C10576a) obj;
                    return l.a(this.f31532c, c10576a.f31532c) && this.f31533d == c10576a.f31533d && l.a(this.f31534e, c10576a.f31534e) && l.a(this.f31535f, c10576a.f31535f) && l.a(this.f31536g, c10576a.f31536g) && l.a(this.f31537h, c10576a.f31537h);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f31532c;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                int m34274a = C4876d.m34274a(this.f31533d);
                DomainOrigin domainOrigin = this.f31534e;
                int hashCode2 = domainOrigin != null ? domainOrigin.hashCode() : 0;
                String str2 = this.f31535f;
                int hashCode3 = str2 != null ? str2.hashCode() : 0;
                Context context = this.f31536g;
                int hashCode4 = context != null ? context.hashCode() : 0;
                AbstractC10584c abstractC10584c = this.f31537h;
                if (abstractC10584c != null) {
                    i = abstractC10584c.hashCode();
                }
                return (((((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Copy(title=");
                m8728C.append(this.f31532c);
                m8728C.append(", messageId=");
                m8728C.append(this.f31533d);
                m8728C.append(", origin=");
                m8728C.append(this.f31534e);
                m8728C.append(", otp=");
                m8728C.append(this.f31535f);
                m8728C.append(", context=");
                m8728C.append(this.f31536g);
                m8728C.append(", action=");
                m8728C.append(this.f31537h);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        public AbstractC10575f(String str, f fVar) {
            super(str, null, false, 6);
        }
    }

    /* renamed from: e.a.c.r.j.a$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$g.class */
    public static final class C10577g extends AbstractC10567a {

        /* renamed from: c */
        public final long f31538c;

        /* renamed from: d */
        public final DomainOrigin f31539d;

        /* renamed from: e */
        public final String f31540e;

        /* renamed from: f */
        public final String f31541f;

        /* renamed from: g */
        public final boolean f31542g;

        /* renamed from: h */
        public final String f31543h;

        /* renamed from: i */
        public final AbstractC10584c f31544i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10577g(long j, DomainOrigin domainOrigin, String str, String str2, boolean z, String str3, AbstractC10584c abstractC10584c, int i) {
            super("", null, z, 2);
            C10642z c10642z = (i & 64) != 0 ? new C10642z(j, domainOrigin, str, str2, z, str3) : null;
            l.e(domainOrigin, "origin");
            l.e(str, "domain");
            l.e(str2, "senderId");
            l.e(str3, "analyticsContext");
            l.e(c10642z, "action");
            this.f31538c = j;
            this.f31539d = domainOrigin;
            this.f31540e = str;
            this.f31541f = str2;
            this.f31542g = z;
            this.f31543h = str3;
            this.f31544i = c10642z;
        }

        @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
        /* renamed from: a */
        public AbstractC10584c mo25781a() {
            return this.f31544i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10577g)) {
                    return false;
                }
                C10577g c10577g = (C10577g) obj;
                return this.f31538c == c10577g.f31538c && l.a(this.f31539d, c10577g.f31539d) && l.a(this.f31540e, c10577g.f31540e) && l.a(this.f31541f, c10577g.f31541f) && this.f31542g == c10577g.f31542g && l.a(this.f31543h, c10577g.f31543h) && l.a(this.f31544i, c10577g.f31544i);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f31538c);
            DomainOrigin domainOrigin = this.f31539d;
            int i = 0;
            int hashCode = domainOrigin != null ? domainOrigin.hashCode() : 0;
            String str = this.f31540e;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f31541f;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            boolean z = this.f31542g;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            String str3 = this.f31543h;
            int hashCode4 = str3 != null ? str3.hashCode() : 0;
            AbstractC10584c abstractC10584c = this.f31544i;
            if (abstractC10584c != null) {
                i = abstractC10584c.hashCode();
            }
            return (((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SendFeedback(messageId=");
            m8728C.append(this.f31538c);
            m8728C.append(", origin=");
            m8728C.append(this.f31539d);
            m8728C.append(", domain=");
            m8728C.append(this.f31540e);
            m8728C.append(", senderId=");
            m8728C.append(this.f31541f);
            m8728C.append(", isIM=");
            m8728C.append(this.f31542g);
            m8728C.append(", analyticsContext=");
            m8728C.append(this.f31543h);
            m8728C.append(", action=");
            m8728C.append(this.f31544i);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.r.j.a$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$h.class */
    public static abstract class AbstractC10578h extends AbstractC10567a {

        /* renamed from: e.a.c.r.j.a$h$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$h$a.class */
        public static final class C10579a extends AbstractC10578h {

            /* renamed from: c */
            public final long f31545c;

            /* renamed from: d */
            public final String f31546d;

            /* renamed from: e */
            public final boolean f31547e;

            /* renamed from: f */
            public final String f31548f;

            /* renamed from: g */
            public final Context f31549g;

            /* renamed from: h */
            public final String f31550h;

            /* renamed from: i */
            public final AbstractC10584c f31551i;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C10579a(long r8, java.lang.String r10, boolean r11, java.lang.String r12, android.content.Context r13, java.lang.String r14, p193e.p194a.p437c.p580r.p589j.AbstractC10584c r15, int r16) {
                /*
                    r7 = this;
                    r0 = r16
                    r1 = 32
                    r0 = r0 & r1
                    if (r0 == 0) goto Lf
                    java.lang.String r0 = "Contact"
                    r14 = r0
                    goto L12
                Lf:
                    r0 = 0
                    r14 = r0
                L12:
                    r0 = r16
                    r1 = 64
                    r0 = r0 & r1
                    if (r0 == 0) goto L2b
                    e.a.c.r.j.d0 r0 = new e.a.c.r.j.d0
                    r1 = r0
                    r2 = r8
                    r3 = r12
                    r4 = r13
                    r1.<init>(r2, r3, r4)
                    r15 = r0
                    goto L2e
                L2b:
                    r0 = 0
                    r15 = r0
                L2e:
                    r0 = r10
                    java.lang.String r1 = "senderId"
                    s1.z.c.l.e(r0, r1)
                    r0 = r12
                    java.lang.String r1 = "contactNumber"
                    s1.z.c.l.e(r0, r1)
                    r0 = r13
                    java.lang.String r1 = "context"
                    s1.z.c.l.e(r0, r1)
                    r0 = r14
                    java.lang.String r1 = "title"
                    s1.z.c.l.e(r0, r1)
                    r0 = r15
                    java.lang.String r1 = "action"
                    s1.z.c.l.e(r0, r1)
                    r0 = r7
                    r1 = r14
                    r2 = r11
                    r3 = 0
                    r0.<init>(r1, r2, r3)
                    r0 = r7
                    r1 = r8
                    r0.f31545c = r1
                    r0 = r7
                    r1 = r10
                    r0.f31546d = r1
                    r0 = r7
                    r1 = r11
                    r0.f31547e = r1
                    r0 = r7
                    r1 = r12
                    r0.f31548f = r1
                    r0 = r7
                    r1 = r13
                    r0.f31549g = r1
                    r0 = r7
                    r1 = r14
                    r0.f31550h = r1
                    r0 = r7
                    r1 = r15
                    r0.f31551i = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p589j.AbstractC10567a.AbstractC10578h.C10579a.<init>(long, java.lang.String, boolean, java.lang.String, android.content.Context, java.lang.String, e.a.c.r.j.c, int):void");
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: a */
            public AbstractC10584c mo25781a() {
                return this.f31551i;
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: b */
            public String mo25780b() {
                return this.f31550h;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C10579a)) {
                        return false;
                    }
                    C10579a c10579a = (C10579a) obj;
                    return this.f31545c == c10579a.f31545c && l.a(this.f31546d, c10579a.f31546d) && this.f31547e == c10579a.f31547e && l.a(this.f31548f, c10579a.f31548f) && l.a(this.f31549g, c10579a.f31549g) && l.a(this.f31550h, c10579a.f31550h) && l.a(this.f31551i, c10579a.f31551i);
                }
                return true;
            }

            public int hashCode() {
                int m34274a = C4876d.m34274a(this.f31545c);
                String str = this.f31546d;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                boolean z = this.f31547e;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                String str2 = this.f31548f;
                int hashCode2 = str2 != null ? str2.hashCode() : 0;
                Context context = this.f31549g;
                int hashCode3 = context != null ? context.hashCode() : 0;
                String str3 = this.f31550h;
                int hashCode4 = str3 != null ? str3.hashCode() : 0;
                AbstractC10584c abstractC10584c = this.f31551i;
                if (abstractC10584c != null) {
                    i = abstractC10584c.hashCode();
                }
                return (((((((((((m34274a * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("TravelContact(messageId=");
                m8728C.append(this.f31545c);
                m8728C.append(", senderId=");
                m8728C.append(this.f31546d);
                m8728C.append(", isIM=");
                m8728C.append(this.f31547e);
                m8728C.append(", contactNumber=");
                m8728C.append(this.f31548f);
                m8728C.append(", context=");
                m8728C.append(this.f31549g);
                m8728C.append(", title=");
                m8728C.append(this.f31550h);
                m8728C.append(", action=");
                m8728C.append(this.f31551i);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.c.r.j.a$h$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a$h$b.class */
        public static final class C10580b extends AbstractC10578h {

            /* renamed from: c */
            public final long f31552c;

            /* renamed from: d */
            public final String f31553d;

            /* renamed from: e */
            public final boolean f31554e;

            /* renamed from: f */
            public final String f31555f;

            /* renamed from: g */
            public final Context f31556g;

            /* renamed from: h */
            public final String f31557h;

            /* renamed from: i */
            public final AbstractC10584c f31558i;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C10580b(long r8, java.lang.String r10, boolean r11, java.lang.String r12, android.content.Context r13, java.lang.String r14, p193e.p194a.p437c.p580r.p589j.AbstractC10584c r15, int r16) {
                /*
                    r7 = this;
                    r0 = r16
                    r1 = 32
                    r0 = r0 & r1
                    if (r0 == 0) goto Lf
                    java.lang.String r0 = "Web Check-In"
                    r14 = r0
                    goto L12
                Lf:
                    r0 = 0
                    r14 = r0
                L12:
                    r0 = r16
                    r1 = 64
                    r0 = r0 & r1
                    if (r0 == 0) goto L2b
                    e.a.c.r.j.f0 r0 = new e.a.c.r.j.f0
                    r1 = r0
                    r2 = r8
                    r3 = r12
                    r4 = r13
                    r1.<init>(r2, r3, r4)
                    r15 = r0
                    goto L2e
                L2b:
                    r0 = 0
                    r15 = r0
                L2e:
                    r0 = r10
                    java.lang.String r1 = "senderId"
                    s1.z.c.l.e(r0, r1)
                    r0 = r12
                    java.lang.String r1 = "checkInUrl"
                    s1.z.c.l.e(r0, r1)
                    r0 = r13
                    java.lang.String r1 = "context"
                    s1.z.c.l.e(r0, r1)
                    r0 = r14
                    java.lang.String r1 = "title"
                    s1.z.c.l.e(r0, r1)
                    r0 = r15
                    java.lang.String r1 = "action"
                    s1.z.c.l.e(r0, r1)
                    r0 = r7
                    r1 = r14
                    r2 = r11
                    r3 = 0
                    r0.<init>(r1, r2, r3)
                    r0 = r7
                    r1 = r8
                    r0.f31552c = r1
                    r0 = r7
                    r1 = r10
                    r0.f31553d = r1
                    r0 = r7
                    r1 = r11
                    r0.f31554e = r1
                    r0 = r7
                    r1 = r12
                    r0.f31555f = r1
                    r0 = r7
                    r1 = r13
                    r0.f31556g = r1
                    r0 = r7
                    r1 = r14
                    r0.f31557h = r1
                    r0 = r7
                    r1 = r15
                    r0.f31558i = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p589j.AbstractC10567a.AbstractC10578h.C10580b.<init>(long, java.lang.String, boolean, java.lang.String, android.content.Context, java.lang.String, e.a.c.r.j.c, int):void");
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: a */
            public AbstractC10584c mo25781a() {
                return this.f31558i;
            }

            @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10567a
            /* renamed from: b */
            public String mo25780b() {
                return this.f31557h;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C10580b)) {
                        return false;
                    }
                    C10580b c10580b = (C10580b) obj;
                    return this.f31552c == c10580b.f31552c && l.a(this.f31553d, c10580b.f31553d) && this.f31554e == c10580b.f31554e && l.a(this.f31555f, c10580b.f31555f) && l.a(this.f31556g, c10580b.f31556g) && l.a(this.f31557h, c10580b.f31557h) && l.a(this.f31558i, c10580b.f31558i);
                }
                return true;
            }

            public int hashCode() {
                int m34274a = C4876d.m34274a(this.f31552c);
                String str = this.f31553d;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                boolean z = this.f31554e;
                int i2 = z ? 1 : 0;
                if (z) {
                    i2 = 1;
                }
                String str2 = this.f31555f;
                int hashCode2 = str2 != null ? str2.hashCode() : 0;
                Context context = this.f31556g;
                int hashCode3 = context != null ? context.hashCode() : 0;
                String str3 = this.f31557h;
                int hashCode4 = str3 != null ? str3.hashCode() : 0;
                AbstractC10584c abstractC10584c = this.f31558i;
                if (abstractC10584c != null) {
                    i = abstractC10584c.hashCode();
                }
                return (((((((((((m34274a * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("WebCheckIn(messageId=");
                m8728C.append(this.f31552c);
                m8728C.append(", senderId=");
                m8728C.append(this.f31553d);
                m8728C.append(", isIM=");
                m8728C.append(this.f31554e);
                m8728C.append(", checkInUrl=");
                m8728C.append(this.f31555f);
                m8728C.append(", context=");
                m8728C.append(this.f31556g);
                m8728C.append(", title=");
                m8728C.append(this.f31557h);
                m8728C.append(", action=");
                m8728C.append(this.f31558i);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        public AbstractC10578h(String str, boolean z, f fVar) {
            super(str, null, z, 2);
        }
    }

    public AbstractC10567a(String str, AbstractC10584c abstractC10584c, boolean z, int i) {
        this.f31501a = str;
    }

    /* renamed from: a */
    public AbstractC10584c mo25781a() {
        return this.f31502b;
    }

    /* renamed from: b */
    public String mo25780b() {
        return this.f31501a;
    }
}
