package p193e.p194a.p712e4;

import android.content.Context;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
/* renamed from: e.a.e4.b */
/* loaded from: classes11-dex2jar.jar:e/a/e4/b.class */
public final /* synthetic */ class C13476b implements AbstractC13504s {

    /* renamed from: a */
    public static final /* synthetic */ C13476b f39120a = new C13476b();

    @Override // p193e.p194a.p712e4.AbstractC13504s
    /* renamed from: a */
    public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
        C13506u c13506u;
        int i = C13506u.f39180w;
        try {
            c13506u = new C13506u(context, SubscriptionManager.from(context), telephonyManager, (TelecomManager) context.getSystemService("telecom"));
        } catch (Throwable th) {
            c13506u = null;
        }
        return c13506u;
    }
}
