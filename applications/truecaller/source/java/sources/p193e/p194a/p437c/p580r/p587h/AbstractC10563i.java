package p193e.p194a.p437c.p580r.p587h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1712f.C25253j;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.h.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/h/i.class */
public abstract class AbstractC10563i {

    /* renamed from: e.a.c.r.h.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/h/i$a.class */
    public static final class C10564a extends AbstractC10563i {

        /* renamed from: a */
        public final Throwable f31491a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10564a(Throwable th) {
            super(null);
            l.e(th, "error");
            this.f31491a = th;
        }
    }

    /* renamed from: e.a.c.r.h.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/h/i$b.class */
    public static final class C10565b extends AbstractC10563i {

        /* renamed from: a */
        public final C25253j f31492a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10565b(C25253j c25253j) {
            super(null);
            l.e(c25253j, "response");
            this.f31492a = c25253j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10565b) && l.a(this.f31492a, ((C10565b) obj).f31492a);
            }
            return true;
        }

        public int hashCode() {
            C25253j c25253j = this.f31492a;
            return c25253j != null ? c25253j.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SmsDetailedResponse(response=");
            m8728C.append(this.f31492a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC10563i(f fVar) {
    }
}
