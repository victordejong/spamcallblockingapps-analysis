package p193e.p194a.p619d.p663x;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.x.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/k.class */
public abstract class AbstractC12213k {

    /* renamed from: e.a.d.x.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/k$a.class */
    public static final class C12214a extends AbstractC12213k {

        /* renamed from: a */
        public static final C12214a f35675a = new C12214a();

        public C12214a() {
            super(null);
        }
    }

    /* renamed from: e.a.d.x.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/k$b.class */
    public static final class C12215b extends AbstractC12213k {

        /* renamed from: a */
        public final Set<Integer> f35676a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12215b(Set<Integer> set) {
            super(null);
            l.e(set, "peers");
            this.f35676a = set;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12215b) && l.a(this.f35676a, ((C12215b) obj).f35676a);
            }
            return true;
        }

        public int hashCode() {
            Set<Integer> set = this.f35676a;
            return set != null ? set.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Updated(peers=");
            m8728C.append(this.f35676a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC12213k() {
    }

    public AbstractC12213k(f fVar) {
    }
}
