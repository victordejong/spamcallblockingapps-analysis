package p193e.p194a.p673d0.p674a;

import com.truecaller.callerid.window.InfoLineStyle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d0.a.x */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/x.class */
public abstract class AbstractC12464x {

    /* renamed from: e.a.d0.a.x$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/x$a.class */
    public static final class C12465a extends AbstractC12464x {

        /* renamed from: a */
        public final String f36411a;

        /* renamed from: b */
        public final String f36412b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12465a(String str, String str2) {
            super(null);
            l.e(str2, "address");
            this.f36411a = str;
            this.f36412b = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C12465a)) {
                    return false;
                }
                C12465a c12465a = (C12465a) obj;
                return l.a(this.f36411a, c12465a.f36411a) && l.a(this.f36412b, c12465a.f36412b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f36411a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f36412b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Location(timezone=");
            m8728C.append(this.f36411a);
            m8728C.append(", address=");
            return C22128a.m8618h(m8728C, this.f36412b, ")");
        }
    }

    /* renamed from: e.a.d0.a.x$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/x$b.class */
    public static final class C12466b extends AbstractC12464x {

        /* renamed from: a */
        public final String f36413a;

        /* renamed from: b */
        public final InfoLineStyle f36414b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12466b(String str, InfoLineStyle infoLineStyle) {
            super(null);
            l.e(str, "text");
            l.e(infoLineStyle, "style");
            this.f36413a = str;
            this.f36414b = infoLineStyle;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12466b(String str, InfoLineStyle infoLineStyle, int i) {
            super(null);
            InfoLineStyle infoLineStyle2 = (i & 2) != 0 ? InfoLineStyle.NORMAL : null;
            l.e(str, "text");
            l.e(infoLineStyle2, "style");
            this.f36413a = str;
            this.f36414b = infoLineStyle2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C12466b)) {
                    return false;
                }
                C12466b c12466b = (C12466b) obj;
                return l.a(this.f36413a, c12466b.f36413a) && l.a(this.f36414b, c12466b.f36414b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f36413a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            InfoLineStyle infoLineStyle = this.f36414b;
            if (infoLineStyle != null) {
                i = infoLineStyle.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Regular(text=");
            m8728C.append(this.f36413a);
            m8728C.append(", style=");
            m8728C.append(this.f36414b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d0.a.x$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/x$c.class */
    public static final class C12467c extends AbstractC12464x {

        /* renamed from: a */
        public final String f36415a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12467c(String str) {
            super(null);
            l.e(str, "text");
            this.f36415a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12467c) && l.a(this.f36415a, ((C12467c) obj).f36415a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f36415a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Spam(text="), this.f36415a, ")");
        }
    }

    public AbstractC12464x() {
    }

    public AbstractC12464x(f fVar) {
    }
}
