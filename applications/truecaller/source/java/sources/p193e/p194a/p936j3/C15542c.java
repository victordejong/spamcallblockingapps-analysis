package p193e.p194a.p936j3;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.j3.c */
/* loaded from: classes8-dex2jar.jar:e/a/j3/c.class */
public final class C15542c implements AbstractC15547d {

    /* renamed from: a */
    public final AbstractC19890w f44000a;

    /* renamed from: e.a.j3.c$b */
    /* loaded from: classes8-dex2jar.jar:e/a/j3/c$b.class */
    public static class C15544b extends AbstractC19889v<AbstractC15547d, Integer> {

        /* renamed from: b */
        public final String f44001b;

        public C15544b(C19852e c19852e, String str, C15543a c15543a) {
            super(c19852e);
            this.f44001b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo18698b = ((AbstractC15547d) obj).mo18698b(this.f44001b);
            m11836c(mo18698b);
            return mo18698b;
        }

        public String toString() {
            return C22128a.m8587o2(this.f44001b, 2, C22128a.m8728C(".acceptContactRequest("), ")");
        }
    }

    /* renamed from: e.a.j3.c$c */
    /* loaded from: classes8-dex2jar.jar:e/a/j3/c$c.class */
    public static class C15545c extends AbstractC19889v<AbstractC15547d, Integer> {

        /* renamed from: b */
        public final String f44002b;

        /* renamed from: c */
        public final String f44003c;

        public C15545c(C19852e c19852e, String str, String str2, C15543a c15543a) {
            super(c19852e);
            this.f44002b = str;
            this.f44003c = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo18697c = ((AbstractC15547d) obj).mo18697c(this.f44002b, this.f44003c);
            m11836c(mo18697c);
            return mo18697c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".contactRequest(");
            C22128a.m8719E0(this.f44002b, 2, m8728C, ",");
            return C22128a.m8587o2(this.f44003c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.j3.c$d */
    /* loaded from: classes8-dex2jar.jar:e/a/j3/c$d.class */
    public static class C15546d extends AbstractC19889v<AbstractC15547d, Integer> {

        /* renamed from: b */
        public final String f44004b;

        public C15546d(C19852e c19852e, String str, C15543a c15543a) {
            super(c19852e);
            this.f44004b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo18699a = ((AbstractC15547d) obj).mo18699a(this.f44004b);
            m11836c(mo18699a);
            return mo18699a;
        }

        public String toString() {
            return C22128a.m8587o2(this.f44004b, 2, C22128a.m8728C(".rejectContactRequest("), ")");
        }
    }

    public C15542c(AbstractC19890w abstractC19890w) {
        this.f44000a = abstractC19890w;
    }

    @Override // p193e.p194a.p936j3.AbstractC15547d
    /* renamed from: a */
    public AbstractC19891x<Integer> mo18699a(String str) {
        return new C19895z(this.f44000a, new C15546d(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p936j3.AbstractC15547d
    /* renamed from: b */
    public AbstractC19891x<Integer> mo18698b(String str) {
        return new C19895z(this.f44000a, new C15544b(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p936j3.AbstractC15547d
    /* renamed from: c */
    public AbstractC19891x<Integer> mo18697c(String str, String str2) {
        return new C19895z(this.f44000a, new C15545c(new C19852e(), str, str2, null));
    }
}
