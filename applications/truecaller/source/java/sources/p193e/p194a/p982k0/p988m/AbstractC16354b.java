package p193e.p194a.p982k0.p988m;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k0.m.b */
/* loaded from: classes7-dex2jar.jar:e/a/k0/m/b.class */
public abstract class AbstractC16354b {

    /* renamed from: e.a.k0.m.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/m/b$a.class */
    public static final class C16355a extends AbstractC16354b {

        /* renamed from: a */
        public static final C16355a f46016a = new C16355a();

        public C16355a() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.m.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/m/b$b.class */
    public static final class C16356b extends AbstractC16354b {

        /* renamed from: a */
        public static final C16356b f46017a = new C16356b();

        public C16356b() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.m.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/m/b$c.class */
    public static final class C16357c extends AbstractC16354b {

        /* renamed from: a */
        public static final C16357c f46018a = new C16357c();

        public C16357c() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.m.b$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/m/b$d.class */
    public static final class C16358d extends AbstractC16354b {

        /* renamed from: a */
        public final String f46019a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16358d(String str) {
            super(null);
            l.e(str, AnalyticsConstants.NAME);
            this.f46019a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16358d) && l.a(this.f46019a, ((C16358d) obj).f46019a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f46019a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Success(name="), this.f46019a, ")");
        }
    }

    public AbstractC16354b(f fVar) {
    }
}
