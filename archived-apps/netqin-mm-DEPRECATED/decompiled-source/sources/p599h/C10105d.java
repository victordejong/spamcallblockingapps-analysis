package p599h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.concurrent.TimeUnit;
/* renamed from: h.d */
/* loaded from: classes2-dex2jar.jar:h/d.class */
public final class C10105d {

    /* renamed from: n */
    public static final C10105d f37290n;

    /* renamed from: a */
    public final boolean f37291a;

    /* renamed from: b */
    public final boolean f37292b;

    /* renamed from: c */
    public final int f37293c;

    /* renamed from: d */
    public final int f37294d;

    /* renamed from: e */
    public final boolean f37295e;

    /* renamed from: f */
    public final boolean f37296f;

    /* renamed from: g */
    public final boolean f37297g;

    /* renamed from: h */
    public final int f37298h;

    /* renamed from: i */
    public final int f37299i;

    /* renamed from: j */
    public final boolean f37300j;

    /* renamed from: k */
    public final boolean f37301k;

    /* renamed from: l */
    public final boolean f37302l;

    /* renamed from: m */
    public String f37303m;

    /* renamed from: h.d$a */
    /* loaded from: classes2-dex2jar.jar:h/d$a.class */
    public static final class C10106a {

        /* renamed from: a */
        public boolean f37304a;

        /* renamed from: b */
        public boolean f37305b;

        /* renamed from: c */
        public int f37306c = -1;

        /* renamed from: d */
        public int f37307d = -1;

        /* renamed from: e */
        public int f37308e = -1;

        /* renamed from: f */
        public boolean f37309f;

        /* renamed from: g */
        public boolean f37310g;

        /* renamed from: h */
        public boolean f37311h;

        /* renamed from: a */
        public C10106a m1473a(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f37307d = seconds > 2147483647L ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i);
        }

        /* renamed from: a */
        public C10105d m1474a() {
            return new C10105d(this);
        }

        /* renamed from: b */
        public C10106a m1472b() {
            this.f37304a = true;
            return this;
        }

        /* renamed from: c */
        public C10106a m1471c() {
            this.f37305b = true;
            return this;
        }

        /* renamed from: d */
        public C10106a m1470d() {
            this.f37309f = true;
            return this;
        }
    }

    static {
        C10106a aVar = new C10106a();
        aVar.m1472b();
        aVar.m1474a();
        C10106a aVar2 = new C10106a();
        aVar2.m1470d();
        aVar2.m1473a(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, TimeUnit.SECONDS);
        f37290n = aVar2.m1474a();
    }

    public C10105d(C10106a aVar) {
        this.f37291a = aVar.f37304a;
        this.f37292b = aVar.f37305b;
        this.f37293c = aVar.f37306c;
        this.f37294d = -1;
        this.f37295e = false;
        this.f37296f = false;
        this.f37297g = false;
        this.f37298h = aVar.f37307d;
        this.f37299i = aVar.f37308e;
        this.f37300j = aVar.f37309f;
        this.f37301k = aVar.f37310g;
        this.f37302l = aVar.f37311h;
    }

    public C10105d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f37291a = z;
        this.f37292b = z2;
        this.f37293c = i;
        this.f37294d = i2;
        this.f37295e = z3;
        this.f37296f = z4;
        this.f37297g = z5;
        this.f37298h = i3;
        this.f37299i = i4;
        this.f37300j = z6;
        this.f37301k = z7;
        this.f37302l = z8;
        this.f37303m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p599h.C10105d m1484a(p599h.C10234r r16) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.C10105d.m1484a(h.r):h.d");
    }

    /* renamed from: a */
    public final String m1485a() {
        StringBuilder sb = new StringBuilder();
        if (this.f37291a) {
            sb.append("no-cache, ");
        }
        if (this.f37292b) {
            sb.append("no-store, ");
        }
        if (this.f37293c != -1) {
            sb.append("max-age=");
            sb.append(this.f37293c);
            sb.append(", ");
        }
        if (this.f37294d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f37294d);
            sb.append(", ");
        }
        if (this.f37295e) {
            sb.append("private, ");
        }
        if (this.f37296f) {
            sb.append("public, ");
        }
        if (this.f37297g) {
            sb.append("must-revalidate, ");
        }
        if (this.f37298h != -1) {
            sb.append("max-stale=");
            sb.append(this.f37298h);
            sb.append(", ");
        }
        if (this.f37299i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f37299i);
            sb.append(", ");
        }
        if (this.f37300j) {
            sb.append("only-if-cached, ");
        }
        if (this.f37301k) {
            sb.append("no-transform, ");
        }
        if (this.f37302l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    /* renamed from: b */
    public boolean m1483b() {
        return this.f37295e;
    }

    /* renamed from: c */
    public boolean m1482c() {
        return this.f37296f;
    }

    /* renamed from: d */
    public int m1481d() {
        return this.f37293c;
    }

    /* renamed from: e */
    public int m1480e() {
        return this.f37298h;
    }

    /* renamed from: f */
    public int m1479f() {
        return this.f37299i;
    }

    /* renamed from: g */
    public boolean m1478g() {
        return this.f37297g;
    }

    /* renamed from: h */
    public boolean m1477h() {
        return this.f37291a;
    }

    /* renamed from: i */
    public boolean m1476i() {
        return this.f37292b;
    }

    /* renamed from: j */
    public boolean m1475j() {
        return this.f37300j;
    }

    public String toString() {
        String str = this.f37303m;
        if (str == null) {
            str = m1485a();
            this.f37303m = str;
        }
        return str;
    }
}
