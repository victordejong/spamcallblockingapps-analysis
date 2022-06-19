package p193e.p194a.p712e4;

import android.content.Context;
import android.database.Cursor;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.truecaller.multisim.SimInfo;
/* renamed from: e.a.e4.z */
/* loaded from: classes11-dex2jar.jar:e/a/e4/z.class */
public class C13512z extends C13507v {

    /* renamed from: w */
    public static final /* synthetic */ int f39193w = 0;

    public C13512z(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager, CarrierConfigManager carrierConfigManager) throws Exception {
        super(context, subscriptionManager, telephonyManager, telecomManager, carrierConfigManager);
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return "iccid";
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: a */
    public String mo21721a() {
        String str;
        SimInfo mo21719v = mo21719v("-1");
        return (mo21719v == null || (str = mo21719v.f13990h) == null) ? "-1" : str;
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "MarshmallowYu";
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0013  */
    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.multisim.SimInfo mo21719v(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r3
            java.util.List r0 = r0.mo21742d()
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        La:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L35
            r0 = r5
            java.lang.Object r0 = r0.next()
            com.truecaller.multisim.SimInfo r0 = (com.truecaller.multisim.SimInfo) r0
            r6 = r0
            r0 = r4
            r1 = r6
            java.lang.String r1 = r1.f13990h
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L33
            r0 = r4
            r1 = r6
            java.lang.String r1 = r1.f13984b
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto La
        L33:
            r0 = r6
            return r0
        L35:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p712e4.C13512z.mo21719v(java.lang.String):com.truecaller.multisim.SimInfo");
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13495n(cursor, this);
    }
}
