package p193e.p194a.p947k.p969c;

import p1727n3.p1834m0.EnumC26841q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.c.p */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/p.class */
public abstract class AbstractC16039p {

    /* renamed from: e.a.k.c.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/p$a.class */
    public static final class C16040a extends AbstractC16039p {

        /* renamed from: a */
        public final EnumC26841q f45223a = EnumC26841q.CONNECTED;

        /* renamed from: b */
        public final String f45224b;

        /* renamed from: c */
        public final String f45225c;

        /* renamed from: d */
        public final String f45226d;

        /* renamed from: e */
        public final String f45227e;

        /* renamed from: f */
        public final long f45228f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16040a(String str, String str2, String str3, String str4, long j) {
            super(null);
            l.e(str, "url");
            l.e(str3, "analyticsContext");
            this.f45224b = str;
            this.f45225c = str2;
            this.f45226d = str3;
            this.f45227e = str4;
            this.f45228f = j;
        }

        @Override // p193e.p194a.p947k.p969c.AbstractC16039p
        /* renamed from: a */
        public EnumC26841q mo17969a() {
            return this.f45223a;
        }

        @Override // p193e.p194a.p947k.p969c.AbstractC16039p
        /* renamed from: b */
        public String mo17968b() {
            return this.f45224b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16040a)) {
                    return false;
                }
                C16040a c16040a = (C16040a) obj;
                return l.a(this.f45224b, c16040a.f45224b) && l.a(this.f45225c, c16040a.f45225c) && l.a(this.f45226d, c16040a.f45226d) && l.a(this.f45227e, c16040a.f45227e) && this.f45228f == c16040a.f45228f;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f45224b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f45225c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f45226d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f45227e;
            if (str4 != null) {
                i = str4.hashCode();
            }
            return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + C4876d.m34274a(this.f45228f);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Business(url=");
            m8728C.append(this.f45224b);
            m8728C.append(", identifier=");
            m8728C.append(this.f45225c);
            m8728C.append(", analyticsContext=");
            m8728C.append(this.f45226d);
            m8728C.append(", businessNumber=");
            m8728C.append(this.f45227e);
            m8728C.append(", playOnDownloadPercentage=");
            return C22128a.m8693K2(m8728C, this.f45228f, ")");
        }
    }

    /* renamed from: e.a.k.c.p$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/p$b.class */
    public static final class C16041b extends AbstractC16039p {

        /* renamed from: a */
        public final String f45229a;

        /* renamed from: b */
        public final EnumC26841q f45230b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16041b(String str, EnumC26841q enumC26841q) {
            super(null);
            l.e(str, "url");
            l.e(enumC26841q, "networkType");
            this.f45229a = str;
            this.f45230b = enumC26841q;
        }

        @Override // p193e.p194a.p947k.p969c.AbstractC16039p
        /* renamed from: a */
        public EnumC26841q mo17969a() {
            return this.f45230b;
        }

        @Override // p193e.p194a.p947k.p969c.AbstractC16039p
        /* renamed from: b */
        public String mo17968b() {
            return this.f45229a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16041b)) {
                    return false;
                }
                C16041b c16041b = (C16041b) obj;
                return l.a(this.f45229a, c16041b.f45229a) && l.a(this.f45230b, c16041b.f45230b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f45229a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            EnumC26841q enumC26841q = this.f45230b;
            if (enumC26841q != null) {
                i = enumC26841q.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Regular(url=");
            m8728C.append(this.f45229a);
            m8728C.append(", networkType=");
            m8728C.append(this.f45230b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC16039p(f fVar) {
    }

    /* renamed from: a */
    public abstract EnumC26841q mo17969a();

    /* renamed from: b */
    public abstract String mo17968b();
}
