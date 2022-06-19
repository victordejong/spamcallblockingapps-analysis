package p193e.p194a.p437c.p606w.p607o0;

import com.truecaller.insights.repository.filters.FeatureStatus;
import com.truecaller.insights.repository.filters.SmartSmsFeature;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/e.class */
public final class C10818e {

    /* renamed from: a */
    public final SmartSmsFeature f32128a;

    /* renamed from: b */
    public final FeatureStatus f32129b;

    /* renamed from: c */
    public final AbstractC10819f f32130c;

    public C10818e(SmartSmsFeature smartSmsFeature, FeatureStatus featureStatus, AbstractC10819f abstractC10819f) {
        l.e(smartSmsFeature, "feature");
        l.e(featureStatus, "featureStatus");
        l.e(abstractC10819f, "extras");
        this.f32128a = smartSmsFeature;
        this.f32129b = featureStatus;
        this.f32130c = abstractC10819f;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10818e)) {
                return false;
            }
            C10818e c10818e = (C10818e) obj;
            return l.a(this.f32128a, c10818e.f32128a) && l.a(this.f32129b, c10818e.f32129b) && l.a(this.f32130c, c10818e.f32130c);
        }
        return true;
    }

    public int hashCode() {
        SmartSmsFeature smartSmsFeature = this.f32128a;
        int i = 0;
        int hashCode = smartSmsFeature != null ? smartSmsFeature.hashCode() : 0;
        FeatureStatus featureStatus = this.f32129b;
        int hashCode2 = featureStatus != null ? featureStatus.hashCode() : 0;
        AbstractC10819f abstractC10819f = this.f32130c;
        if (abstractC10819f != null) {
            i = abstractC10819f.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmartSmsFeatureCheck(feature=");
        m8728C.append(this.f32128a);
        m8728C.append(", featureStatus=");
        m8728C.append(this.f32129b);
        m8728C.append(", extras=");
        m8728C.append(this.f32130c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
