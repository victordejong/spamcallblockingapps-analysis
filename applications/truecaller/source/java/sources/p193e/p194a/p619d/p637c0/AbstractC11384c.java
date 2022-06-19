package p193e.p194a.p619d.p637c0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/c.class */
public abstract class AbstractC11384c {

    /* renamed from: e.a.d.c0.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/c$a.class */
    public static final class C11385a extends AbstractC11384c {

        /* renamed from: a */
        public final String f33451a;

        public C11385a() {
            this(null, 1);
        }

        public C11385a(String str) {
            super(null);
            this.f33451a = str;
        }

        public /* synthetic */ C11385a(String str, int i) {
            this(null);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11385a) && l.a(this.f33451a, ((C11385a) obj).f33451a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f33451a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Active(channelId="), this.f33451a, ")");
        }
    }

    /* renamed from: e.a.d.c0.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/c$b.class */
    public static final class C11386b extends AbstractC11384c {

        /* renamed from: a */
        public static final C11386b f33452a = new C11386b();

        public C11386b() {
            super(null);
        }
    }

    public AbstractC11384c(f fVar) {
    }
}
