package p193e.p194a.p911i3;

import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.i3.a */
/* loaded from: classes7-dex2jar.jar:e/a/i3/a.class */
public final class C15262a implements AbstractC15266b {

    /* renamed from: a */
    public final AbstractC19890w f43466a;

    /* renamed from: e.a.i3.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/i3/a$b.class */
    public static class C15264b extends AbstractC19889v<AbstractC15266b, Boolean> {
        public C15264b(C19852e c19852e, C15263a c15263a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo18985a = ((AbstractC15266b) obj).mo18985a();
            m11836c(mo18985a);
            return mo18985a;
        }

        public String toString() {
            return ".updateConfig()";
        }
    }

    /* renamed from: e.a.i3.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/i3/a$c.class */
    public static class C15265c extends AbstractC19889v<AbstractC15266b, Boolean> {
        public C15265c(C19852e c19852e, C15263a c15263a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo18984b = ((AbstractC15266b) obj).mo18984b();
            m11836c(mo18984b);
            return mo18984b;
        }

        public String toString() {
            return ".updateInstallation()";
        }
    }

    public C15262a(AbstractC19890w abstractC19890w) {
        this.f43466a = abstractC19890w;
    }

    @Override // p193e.p194a.p911i3.AbstractC15266b
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo18985a() {
        return new C19895z(this.f43466a, new C15264b(new C19852e(), null));
    }

    @Override // p193e.p194a.p911i3.AbstractC15266b
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo18984b() {
        return new C19895z(this.f43466a, new C15265c(new C19852e(), null));
    }
}
