package p193e.p194a.p673d0.p675b;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import java.util.Locale;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.b.a;
import s1.z.c.m;
import w3.c.a.a.a.h;
/* renamed from: e.a.d0.b.e */
/* loaded from: classes6-dex2jar.jar:e/a/d0/b/e.class */
public final class C12482e extends m implements a<FilterMatch> {

    /* renamed from: b */
    public final /* synthetic */ C12474a f36489b;

    /* renamed from: c */
    public final /* synthetic */ Context f36490c;

    /* renamed from: d */
    public final /* synthetic */ String f36491d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12482e(C12474a c12474a, Context context, String str) {
        super(0);
        this.f36489b = c12474a;
        this.f36490c = context;
        this.f36491d = str;
    }

    public Object invoke() {
        String str;
        Object systemService = this.f36490c.getSystemService(AnalyticsConstants.PHONE);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        String networkCountryIso = telephonyManager.getNetworkCountryIso();
        String str2 = null;
        if (networkCountryIso != null) {
            Locale locale = Locale.ENGLISH;
            str = C22128a.m8586p(locale, "Locale.ENGLISH", networkCountryIso, locale, "(this as java.lang.String).toUpperCase(locale)");
        } else {
            str = null;
        }
        String simCountryIso = telephonyManager.getSimCountryIso();
        if (simCountryIso != null) {
            Locale locale2 = Locale.ENGLISH;
            str2 = C22128a.m8586p(locale2, "Locale.ENGLISH", simCountryIso, locale2, "(this as java.lang.String).toUpperCase(locale)");
        }
        return this.f36489b.f36462i.mo19590f(this.f36491d, null, null, (String) h.c(str, str2), false, true);
    }
}
