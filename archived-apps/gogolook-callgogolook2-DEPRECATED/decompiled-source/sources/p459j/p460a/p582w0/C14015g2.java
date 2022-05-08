package p459j.p460a.p582w0;

import gogolook.callgogolook2.p074ad.AdStatusController;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p576w.p578o.C13795b;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.g2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/g2.class */
public final class C14015g2 {

    /* renamed from: b */
    public static final C14015g2 f31453b = new C14015g2();

    /* renamed from: a */
    public static final List<String> f31452a = C15021m.m556d("ads", "offlinedb", "expanddb", "spamhammer");

    /* renamed from: a */
    public static final void m2846a() {
        for (String str : f31452a) {
            m2844a(str, 0);
        }
    }

    /* renamed from: a */
    public static final void m2844a(String str, int i) {
        C15149k.m377b(str, "featureName");
        String b = m2841b(str);
        if (C13915b3.m3052c(b, i)) {
            C13915b3.m3048d(b, i);
            if (str.hashCode() == 96432 && str.equals("ads")) {
                AdStatusController.m28827c().m28828b();
            }
        }
    }

    /* renamed from: a */
    public static final void m2843a(List<C13795b> list) {
        Object obj;
        C15149k.m377b(list, "serverFeats");
        for (String str : f31452a) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (C15149k.m384a((Object) str, (Object) ((C13795b) obj).m3443a())) {
                    break;
                }
            }
            if (((C13795b) obj) != null) {
                m2844a(str, 1);
            } else {
                m2844a(str, 0);
            }
        }
    }

    /* renamed from: b */
    public static final String m2841b(String str) {
        C15149k.m377b(str, "feature");
        return "iap_feature_" + str;
    }

    /* renamed from: b */
    public static final boolean m2842b() {
        return f31453b.m2845a("ads");
    }

    /* renamed from: c */
    public static final boolean m2840c() {
        return f31453b.m2845a("expanddb");
    }

    /* renamed from: d */
    public static final boolean m2839d() {
        return f31453b.m2845a("offlinedb");
    }

    /* renamed from: e */
    public static final boolean m2838e() {
        return f31453b.m2845a("spamhammer");
    }

    /* renamed from: a */
    public final boolean m2845a(String str) {
        boolean z = true;
        if (1 != C13915b3.m3066a(m2841b(str), -1)) {
            z = false;
        }
        return z;
    }
}
