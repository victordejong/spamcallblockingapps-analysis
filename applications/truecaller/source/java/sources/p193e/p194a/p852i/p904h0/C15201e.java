package p193e.p194a.p852i.p904h0;

import com.truecaller.ads.util.AdPartnerNameIndicatorConfig;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.v;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.h0.e */
/* loaded from: classes3-dex2jar.jar:e/a/i/h0/e.class */
public final class C15201e {

    /* renamed from: a */
    public static final g f43264a = C25225a.m3978P1(a.b);

    /* renamed from: b */
    public static final C15201e f43265b = null;

    /* renamed from: a */
    public static final String m19050a(String str) {
        Object obj;
        l.e(str, "partnerName");
        List list = (List) f43264a.getValue();
        String str2 = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (v.z(str, ((AdPartnerNameIndicatorConfig) next).getName(), true)) {
                    obj = next;
                    break;
                }
            }
            AdPartnerNameIndicatorConfig adPartnerNameIndicatorConfig = (AdPartnerNameIndicatorConfig) obj;
            str2 = null;
            if (adPartnerNameIndicatorConfig != null) {
                str2 = adPartnerNameIndicatorConfig.getIndicator();
            }
        }
        return str2;
    }
}
