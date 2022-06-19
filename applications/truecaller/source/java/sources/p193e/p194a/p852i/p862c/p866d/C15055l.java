package p193e.p194a.p852i.p862c.p866d;

import com.razorpay.AnalyticsConstants;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p852i.C15160f;
import s1.d0.i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.i.c.d.l */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/d/l.class */
public final class C15055l {

    /* renamed from: j */
    public static final i f42982j = new i(40, 70);

    /* renamed from: k */
    public static final List<String> f42983k = s1.u.i.T(new String[]{"banner", "html_320x50", "html_320x100", "html_300x250", "html_320x140", "html_300x100", "native", "native_image_320x140", "native_image_300x250"});

    /* renamed from: l */
    public static final List<String> f42984l = s1.u.i.T(new String[]{"banner", "html_320x50"});

    /* renamed from: m */
    public static final List<String> f42985m = s1.u.i.T(new String[]{"native", "native_image_320x140", "native_image_300x250"});

    /* renamed from: n */
    public static final C15057b f42986n = null;

    /* renamed from: a */
    public final String f42987a;

    /* renamed from: b */
    public final String f42988b;

    /* renamed from: c */
    public final List<String> f42989c;

    /* renamed from: d */
    public final String f42990d;

    /* renamed from: e */
    public final List<String> f42991e;

    /* renamed from: f */
    public final Integer f42992f;

    /* renamed from: g */
    public final Integer f42993g;

    /* renamed from: h */
    public final String f42994h;

    /* renamed from: i */
    public final C15160f f42995i;

    /* renamed from: e.a.i.c.d.l$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/l$a.class */
    public static final class C15056a {

        /* renamed from: a */
        public String f42996a;

        /* renamed from: b */
        public String f42997b;

        /* renamed from: c */
        public List<String> f42998c;

        /* renamed from: d */
        public String f42999d = AnalyticsConstants.NETWORK;

        /* renamed from: e */
        public List<String> f43000e;

        /* renamed from: f */
        public String f43001f;

        /* renamed from: g */
        public C15160f f43002g;

        /* renamed from: a */
        public final C15055l m19205a() {
            return new C15055l(this, null);
        }

        /* renamed from: b */
        public final C15056a m19204b(String... strArr) {
            l.e(strArr, "args");
            this.f43000e = s1.u.i.g(strArr);
            return this;
        }

        /* renamed from: c */
        public final C15056a m19203c(String str, String str2, String... strArr) {
            l.e(str, "adUnitId");
            l.e(str2, "requestId");
            l.e(strArr, "adType");
            this.f42996a = str;
            this.f42997b = str2;
            this.f42998c = C25225a.m3897h3(strArr);
            return this;
        }

        /* renamed from: d */
        public final C15056a m19202d(String str) {
            l.e(str, "source");
            this.f42999d = str;
            return this;
        }
    }

    /* renamed from: e.a.i.c.d.l$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/l$b.class */
    public static final class C15057b {
    }

    public C15055l(C15056a c15056a, f fVar) {
        String str = c15056a.f42996a;
        if (str == null) {
            l.l("adUnitId");
            throw null;
        }
        String str2 = c15056a.f42997b;
        if (str2 == null) {
            l.l("requestId");
            throw null;
        }
        List<String> list = c15056a.f42998c;
        if (list == null) {
            l.l("adType");
            throw null;
        }
        String str3 = c15056a.f42999d;
        List<String> list2 = c15056a.f43000e;
        String str4 = c15056a.f43001f;
        C15160f c15160f = c15056a.f43002g;
        this.f42987a = str;
        this.f42988b = str2;
        this.f42989c = list;
        this.f42990d = str3;
        this.f42991e = list2;
        this.f42992f = null;
        this.f42993g = null;
        this.f42994h = str4;
        this.f42995i = c15160f;
    }
}
