package p193e.p194a.p619d.p657v.p659l;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p621a0.AbstractC11061a;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.l.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c.class */
public abstract class AbstractC12022c extends AbstractC11061a {

    /* renamed from: e.a.d.v.l.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$a.class */
    public static final class C12023a extends AbstractC12022c {

        /* renamed from: b */
        public static final C12023a f35245b = new C12023a();

        public C12023a() {
            super(0, null);
        }
    }

    /* renamed from: e.a.d.v.l.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b.class */
    public static abstract class AbstractC12024b extends AbstractC12022c {

        /* renamed from: e.a.d.v.l.c$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$a.class */
        public static final class C12025a extends AbstractC12024b {

            /* renamed from: b */
            public static final C12025a f35246b = new C12025a();

            public C12025a() {
                super(null);
            }
        }

        /* renamed from: e.a.d.v.l.c$b$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$b.class */
        public static final class C12026b extends AbstractC12024b {

            /* renamed from: b */
            public static final C12026b f35247b = new C12026b();

            public C12026b() {
                super(null);
            }
        }

        /* renamed from: e.a.d.v.l.c$b$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$c.class */
        public static final class C12027c extends AbstractC12024b {

            /* renamed from: b */
            public final AbstractC11840h.AbstractC11842b f35248b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12027c(AbstractC11840h.AbstractC11842b abstractC11842b) {
                super(null);
                l.e(abstractC11842b, "endState");
                this.f35248b = abstractC11842b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C12027c) && l.a(this.f35248b, ((C12027c) obj).f35248b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC11840h.AbstractC11842b abstractC11842b = this.f35248b;
                return abstractC11842b != null ? abstractC11842b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("GroupCallEnded(endState=");
                m8728C.append(this.f35248b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.d.v.l.c$b$d */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$d.class */
        public static final class C12028d extends AbstractC12024b {

            /* renamed from: b */
            public static final C12028d f35249b = new C12028d();

            public C12028d() {
                super(null);
            }
        }

        /* renamed from: e.a.d.v.l.c$b$e */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$e.class */
        public static final class C12029e extends AbstractC12024b {

            /* renamed from: b */
            public static final C12029e f35250b = new C12029e();

            public C12029e() {
                super(null);
            }
        }

        /* renamed from: e.a.d.v.l.c$b$f */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$f.class */
        public static final class C12030f extends AbstractC12024b {

            /* renamed from: b */
            public static final C12030f f35251b = new C12030f();

            public C12030f() {
                super(null);
            }
        }

        /* renamed from: e.a.d.v.l.c$b$g */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$g.class */
        public static final class C12031g extends AbstractC12024b {

            /* renamed from: b */
            public static final C12031g f35252b = new C12031g();

            public C12031g() {
                super(null);
            }
        }

        /* renamed from: e.a.d.v.l.c$b$h */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$b$h.class */
        public static final class C12032h extends AbstractC12024b {

            /* renamed from: b */
            public static final C12032h f35253b = new C12032h();

            public C12032h() {
                super(null);
            }
        }

        public AbstractC12024b(f fVar) {
            super(3, null);
        }
    }

    /* renamed from: e.a.d.v.l.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$c.class */
    public static final class C12033c extends AbstractC12022c {

        /* renamed from: b */
        public static final C12033c f35254b = new C12033c();

        public C12033c() {
            super(2, null);
        }
    }

    /* renamed from: e.a.d.v.l.c$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/c$d.class */
    public static final class C12034d extends AbstractC12022c {

        /* renamed from: b */
        public static final C12034d f35255b = new C12034d();

        public C12034d() {
            super(1, null);
        }
    }

    public AbstractC12022c(int i, f fVar) {
        super(i);
    }
}
