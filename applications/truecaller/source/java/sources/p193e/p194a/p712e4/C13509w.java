package p193e.p194a.p712e4;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import java.util.List;
import w3.c.a.a.a.k.a;
/* renamed from: e.a.e4.w */
/* loaded from: classes11-dex2jar.jar:e/a/e4/w.class */
public class C13509w extends C13507v {

    /* renamed from: x */
    public static final /* synthetic */ int f39188x = 0;

    /* renamed from: w */
    public SubscriptionManager f39189w;

    public C13509w(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager, CarrierConfigManager carrierConfigManager) throws Exception {
        super(context, subscriptionManager, telephonyManager, telecomManager, carrierConfigManager);
        this.f39189w = subscriptionManager;
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "MarshmallowHuawei";
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: s */
    public void mo21724s(Intent intent, String str) {
        PhoneAccountHandle m21727J = m21727J(str);
        if (m21727J != null) {
            intent.putExtra("subscription", a.g(str));
            intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", m21727J);
        }
    }

    @Override // p193e.p194a.p712e4.C13505t, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: t */
    public boolean mo21723t() {
        int i;
        boolean z = false;
        if (mo21740h()) {
            try {
                i = ((Integer) this.f39189w.getClass().getDeclaredField("ACTIVE").get(this.f39189w)).intValue();
            } catch (Exception e) {
                i = 1;
            }
            List<SubscriptionInfo> activeSubscriptionInfoList = this.f39189w.getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList == null) {
                return true;
            }
            int i2 = 0;
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                if (((Integer) subscriptionInfo.getClass().getDeclaredField("mStatus").get(subscriptionInfo)).intValue() == i) {
                    i2++;
                }
            }
            z = false;
            if (i2 > 1) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p712e4.C13507v, p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13496o(cursor, this);
    }
}
