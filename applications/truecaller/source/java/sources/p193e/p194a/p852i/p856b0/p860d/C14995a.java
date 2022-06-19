package p193e.p194a.p852i.p856b0.p860d;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.i.b0.d.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/d/a.class */
public final class C14995a {

    /* renamed from: g */
    public static final C14995a f42799g;

    /* renamed from: h */
    public static final C14997b f42800h = new C14997b(null);

    /* renamed from: a */
    public final String f42801a;

    /* renamed from: b */
    public final List<String> f42802b;

    /* renamed from: c */
    public final Integer f42803c;

    /* renamed from: d */
    public final Integer f42804d;

    /* renamed from: e */
    public final String f42805e;

    /* renamed from: f */
    public final String f42806f;

    /* renamed from: e.a.i.b0.d.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/i/b0/d/a$a.class */
    public static final class C14996a {

        /* renamed from: a */
        public String f42807a = "";

        /* renamed from: b */
        public List<String> f42808b;

        /* renamed from: a */
        public final C14995a m19304a() {
            return new C14995a(this, null);
        }

        /* renamed from: b */
        public final C14996a m19303b(String str) {
            l.e(str, "phoneNumber");
            this.f42807a = str;
            return this;
        }

        /* renamed from: c */
        public C14996a m19302c(String... strArr) {
            l.e(strArr, "placements");
            this.f42808b = C25225a.m3897h3(strArr);
            return this;
        }
    }

    /* renamed from: e.a.i.b0.d.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/i/b0/d/a$b.class */
    public static final class C14997b {
        public C14997b(f fVar) {
        }
    }

    static {
        C14996a c14996a = new C14996a();
        c14996a.m19302c("EMPTY");
        f42799g = c14996a.m19304a();
    }

    public C14995a(C14996a c14996a, f fVar) {
        String str = c14996a.f42807a;
        List<String> list = c14996a.f42808b;
        if (list == null) {
            l.l("placements");
            throw null;
        }
        this.f42801a = str;
        this.f42802b = list;
        this.f42803c = null;
        this.f42804d = null;
        this.f42805e = null;
        this.f42806f = null;
    }
}
