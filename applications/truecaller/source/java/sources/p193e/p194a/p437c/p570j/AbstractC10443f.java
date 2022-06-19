package p193e.p194a.p437c.p570j;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.j.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/j/f.class */
public abstract class AbstractC10443f {

    /* renamed from: e.a.c.j.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/j/f$a.class */
    public static final class C10444a extends AbstractC10443f {

        /* renamed from: a */
        public String f31108a;

        /* renamed from: b */
        public final C10438a f31109b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10444a(String str, C10438a c10438a) {
            super(null);
            l.e(str, "link");
            l.e(c10438a, "meta");
            this.f31108a = str;
            this.f31109b = c10438a;
        }

        @Override // p193e.p194a.p437c.p570j.AbstractC10443f
        /* renamed from: a */
        public String mo26134a() {
            return this.f31108a;
        }

        @Override // p193e.p194a.p437c.p570j.AbstractC10443f
        /* renamed from: b */
        public void mo26133b(String str) {
            l.e(str, "<set-?>");
            this.f31108a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10444a)) {
                    return false;
                }
                C10444a c10444a = (C10444a) obj;
                return l.a(this.f31108a, c10444a.f31108a) && l.a(this.f31109b, c10444a.f31109b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31108a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            C10438a c10438a = this.f31109b;
            if (c10438a != null) {
                i = c10438a.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PayBillDeepLink(link=");
            m8728C.append(this.f31108a);
            m8728C.append(", meta=");
            m8728C.append(this.f31109b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC10443f(f fVar) {
    }

    /* renamed from: a */
    public abstract String mo26134a();

    /* renamed from: b */
    public abstract void mo26133b(String str);
}
