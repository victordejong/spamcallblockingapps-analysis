package p193e.p194a.p432b4.p433a;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p432b4.p433a.C8638c;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.b4.a.e */
/* loaded from: classes10-dex2jar.jar:e/a/b4/a/e.class */
public final class C8641e implements AbstractC8640d {

    /* renamed from: a */
    public final Context f26500a;

    @Inject
    public C8641e(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f26500a = context;
    }

    @Override // p193e.p194a.p432b4.p433a.AbstractC8640d
    /* renamed from: a */
    public C8638c mo28164a(String str) {
        C8638c c8638c;
        l.e(str, "lang");
        C8638c.C8639a c8639a = C8638c.f26496h;
        Context context = this.f26500a;
        synchronized (c8639a) {
            l.e(str, "lang");
            l.e(context, AnalyticsConstants.CONTEXT);
            String str2 = str;
            if (l.a("auto", str)) {
                a<Locale> aVar = C8638c.f26493e;
                if (aVar == null) {
                    l.l("applicationLocale");
                    throw null;
                }
                str2 = ((Locale) aVar.invoke()).getLanguage();
                l.d(str2, "applicationLocale().language");
            }
            Map<String, C8638c> map = C8638c.f26492d;
            C8638c c8638c2 = map.get(str2);
            c8638c = c8638c2;
            if (c8638c2 == null) {
                C8638c m26055K = C10480a.m26055K(str2, null, 2);
                c8638c = null;
                if (m26055K != null) {
                    map.put(str2, m26055K);
                    c8638c = m26055K;
                }
                if (c8638c == null) {
                    c8638c = c8639a.m28165a(context);
                }
            }
        }
        return c8638c;
    }

    @Override // p193e.p194a.p432b4.p433a.AbstractC8640d
    /* renamed from: b */
    public C8638c mo28163b() {
        return C8638c.f26496h.m28165a(this.f26500a);
    }
}
