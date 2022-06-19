package p193e.p194a.p712e4.p713e0;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
/* renamed from: e.a.e4.e0.c */
/* loaded from: classes11-dex2jar.jar:e/a/e4/e0/c.class */
public class C13485c extends AbstractC13483a {

    /* renamed from: a */
    public final TelephonyManager f39129a;

    public C13485c(Context context) {
        this.f39129a = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
    }

    @Override // p193e.p194a.p712e4.p713e0.AbstractC13483a
    /* renamed from: a */
    public int mo21766a(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.getMessage();
            i = -1;
        }
        return i == -1 ? this.f39129a.isDataEnabled() ? 1 : 2 : this.f39129a.createForSubscriptionId(i).isDataEnabled() ? 1 : 2;
    }
}
