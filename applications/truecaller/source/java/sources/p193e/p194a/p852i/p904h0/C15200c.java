package p193e.p194a.p852i.p904h0;

import com.truecaller.ads.util.AdClickRestrictedPartner;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.v;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.h0.c */
/* loaded from: classes3-dex2jar.jar:e/a/i/h0/c.class */
public final class C15200c {

    /* renamed from: d */
    public static final C15200c f43263d = new C15200c();

    /* renamed from: a */
    public static final g f43260a = C25225a.m3978P1(b.b);

    /* renamed from: b */
    public static final g f43261b = C25225a.m3978P1(c.b);

    /* renamed from: c */
    public static final g f43262c = C25225a.m3978P1(a.b);

    /* renamed from: a */
    public final List<String> m19051a(String str, String str2) {
        Object obj;
        l.e(str, "partnerName");
        l.e(str2, "placementName");
        List<String> list = null;
        if (((Boolean) f43261b.getValue()).booleanValue()) {
            List list2 = (List) f43262c.getValue();
            list = null;
            if (list2 != null) {
                Iterator it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    Object next = it.next();
                    if (v.z(str, ((AdClickRestrictedPartner) next).getName(), true)) {
                        obj = next;
                        break;
                    }
                }
                AdClickRestrictedPartner adClickRestrictedPartner = (AdClickRestrictedPartner) obj;
                list = null;
                if (adClickRestrictedPartner != null) {
                    if (!adClickRestrictedPartner.getPlacements().contains(str2)) {
                        adClickRestrictedPartner = null;
                    }
                    list = null;
                    if (adClickRestrictedPartner != null) {
                        list = adClickRestrictedPartner.getViews();
                    }
                }
            }
        }
        return list;
    }
}
