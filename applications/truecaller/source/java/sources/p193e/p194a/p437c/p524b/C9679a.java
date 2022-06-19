package p193e.p194a.p437c.p524b;

import com.truecaller.insights.state.MemoryLevel;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p548h.AbstractC10253c;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/a.class */
public final class C9679a implements AbstractC9686e {

    /* renamed from: a */
    public final g f29255a;

    /* renamed from: b */
    public final g f29256b = C25225a.m3978P1(C9681b.f29265b);

    /* renamed from: c */
    public final g f29257c = C25225a.m3978P1(new C9680a(1, this));

    /* renamed from: d */
    public final AbstractC8438a f29258d;

    /* renamed from: e */
    public final AbstractC8541a f29259e;

    /* renamed from: f */
    public final AbstractC19230g f29260f;

    /* renamed from: g */
    public final AbstractC8426f f29261g;

    /* renamed from: h */
    public final String f29262h;

    /* renamed from: e.a.c.b.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/c/b/a$a.class */
    public static final class C9680a extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ int f29263b;

        /* renamed from: c */
        public final /* synthetic */ Object f29264c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9680a(int i, Object obj) {
            super(0);
            this.f29263b = i;
            this.f29264c = obj;
        }

        public final Object invoke() {
            int i = this.f29263b;
            boolean z = false;
            if (i == 0) {
                if (l.a("alphaRelease", "release") || ((AbstractC10253c) ((o3.a) this.f29264c).get()).mo26528a()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            } else if (i != 1) {
                throw null;
            } else {
                boolean z2 = false;
                if (!((C9679a) this.f29264c).f29260f.mo13796a()) {
                    z2 = false;
                    if (((C9679a) this.f29264c).f29260f.mo13775v()) {
                        z2 = true;
                    }
                }
                return Boolean.valueOf(z2);
            }
        }
    }

    /* renamed from: e.a.c.b.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/a$b.class */
    public static final class C9681b extends m implements a<MemoryLevel> {

        /* renamed from: b */
        public static final C9681b f29265b = new C9681b();

        public C9681b() {
            super(0);
        }

        public Object invoke() {
            long maxMemory = Runtime.getRuntime().maxMemory() / 1000000;
            return maxMemory < 128 ? MemoryLevel.SMALL : maxMemory < 256 ? MemoryLevel.MEDIUM : MemoryLevel.LARGE;
        }
    }

    @Inject
    public C9679a(AbstractC8438a abstractC8438a, AbstractC8541a abstractC8541a, AbstractC19230g abstractC19230g, AbstractC8426f abstractC8426f, o3.a<AbstractC10253c> aVar, String str) {
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19230g, "deviceInfoUtils");
        l.e(abstractC8426f, "regionUtils");
        l.e(aVar, "environmentFetcher");
        l.e(str, "appVersionName");
        this.f29258d = abstractC8438a;
        this.f29259e = abstractC8541a;
        this.f29260f = abstractC19230g;
        this.f29261g = abstractC8426f;
        this.f29262h = str;
        this.f29255a = C25225a.m3978P1(new C9680a(0, aVar));
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: a */
    public boolean mo27312a() {
        return ((Boolean) this.f29255a.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: b */
    public MemoryLevel mo27311b() {
        return (MemoryLevel) this.f29256b.getValue();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: c */
    public boolean mo27310c() {
        return ((Boolean) this.f29257c.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: d */
    public boolean mo27309d() {
        return this.f29261g.mo28594d();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: e */
    public int mo27308e() {
        int ordinal = mo27311b().ordinal();
        return ordinal != 0 ? ordinal != 1 ? 200 : 100 : 40;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: f */
    public String mo27307f() {
        return this.f29262h;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9686e
    /* renamed from: g */
    public String mo27306g() {
        String string = this.f29258d.getString("profileCountryIso", "");
        l.d(string, "accountSettings.getStrin….PROFILE_COUNTRY_ISO, \"\")");
        return string;
    }
}
