package p193e.p194a.p613c0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import javax.inject.Inject;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1272u3.AbstractC20582a;
import s1.z.c.l;
/* renamed from: e.a.c0.e */
/* loaded from: classes4-dex2jar.jar:e/a/c0/e.class */
public final class C10907e {

    /* renamed from: a */
    public final AbstractC20235a f32387a;

    /* renamed from: b */
    public final AbstractC19494d f32388b;

    /* renamed from: c */
    public final AbstractC20582a f32389c;

    @Inject
    public C10907e(AbstractC20235a abstractC20235a, AbstractC19494d abstractC19494d, AbstractC20582a abstractC20582a) {
        l.e(abstractC20235a, "remoteConfig");
        l.e(abstractC19494d, "firebaseAnalytics");
        l.e(abstractC20582a, "environment");
        this.f32387a = abstractC20235a;
        this.f32388b = abstractC19494d;
        this.f32389c = abstractC20582a;
    }

    /* renamed from: a */
    public <V extends Enum<V>> C10905c<V> m25511a(C10906d c10906d, Class<V> cls) {
        l.e(c10906d, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(cls, "clazz");
        return new C10905c<>(c10906d, cls, this.f32389c, this.f32387a, this.f32388b);
    }
}
