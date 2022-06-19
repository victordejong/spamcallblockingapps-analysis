package p193e.p194a.p852i;

import com.google.android.gms.ads.AdSize;
import com.truecaller.ads.CustomTemplate;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import s1.u.i;
import s1.u.s;
import s1.u.t;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.i.s */
/* loaded from: classes2-dex2jar.jar:e/a/i/s.class */
public final class C15222s {

    /* renamed from: r */
    public static final C15225c f43305r = new C15225c(null);

    /* renamed from: a */
    public final String f43306a;

    /* renamed from: b */
    public final String f43307b;

    /* renamed from: c */
    public final Map<String, String> f43308c;

    /* renamed from: d */
    public final int f43309d;

    /* renamed from: e */
    public final List<AdSize> f43310e;

    /* renamed from: f */
    public final List<CustomTemplate> f43311f;

    /* renamed from: g */
    public final C15213o f43312g;

    /* renamed from: h */
    public final C14995a f43313h;

    /* renamed from: i */
    public final int f43314i;

    /* renamed from: j */
    public final String f43315j;

    /* renamed from: k */
    public final boolean f43316k;

    /* renamed from: l */
    public final boolean f43317l;

    /* renamed from: m */
    public final boolean f43318m;

    /* renamed from: n */
    public final boolean f43319n;

    /* renamed from: o */
    public final boolean f43320o;

    /* renamed from: p */
    public final boolean f43321p;

    /* renamed from: q */
    public final C15160f f43322q;

    /* renamed from: e.a.i.s$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/s$a.class */
    public static final class C15223a implements AbstractC15224b {

        /* renamed from: a */
        public String f43323a;

        /* renamed from: b */
        public C15213o f43324b;

        /* renamed from: d */
        public String f43326d;

        /* renamed from: f */
        public List<AdSize> f43328f;

        /* renamed from: h */
        public List<? extends CustomTemplate> f43330h;

        /* renamed from: i */
        public String f43331i;

        /* renamed from: j */
        public boolean f43332j;

        /* renamed from: k */
        public boolean f43333k;

        /* renamed from: l */
        public boolean f43334l;

        /* renamed from: m */
        public boolean f43335m;

        /* renamed from: o */
        public C15160f f43337o;

        /* renamed from: c */
        public C14995a f43325c = C14995a.f42799g;

        /* renamed from: e */
        public int f43327e = 1;

        /* renamed from: g */
        public Map<String, String> f43329g = t.a;

        /* renamed from: n */
        public boolean f43336n = true;

        /* renamed from: p */
        public int f43338p = 1;

        public C15223a(C15222s c15222s, int i) {
            C15213o c15213o = C15213o.f43288c;
            l.d(c15213o, "CampaignConfig.NONE");
            this.f43324b = c15213o;
            C14995a.C14997b c14997b = C14995a.f42800h;
            s sVar = s.a;
            this.f43328f = sVar;
            this.f43330h = sVar;
        }

        /* renamed from: a */
        public C15223a m19042a(C14995a c14995a) {
            l.e(c14995a, "adCampaignConfig");
            this.f43325c = c14995a;
            return this;
        }

        /* renamed from: b */
        public C15223a m19041b(String str, String str2) {
            l.e(str, "adUnit");
            this.f43323a = str;
            this.f43326d = str2;
            return this;
        }

        /* renamed from: c */
        public AbstractC15224b m19040c(String str) {
            l.e(str, "adUnit");
            m19041b(str, null);
            return this;
        }

        /* renamed from: d */
        public C15223a m19039d(C15213o c15213o) {
            l.e(c15213o, "campaign");
            this.f43324b = c15213o;
            return this;
        }

        /* renamed from: e */
        public final C15223a m19038e(AdSize... adSizeArr) {
            l.e(adSizeArr, "supportedBanners");
            this.f43328f = C25225a.m3897h3(adSizeArr);
            return this;
        }

        /* renamed from: f */
        public final C15223a m19037f(CustomTemplate... customTemplateArr) {
            l.e(customTemplateArr, "supportedCustomTemplates");
            this.f43330h = C25225a.m3897h3(customTemplateArr);
            return this;
        }
    }

    /* renamed from: e.a.i.s$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/s$b.class */
    public interface AbstractC15224b {
    }

    /* renamed from: e.a.i.s$c */
    /* loaded from: classes2-dex2jar.jar:e/a/i/s$c.class */
    public static final class C15225c {
        public C15225c(f fVar) {
        }
    }

    public C15222s(C15223a c15223a) {
        l.e(c15223a, "builder");
        String str = c15223a.f43323a;
        if (str == null) {
            l.l("adUnit");
            throw null;
        }
        String str2 = c15223a.f43326d;
        Map<String, String> map = c15223a.f43329g;
        int i = c15223a.f43327e;
        List<AdSize> list = c15223a.f43328f;
        List list2 = c15223a.f43330h;
        C15213o c15213o = c15223a.f43324b;
        C14995a c14995a = c15223a.f43325c;
        int i2 = c15223a.f43338p;
        String str3 = c15223a.f43331i;
        boolean z = c15223a.f43332j;
        boolean z2 = c15223a.f43333k;
        boolean z3 = c15223a.f43334l;
        boolean z4 = c15223a.f43335m;
        boolean z5 = c15223a.f43336n;
        C15160f c15160f = c15223a.f43337o;
        this.f43306a = str;
        this.f43307b = str2;
        this.f43308c = map;
        this.f43309d = i;
        this.f43310e = list;
        this.f43311f = list2;
        this.f43312g = c15213o;
        this.f43313h = c14995a;
        this.f43314i = i2;
        this.f43315j = str3;
        this.f43316k = z;
        this.f43317l = false;
        this.f43318m = z2;
        this.f43319n = z3;
        this.f43320o = z4;
        this.f43321p = z5;
        this.f43322q = c15160f;
    }

    /* renamed from: a */
    public static final C15223a m19043a(String str, String str2, String str3, C20592g c20592g) {
        l.e(str, "adUnitId");
        l.e(str3, "placement");
        l.e(c20592g, "featuresRegistry");
        C15223a c15223a = new C15223a(null, 1);
        c15223a.m19041b(str, null);
        if (c20592g.m10990O().isEnabled()) {
            l.e(str3, "placement");
            C14995a.C14997b c14997b = C14995a.f42800h;
            C14995a.C14996a c14996a = new C14995a.C14996a();
            c14996a.m19302c(str3);
            c15223a.f43325c = c14996a.m19304a();
        } else {
            c15223a.f43324b = C22128a.m8604k1(str3, "campaign", str3, "CampaignConfig.Builder(campaign).build()");
        }
        return c15223a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C15222s.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.ads.UnitConfig");
        C15222s c15222s = (C15222s) obj;
        return !(l.a(this.f43306a, c15222s.f43306a) ^ true) && !(l.a(this.f43307b, c15222s.f43307b) ^ true) && !(l.a(this.f43308c, c15222s.f43308c) ^ true) && this.f43309d == c15222s.f43309d && !(l.a(this.f43310e, c15222s.f43310e) ^ true) && !(l.a(this.f43311f, c15222s.f43311f) ^ true) && !(l.a(this.f43312g, c15222s.f43312g) ^ true) && !(l.a(this.f43313h, c15222s.f43313h) ^ true) && this.f43314i == c15222s.f43314i && !(l.a(this.f43315j, c15222s.f43315j) ^ true) && this.f43316k == c15222s.f43316k && this.f43317l == c15222s.f43317l && this.f43318m == c15222s.f43318m && this.f43319n == c15222s.f43319n && this.f43320o == c15222s.f43320o && this.f43321p == c15222s.f43321p && !(l.a(this.f43322q, c15222s.f43322q) ^ true);
    }

    public int hashCode() {
        int hashCode = this.f43306a.hashCode();
        String str = this.f43307b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.f43308c.hashCode();
        int i2 = this.f43309d;
        int hashCode4 = this.f43310e.hashCode();
        int hashCode5 = this.f43311f.hashCode();
        int hashCode6 = this.f43312g.hashCode();
        int hashCode7 = this.f43313h.hashCode();
        int i3 = this.f43314i;
        String str2 = this.f43315j;
        int hashCode8 = str2 != null ? str2.hashCode() : 0;
        int m42597a = C0424b.m42597a(this.f43316k);
        int m42597a2 = C0424b.m42597a(this.f43317l);
        int m42597a3 = C0424b.m42597a(this.f43318m);
        int m42597a4 = C0424b.m42597a(this.f43319n);
        int m42597a5 = C0424b.m42597a(this.f43320o);
        int m42597a6 = C0424b.m42597a(this.f43321p);
        C15160f c15160f = this.f43322q;
        if (c15160f != null) {
            i = c15160f.hashCode();
        }
        return ((((((((((((((((((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((((hashCode3 + (((hashCode * 31) + hashCode2) * 31)) * 31) + i2) * 31)) * 31)) * 31)) * 31)) * 31) + i3) * 31) + hashCode8) * 31) + m42597a) * 31) + m42597a2) * 31) + m42597a3) * 31) + m42597a4) * 31) + m42597a5) * 31) + m42597a6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8558w = C22128a.m8558w('\'');
        m8558w.append(this.f43306a);
        m8558w.append("'//'");
        m8558w.append(this.f43307b);
        m8558w.append("'//'");
        return C22128a.m8630e(m8558w, i.O(this.f43308c.entrySet(), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), '\'');
    }
}
