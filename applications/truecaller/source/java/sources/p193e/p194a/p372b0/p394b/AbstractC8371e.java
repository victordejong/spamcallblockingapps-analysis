package p193e.p194a.p372b0.p394b;

import com.truecaller.common.network.KnownDomain;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b0.b.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/e.class */
public abstract class AbstractC8371e {

    /* renamed from: e.a.b0.b.e$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/e$a.class */
    public static final class C8372a extends AbstractC8371e {

        /* renamed from: a */
        public static final C8372a f25732a = new C8372a();

        public C8372a() {
            super(null);
        }
    }

    /* renamed from: e.a.b0.b.e$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/e$b.class */
    public static final class C8373b extends AbstractC8371e {

        /* renamed from: a */
        public final KnownDomain f25733a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8373b(KnownDomain knownDomain) {
            super(null);
            l.e(knownDomain, "domain");
            this.f25733a = knownDomain;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8373b) && l.a(this.f25733a, ((C8373b) obj).f25733a);
            }
            return true;
        }

        public int hashCode() {
            KnownDomain knownDomain = this.f25733a;
            return knownDomain != null ? knownDomain.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Specific(domain=");
            m8728C.append(this.f25733a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC8371e() {
    }

    public AbstractC8371e(f fVar) {
    }
}
