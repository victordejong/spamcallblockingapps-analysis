package p193e.p194a.p837h0.p845x;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mopub.mobileads.VastIconXmlManager;
import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h0.x.b */
/* loaded from: classes9-dex2jar.jar:e/a/h0/x/b.class */
public class C14878b {
    @b(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)

    /* renamed from: a */
    public String f42532a;
    @b("timestamp")

    /* renamed from: b */
    public long f42533b;
    @b(VastIconXmlManager.DURATION)

    /* renamed from: c */
    public long f42534c;
    @b("action")

    /* renamed from: d */
    public String f42535d;
    @b("filterSource")

    /* renamed from: e */
    public String f42536e;

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AssociatedCallInfo{direction='");
        C22128a.m8678P0(m8728C, this.f42532a, '\'', ", timestamp=");
        m8728C.append(this.f42533b);
        m8728C.append(", duration=");
        m8728C.append(this.f42534c);
        m8728C.append(", action='");
        C22128a.m8678P0(m8728C, this.f42535d, '\'', ", filterSource='");
        return C22128a.m8626f(m8728C, this.f42536e, '\'', '}');
    }
}
