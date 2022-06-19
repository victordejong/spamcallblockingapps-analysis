package p193e.p194a.p773g.p781f;

import com.truecaller.acs.analytics.DismissReason;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.g.f.f */
/* loaded from: classes4-dex2jar.jar:e/a/g/f/f.class */
public abstract class AbstractC14250f {

    /* renamed from: e.a.g.f.f$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/f/f$a.class */
    public static final class C14251a extends AbstractC14250f {

        /* renamed from: a */
        public static final C14251a f41171a = new C14251a();

        public C14251a() {
            super(null);
        }
    }

    /* renamed from: e.a.g.f.f$b */
    /* loaded from: classes4-dex2jar.jar:e/a/g/f/f$b.class */
    public static final class C14252b extends AbstractC14250f {

        /* renamed from: a */
        public final DismissReason f41172a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14252b(DismissReason dismissReason) {
            super(null);
            l.e(dismissReason, "dismissReason");
            this.f41172a = dismissReason;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C14252b) && l.a(this.f41172a, ((C14252b) obj).f41172a);
            }
            return true;
        }

        public int hashCode() {
            DismissReason dismissReason = this.f41172a;
            return dismissReason != null ? dismissReason.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("DismissEvent(dismissReason=");
            m8728C.append(this.f41172a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.g.f.f$c */
    /* loaded from: classes4-dex2jar.jar:e/a/g/f/f$c.class */
    public static final class C14253c extends AbstractC14250f {

        /* renamed from: a */
        public final AbstractC14247e f41173a;

        public C14253c() {
            super(null);
            this.f41173a = null;
        }

        public C14253c(AbstractC14247e abstractC14247e) {
            super(null);
            this.f41173a = abstractC14247e;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C14253c) && l.a(this.f41173a, ((C14253c) obj).f41173a);
            }
            return true;
        }

        public int hashCode() {
            AbstractC14247e abstractC14247e = this.f41173a;
            return abstractC14247e != null ? abstractC14247e.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ViewVisitEvent(source=");
            m8728C.append(this.f41173a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.g.f.f$d */
    /* loaded from: classes4-dex2jar.jar:e/a/g/f/f$d.class */
    public static final class C14254d extends AbstractC14250f {

        /* renamed from: a */
        public static final C14254d f41174a = new C14254d();

        public C14254d() {
            super(null);
        }
    }

    public AbstractC14250f() {
    }

    public AbstractC14250f(f fVar) {
    }
}
