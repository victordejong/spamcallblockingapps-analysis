package p193e.p194a.p712e4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import com.truecaller.multisim.SimInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: e.a.e4.d0 */
/* loaded from: classes11-dex2jar.jar:e/a/e4/d0.class */
public class C13481d0 extends AbstractC13501r {

    /* renamed from: k */
    public final TelephonyManager f39126k;

    public C13481d0(Context context, TelephonyManager telephonyManager) {
        super(context);
        this.f39126k = telephonyManager;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return null;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: E */
    public String mo21730E() {
        return null;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: F */
    public String mo21729F() {
        return null;
    }

    /* renamed from: G */
    public final SimInfo m21767G() {
        String str;
        String str2;
        String str3 = null;
        try {
            str = this.f39126k.getDeviceId();
        } catch (SecurityException e) {
            str = null;
        }
        try {
            str2 = this.f39126k.getSimSerialNumber();
        } catch (SecurityException e2) {
            str2 = null;
        }
        try {
            str3 = this.f39126k.getSubscriberId();
        } catch (SecurityException e3) {
        }
        return new SimInfo(0, "-1", this.f39126k.getLine1Number(), this.f39126k.getSimOperatorName(), this.f39126k.getSimOperator(), this.f39126k.getSimCountryIso(), str, str2, str3, this.f39126k.isNetworkRoaming());
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: b */
    public String mo21743b() {
        return "-1";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "Single";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: d */
    public List<SimInfo> mo21742d() {
        return Collections.singletonList(m21767G());
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: e */
    public SimInfo mo21741e(int i) {
        if (i > 0) {
            return null;
        }
        return m21767G();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: h */
    public boolean mo21740h() {
        return false;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: i */
    public AbstractC13490i mo21726i(String str) {
        Bundle carrierConfigValues = SmsManager.getDefault().getCarrierConfigValues();
        Bundle bundle = carrierConfigValues;
        if (carrierConfigValues == null) {
            bundle = new Bundle();
        }
        return new C13491j(bundle);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: k */
    public String mo21739k(Intent intent) {
        return "-1";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: l */
    public boolean mo21738l(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str4) {
        SmsManager.getDefault().sendTextMessage(str, str2, str3, pendingIntent, pendingIntent2);
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: o */
    public boolean mo21737o(String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, String str3) {
        SmsManager.getDefault().sendMultipartTextMessage(str, str2, arrayList, arrayList2, arrayList3);
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: p */
    public boolean mo21736p() {
        return false;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: r */
    public String mo21735r(String str) {
        return this.f39126k.getNetworkCountryIso();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: s */
    public void mo21724s(Intent intent, String str) {
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: t */
    public boolean mo21723t() {
        return false;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: u */
    public String mo21734u(String str) {
        return this.f39126k.getSimCountryIso();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: v */
    public SimInfo mo21719v(String str) {
        return m21767G();
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: y */
    public boolean mo21732y() {
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: z */
    public String mo21731z(Intent intent) {
        return "-1";
    }
}
