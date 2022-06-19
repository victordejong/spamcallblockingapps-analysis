package p193e.p194a.p619d.p663x.p664q;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.x.q.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/i.class */
public abstract class AbstractC12237i {

    /* renamed from: e.a.d.x.q.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/i$a.class */
    public static final class C12238a extends AbstractC12237i {

        /* renamed from: a */
        public static final C12238a f35743a = new C12238a();

        public C12238a() {
            super(null);
        }
    }

    /* renamed from: e.a.d.x.q.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/i$b.class */
    public static final class C12239b extends AbstractC12237i {

        /* renamed from: a */
        public final Set<Integer> f35744a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12239b(Set<Integer> set) {
            super(null);
            l.e(set, "peers");
            this.f35744a = set;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12239b) && l.a(this.f35744a, ((C12239b) obj).f35744a);
            }
            return true;
        }

        public int hashCode() {
            Set<Integer> set = this.f35744a;
            return set != null ? set.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Updated(peers=");
            m8728C.append(this.f35744a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC12237i() {
    }

    public AbstractC12237i(f fVar) {
    }
}
