package p193e.p194a.p947k.p969c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.c.t0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/t0.class */
public abstract class AbstractC16083t0 {

    /* renamed from: e.a.k.c.t0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/t0$a.class */
    public static final class C16084a extends AbstractC16083t0 {

        /* renamed from: a */
        public final String f45318a;

        /* renamed from: b */
        public final String f45319b;

        /* renamed from: c */
        public final float f45320c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16084a(String str, String str2, float f) {
            super(null);
            l.e(str, "url");
            this.f45318a = str;
            this.f45319b = str2;
            this.f45320c = f;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16084a)) {
                    return false;
                }
                C16084a c16084a = (C16084a) obj;
                return l.a(this.f45318a, c16084a.f45318a) && l.a(this.f45319b, c16084a.f45319b) && Float.compare(this.f45320c, c16084a.f45320c) == 0;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f45318a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f45319b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return Float.floatToIntBits(this.f45320c) + (((hashCode * 31) + i) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Downloaded(url=");
            m8728C.append(this.f45318a);
            m8728C.append(", identifier=");
            m8728C.append(this.f45319b);
            m8728C.append(", downloadPercentage=");
            m8728C.append(this.f45320c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.c.t0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/t0$b.class */
    public static final class C16085b extends AbstractC16083t0 {

        /* renamed from: a */
        public static final C16085b f45321a = new C16085b();

        public C16085b() {
            super(null);
        }
    }

    /* renamed from: e.a.k.c.t0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/t0$c.class */
    public static final class C16086c extends AbstractC16083t0 {

        /* renamed from: a */
        public final String f45322a;

        /* renamed from: b */
        public final String f45323b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16086c(String str, String str2) {
            super(null);
            l.e(str, "url");
            this.f45322a = str;
            this.f45323b = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16086c)) {
                    return false;
                }
                C16086c c16086c = (C16086c) obj;
                return l.a(this.f45322a, c16086c.f45322a) && l.a(this.f45323b, c16086c.f45323b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f45322a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f45323b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Playing(url=");
            m8728C.append(this.f45322a);
            m8728C.append(", identifier=");
            return C22128a.m8618h(m8728C, this.f45323b, ")");
        }
    }

    public AbstractC16083t0() {
    }

    public AbstractC16083t0(f fVar) {
    }
}
