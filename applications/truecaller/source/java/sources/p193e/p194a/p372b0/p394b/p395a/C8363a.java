package p193e.p194a.p372b0.p394b.p395a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.common.network.util.AuthRequirement;
import java.util.concurrent.TimeUnit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p751f4.p758c.C13985a;
import p193e.p194a.p751f4.p764i.C14041d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import u3.e0;
/* renamed from: e.a.b0.b.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/a/a.class */
public final class C8363a {

    /* renamed from: c */
    public static C14041d f25707c;

    /* renamed from: d */
    public static C13985a f25708d;

    /* renamed from: f */
    public static final C8363a f25710f = null;

    /* renamed from: a */
    public static final g f25705a = C25225a.m3978P1(C8364a.f25713e);

    /* renamed from: b */
    public static final g f25706b = C25225a.m3978P1(C8364a.f25711c);

    /* renamed from: e */
    public static final g f25709e = C25225a.m3978P1(C8364a.f25712d);

    /* renamed from: e.a.b0.b.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/b0/b/a/a$a.class */
    public static final class C8364a extends m implements a<e0> {

        /* renamed from: c */
        public static final C8364a f25711c = new C8364a(0);

        /* renamed from: d */
        public static final C8364a f25712d = new C8364a(1);

        /* renamed from: e */
        public static final C8364a f25713e = new C8364a(2);

        /* renamed from: b */
        public final /* synthetic */ int f25714b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8364a(int i) {
            super(0);
            this.f25714b = i;
        }

        public final Object invoke() {
            int i = this.f25714b;
            if (i == 0) {
                C8385b c8385b = new C8385b();
                c8385b.m28628b(AuthRequirement.REQUIRED, null);
                return C8363a.m28642a(c8385b);
            } else if (i != 1) {
                if (i != 2) {
                    throw null;
                }
                return C8363a.m28642a(C8385b.f25756g);
            } else {
                e0.a aVar = new e0.a();
                aVar.b(30L, TimeUnit.SECONDS);
                C8363a c8363a = C8363a.f25710f;
                C13985a c13985a = C8363a.f25708d;
                if (c13985a == null) {
                    l.l("httpAnalyticsLoggerFactory");
                    throw null;
                }
                l.f(c13985a, "eventListenerFactory");
                aVar.e = c13985a;
                return new e0(aVar);
            }
        }
    }

    /* renamed from: a */
    public static final e0 m28642a(C8385b c8385b) {
        l.e(c8385b, DTBMetricsConfiguration.CONFIG_DIR);
        return new e0(m28641b(c8385b));
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0380, code lost:
        if (r0.size() <= 1) goto L82;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final u3.e0.a m28641b(p193e.p194a.p372b0.p394b.p397g.C8385b r8) {
        /*
            Method dump skipped, instructions count: 1130
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p394b.p395a.C8363a.m28641b(e.a.b0.b.g.b):u3.e0$a");
    }

    /* renamed from: c */
    public static final e0 m28640c() {
        return (e0) f25705a.getValue();
    }
}
