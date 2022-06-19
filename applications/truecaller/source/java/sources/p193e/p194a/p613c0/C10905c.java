package p193e.p194a.p613c0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.lang.Enum;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1272u3.AbstractC20582a;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.c0.c */
/* loaded from: classes4-dex2jar.jar:e/a/c0/c.class */
public final class C10905c<V extends Enum<V>> extends AbstractC10908f<V> {

    /* renamed from: d */
    public final C10906d f32383d;

    /* renamed from: e */
    public final Class<V> f32384e;

    /* renamed from: f */
    public final AbstractC20582a f32385f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10905c(C10906d c10906d, Class<V> cls, AbstractC20582a abstractC20582a, AbstractC20235a abstractC20235a, AbstractC19494d abstractC19494d) {
        super(c10906d, abstractC20235a, abstractC19494d, null);
        l.e(c10906d, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(cls, "clazz");
        l.e(abstractC20582a, "environment");
        l.e(abstractC20235a, "remoteConfig");
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        this.f32383d = c10906d;
        this.f32384e = cls;
        this.f32385f = abstractC20582a;
    }

    @Override // p193e.p194a.p613c0.AbstractC10908f
    /* renamed from: a */
    public C10911g mo25497a() {
        return this.f32383d;
    }

    /* renamed from: f */
    public V m25513f() {
        V[] enumConstants = this.f32384e.getEnumConstants();
        V v = null;
        if (enumConstants != null) {
            int length = enumConstants.length;
            int i = 0;
            while (true) {
                v = null;
                if (i >= length) {
                    break;
                }
                v = enumConstants[i];
                if (r.n(v.name(), m25510b(), true)) {
                    break;
                }
                i++;
            }
        }
        return v;
    }

    /* renamed from: g */
    public final boolean m25512g() {
        boolean z = true;
        if (!this.f32383d.f32386e || !this.f32385f.mo11012a()) {
            V m25513f = m25513f();
            if (m25513f == null) {
                return false;
            }
            if (m25513f.getClass().getField(m25513f.name()).getAnnotation(AbstractC10904b.class) != null) {
                z = false;
            }
            return z;
        }
        return true;
    }
}
