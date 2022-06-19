package p193e.p194a.p619d.p637c0;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/c0.class */
public abstract class AbstractC11387c0<T> {

    /* renamed from: e.a.d.c0.c0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/c0$a.class */
    public static final class C11388a<T> extends AbstractC11387c0<T> {

        /* renamed from: a */
        public final Set<T> f33453a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C11388a(Set<? extends T> set) {
            super(null);
            l.e(set, "items");
            this.f33453a = set;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11388a) && l.a(this.f33453a, ((C11388a) obj).f33453a);
            }
            return true;
        }

        public int hashCode() {
            Set<T> set = this.f33453a;
            return set != null ? set.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Added(items=");
            m8728C.append(this.f33453a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.c0.c0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/c0$b.class */
    public static final class C11389b<T> extends AbstractC11387c0<T> {

        /* renamed from: a */
        public final Set<T> f33454a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C11389b(Set<? extends T> set) {
            super(null);
            l.e(set, "items");
            this.f33454a = set;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11389b) && l.a(this.f33454a, ((C11389b) obj).f33454a);
            }
            return true;
        }

        public int hashCode() {
            Set<T> set = this.f33454a;
            return set != null ? set.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Deleted(items=");
            m8728C.append(this.f33454a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC11387c0() {
    }

    public AbstractC11387c0(f fVar) {
    }
}
