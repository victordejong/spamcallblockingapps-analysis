package p459j.p460a.p474c0.p475c.p479z;

import p459j.p460a.p474c0.p475c.p479z.AbstractC11673s;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.z.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/n.class */
public abstract class AbstractC11667n extends AbstractC11673s<AbstractC11669o> {

    /* renamed from: a */
    public final int f26184a;

    /* renamed from: b */
    public final int f26185b;

    /* renamed from: c */
    public final int f26186c;

    /* renamed from: d */
    public final int f26187d;

    /* renamed from: e */
    public final boolean f26188e;

    /* renamed from: f */
    public final boolean f26189f;

    /* renamed from: g */
    public final int f26190g;

    /* renamed from: h */
    public final int f26191h;

    /* renamed from: j.a.c0.c.z.n$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/n$a.class */
    public static abstract class AbstractC11668a<B extends AbstractC11668a<B>> extends AbstractC11673s.AbstractC11674a<AbstractC11669o> {

        /* renamed from: a */
        public int f26192a = -1;

        /* renamed from: b */
        public int f26193b = -1;

        /* renamed from: c */
        public int f26194c = -1;

        /* renamed from: d */
        public int f26195d = -1;

        /* renamed from: e */
        public boolean f26196e = false;

        /* renamed from: f */
        public boolean f26197f = false;

        /* renamed from: g */
        public int f26198g = 0;

        /* renamed from: h */
        public int f26199h = 0;

        /* renamed from: a */
        public B m8682a() {
            this.f26196e = true;
            return this;
        }

        /* renamed from: a */
        public B m8681a(int i) {
            this.f26193b = i;
            return this;
        }

        /* renamed from: b */
        public B m8680b(int i) {
            this.f26192a = i;
            return this;
        }

        /* renamed from: c */
        public B m8679c(int i) {
            this.f26195d = i;
            return this;
        }

        /* renamed from: d */
        public B m8678d(int i) {
            this.f26194c = i;
            return this;
        }
    }

    public AbstractC11667n() {
        this(-1, -1, -1, -1, false, false, 0, 0);
    }

    public AbstractC11667n(int i, int i2, int i3, int i4, boolean z, boolean z2, int i5, int i6) {
        boolean z3 = false;
        C12151d.m6999b(i == -1 || i > 0);
        C12151d.m6999b(i2 == -1 || i2 > 0);
        C12151d.m6999b(i3 == -1 || i3 > 0);
        C12151d.m6999b((i4 == -1 || i4 > 0) ? true : z3);
        this.f26184a = i;
        this.f26185b = i2;
        this.f26186c = i3;
        this.f26187d = i4;
        this.f26188e = z;
        this.f26189f = z2;
        this.f26190g = i5;
        this.f26191h = i6;
    }

    /* renamed from: a */
    public String mo8684a() {
        return this.f26184a + '|' + this.f26185b + '|' + String.valueOf(this.f26189f) + '|' + String.valueOf(this.f26190g) + '|' + String.valueOf(this.f26188e);
    }

    /* renamed from: a */
    public void mo8643a(int i, int i2) {
    }

    /* renamed from: b */
    public boolean m8683b() {
        return this.f26188e;
    }
}
