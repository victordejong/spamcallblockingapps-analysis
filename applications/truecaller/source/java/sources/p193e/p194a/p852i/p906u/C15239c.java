package p193e.p194a.p852i.p906u;

import com.truecaller.ads.adslogger.AdsPixelData;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import s1.g;
import s1.s;
import s1.w.d;
import s1.z.b.a;
import s1.z.c.m;
import x3.a0;
/* renamed from: e.a.i.u.c */
/* loaded from: classes2-dex2jar.jar:e/a/i/u/c.class */
public final class C15239c implements AbstractC15238b {

    /* renamed from: a */
    public final g f43359a = C25225a.m3978P1(C15240a.f43360b);

    /* renamed from: e.a.i.u.c$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/u/c$a.class */
    public static final class C15240a extends m implements a<AbstractC15237a> {

        /* renamed from: b */
        public static final C15240a f43360b = new C15240a();

        public C15240a() {
            super(0);
        }

        public Object invoke() {
            C8365b c8365b = new C8365b();
            C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ADS_LOGGER, AbstractC15237a.class);
            m8568t1.m28628b(AuthRequirement.NONE, null);
            c8365b.m28636d(C8363a.m28642a(m8568t1));
            return (AbstractC15237a) c8365b.m28637c(AbstractC15237a.class);
        }
    }

    @Override // p193e.p194a.p852i.p906u.AbstractC15238b
    /* renamed from: a */
    public Object mo19015a(String str, Map<String, String> map, d<? super a0<s>> dVar) {
        return ((AbstractC15237a) this.f43359a.getValue()).m19017a(str, map, dVar);
    }

    @Override // p193e.p194a.p852i.p906u.AbstractC15238b
    /* renamed from: b */
    public Object mo19014b(List<AdsPixelData> list, d<? super a0<s>> dVar) {
        return ((AbstractC15237a) this.f43359a.getValue()).m19016b(list, dVar);
    }
}
