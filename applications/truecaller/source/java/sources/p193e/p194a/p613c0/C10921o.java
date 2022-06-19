package p193e.p194a.p613c0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1220s4.AbstractC20235a;
import s1.z.c.l;
/* renamed from: e.a.c0.o */
/* loaded from: classes4-dex2jar.jar:e/a/c0/o.class */
public final class C10921o extends AbstractC10908f<String> {

    /* renamed from: d */
    public final C10911g f32431d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10921o(C10911g c10911g, AbstractC20235a abstractC20235a, AbstractC19494d abstractC19494d) {
        super(c10911g, abstractC20235a, abstractC19494d, null);
        l.e(c10911g, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(abstractC20235a, "remoteConfig");
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        this.f32431d = c10911g;
    }

    @Override // p193e.p194a.p613c0.AbstractC10908f
    /* renamed from: a */
    public C10911g mo25497a() {
        return this.f32431d;
    }
}
