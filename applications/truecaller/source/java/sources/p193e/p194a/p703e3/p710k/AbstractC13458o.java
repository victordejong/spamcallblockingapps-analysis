package p193e.p194a.p703e3.p710k;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1135v0.AbstractC19331a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.e3.k.o */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/o.class */
public abstract class AbstractC13458o {

    /* renamed from: e.a.e3.k.o$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/o$a.class */
    public static final class C13459a extends AbstractC13458o {

        /* renamed from: a */
        public final AbstractC19331a f39067a;

        /* renamed from: b */
        public final long f39068b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13459a(AbstractC19331a abstractC19331a, long j) {
            super(null);
            l.e(abstractC19331a, "state");
            this.f39067a = abstractC19331a;
            this.f39068b = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C13459a)) {
                    return false;
                }
                C13459a c13459a = (C13459a) obj;
                return l.a(this.f39067a, c13459a.f39067a) && this.f39068b == c13459a.f39068b;
            }
            return true;
        }

        public int hashCode() {
            AbstractC19331a abstractC19331a = this.f39067a;
            return ((abstractC19331a != null ? abstractC19331a.hashCode() : 0) * 31) + C4876d.m34274a(this.f39068b);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Cached(state=");
            m8728C.append(this.f39067a);
            m8728C.append(", cachedTime=");
            return C22128a.m8693K2(m8728C, this.f39068b, ")");
        }
    }

    /* renamed from: e.a.e3.k.o$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/o$b.class */
    public static final class C13460b extends AbstractC13458o {

        /* renamed from: a */
        public static final C13460b f39069a = new C13460b();

        public C13460b() {
            super(null);
        }
    }

    public AbstractC13458o() {
    }

    public AbstractC13458o(f fVar) {
    }
}
