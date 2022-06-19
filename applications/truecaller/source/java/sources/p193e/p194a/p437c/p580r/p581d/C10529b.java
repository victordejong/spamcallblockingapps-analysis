package p193e.p194a.p437c.p580r.p581d;

import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/d/b.class */
public final class C10529b {

    /* renamed from: a */
    public final SimpleAnalyticsModel f31415a;

    /* renamed from: b */
    public final Map<String, String> f31416b;

    public C10529b(SimpleAnalyticsModel simpleAnalyticsModel, Map<String, String> map) {
        l.e(simpleAnalyticsModel, "event");
        l.e(map, "propertyMap");
        this.f31415a = simpleAnalyticsModel;
        this.f31416b = map;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10529b)) {
                return false;
            }
            C10529b c10529b = (C10529b) obj;
            return l.a(this.f31415a, c10529b.f31415a) && l.a(this.f31416b, c10529b.f31416b);
        }
        return true;
    }

    public int hashCode() {
        SimpleAnalyticsModel simpleAnalyticsModel = this.f31415a;
        int i = 0;
        int hashCode = simpleAnalyticsModel != null ? simpleAnalyticsModel.hashCode() : 0;
        Map<String, String> map = this.f31416b;
        if (map != null) {
            i = map.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SimpleAnalyticsEvent(event=");
        m8728C.append(this.f31415a);
        m8728C.append(", propertyMap=");
        m8728C.append(this.f31416b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
