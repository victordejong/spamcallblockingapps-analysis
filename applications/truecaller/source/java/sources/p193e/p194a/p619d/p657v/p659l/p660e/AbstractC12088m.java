package p193e.p194a.p619d.p657v.p659l.p660e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.l.e.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/m.class */
public abstract class AbstractC12088m {

    /* renamed from: e.a.d.v.l.e.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/m$a.class */
    public static final class C12089a extends AbstractC12088m {

        /* renamed from: a */
        public final AbstractC12022c.AbstractC12024b f35372a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12089a(AbstractC12022c.AbstractC12024b abstractC12024b) {
            super(null);
            l.e(abstractC12024b, "endState");
            this.f35372a = abstractC12024b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12089a) && l.a(this.f35372a, ((C12089a) obj).f35372a);
            }
            return true;
        }

        public int hashCode() {
            AbstractC12022c.AbstractC12024b abstractC12024b = this.f35372a;
            return abstractC12024b != null ? abstractC12024b.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Failed(endState=");
            m8728C.append(this.f35372a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.v.l.e.m$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/m$b.class */
    public static final class C12090b extends AbstractC12088m {

        /* renamed from: a */
        public static final C12090b f35373a = new C12090b();

        public C12090b() {
            super(null);
        }
    }

    /* renamed from: e.a.d.v.l.e.m$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/m$c.class */
    public static final class C12091c extends AbstractC12088m {

        /* renamed from: a */
        public static final C12091c f35374a = new C12091c();

        public C12091c() {
            super(null);
        }
    }

    public AbstractC12088m() {
    }

    public AbstractC12088m(f fVar) {
    }
}
