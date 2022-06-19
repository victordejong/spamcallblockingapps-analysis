package p193e.p194a.p852i.p862c.p865c;

import com.truecaller.ads.adsrouter.model.AdResponse;
import com.truecaller.ads.adsrouter.model.C2813Ad;
import com.truecaller.common.network.interceptor.useragent.UserAgentType;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import s1.g;
import s1.w.d;
import s1.z.b.a;
import s1.z.c.m;
import u3.l0;
import x3.b;
import x3.h0.y;
/* renamed from: e.a.i.c.c.b */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/c/b.class */
public final class C15011b implements AbstractC15010a {

    /* renamed from: a */
    public final g f42833a = C25225a.m3978P1(C15012a.f42834b);

    /* renamed from: e.a.i.c.c.b$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/c/b$a.class */
    public static final class C15012a extends m implements a<AbstractC15021f> {

        /* renamed from: b */
        public static final C15012a f42834b = new C15012a();

        public C15012a() {
            super(0);
        }

        public Object invoke() {
            C8365b c8365b = new C8365b();
            C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ADS_ROUTER, AbstractC15021f.class);
            m8568t1.m28628b(AuthRequirement.REQUIRED, null);
            m8568t1.m28624f(UserAgentType.WEB_NATIVE);
            c8365b.m28636d(C8363a.m28642a(m8568t1));
            return (AbstractC15021f) c8365b.m28637c(AbstractC15021f.class);
        }
    }

    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15010a
    /* renamed from: a */
    public Object mo19288a(@y String str, d<? super b<l0>> dVar) {
        return m19286c().m19272a(str);
    }

    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15010a
    /* renamed from: b */
    public Object mo19287b(Map<String, ? extends Object> map, d<? super b<AdResponse>> dVar) {
        return m19286c().m19270c(map);
    }

    /* renamed from: c */
    public final AbstractC15021f m19286c() {
        return (AbstractC15021f) this.f42833a.getValue();
    }

    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15010a
    /* renamed from: d */
    public Object mo19285d(String str, int i, d<? super b<C2813Ad>> dVar) {
        return m19286c().m19271b(str, i);
    }
}
