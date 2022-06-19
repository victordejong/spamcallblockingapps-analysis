package p193e.p194a.p751f4.p752a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.f4.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/a/a.class */
public final class C13941a implements AbstractC13945b {

    /* renamed from: a */
    public final AbstractC19890w f40352a;

    /* renamed from: e.a.f4.a.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/a/a$b.class */
    public static class C13943b extends AbstractC19889v<AbstractC13945b, Boolean> {

        /* renamed from: b */
        public final boolean f40353b;

        public C13943b(C19852e c19852e, boolean z, C13942a c13942a) {
            super(c19852e);
            this.f40353b = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo20950b = ((AbstractC13945b) obj).mo20950b(this.f40353b);
            m11836c(mo20950b);
            return mo20950b;
        }

        public String toString() {
            return C22128a.m8566u(this.f40353b, 2, C22128a.m8728C(".changePhone("), ")");
        }
    }

    /* renamed from: e.a.f4.a.a$c */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/a/a$c.class */
    public static class C13944c extends AbstractC19889v<AbstractC13945b, Boolean> {

        /* renamed from: b */
        public final boolean f40354b;

        public C13944c(C19852e c19852e, boolean z, C13942a c13942a) {
            super(c19852e);
            this.f40354b = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo20951a = ((AbstractC13945b) obj).mo20951a(this.f40354b);
            m11836c(mo20951a);
            return mo20951a;
        }

        public String toString() {
            return C22128a.m8566u(this.f40354b, 2, C22128a.m8728C(".deactivateAccount("), ")");
        }
    }

    public C13941a(AbstractC19890w abstractC19890w) {
        this.f40352a = abstractC19890w;
    }

    @Override // p193e.p194a.p751f4.p752a.AbstractC13945b
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo20951a(boolean z) {
        return new C19895z(this.f40352a, new C13944c(new C19852e(), z, null));
    }

    @Override // p193e.p194a.p751f4.p752a.AbstractC13945b
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo20950b(boolean z) {
        return new C19895z(this.f40352a, new C13943b(new C19852e(), z, null));
    }
}
