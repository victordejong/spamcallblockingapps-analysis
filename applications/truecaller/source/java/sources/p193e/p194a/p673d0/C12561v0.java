package p193e.p194a.p673d0;

import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.d0.v0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/v0.class */
public final class C12561v0 {

    /* renamed from: a */
    public final Handler f36686a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public boolean f36687b;

    /* renamed from: c */
    public final TelephonyManager f36688c;

    @Inject
    public C12561v0(C20592g c20592g, TelephonyManager telephonyManager) {
        l.e(c20592g, "featuresRegistry");
        l.e(telephonyManager, "telephonyManager");
        this.f36688c = telephonyManager;
    }
}
