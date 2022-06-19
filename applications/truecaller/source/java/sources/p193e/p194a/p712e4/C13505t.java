package p193e.p194a.p712e4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.telecom.TelecomManager;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.truecaller.multisim.SimInfo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: e.a.e4.t */
/* loaded from: classes11-dex2jar.jar:e/a/e4/t.class */
public class C13505t extends AbstractC13501r {

    /* renamed from: s */
    public static final /* synthetic */ int f39171s = 0;

    /* renamed from: k */
    public final SubscriptionManager f39172k;

    /* renamed from: l */
    public final TelephonyManager f39173l;

    /* renamed from: m */
    public final TelecomManager f39174m;

    /* renamed from: n */
    public final String f39175n = (String) TelecomManager.class.getField("EXTRA_PHONE_ACCOUNT_HANDLE").get(null);

    /* renamed from: o */
    public final Method f39176o = TelecomManager.class.getMethod("getCallCapablePhoneAccounts", new Class[0]);

    /* renamed from: p */
    public final Method f39177p;

    /* renamed from: q */
    public final Method f39178q;

    /* renamed from: r */
    public final Method f39179r;

    public C13505t(Context context, SubscriptionManager subscriptionManager, TelephonyManager telephonyManager, TelecomManager telecomManager) throws Exception {
        super(context);
        this.f39172k = subscriptionManager;
        this.f39173l = telephonyManager;
        this.f39174m = telecomManager;
        Class<?> cls = Class.forName("android.telecom.PhoneAccountHandle");
        Method method = null;
        this.f39177p = cls.getMethod("getId", new Class[0]);
        Class cls2 = Integer.TYPE;
        this.f39178q = TelephonyManager.class.getMethod("getDeviceId", cls2);
        try {
            method = TelephonyManager.class.getMethod("getSubscriberId", cls2);
        } catch (NoSuchMethodException e) {
        }
        this.f39179r = method;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: D */
    public String mo21722D() {
        return "subscription_id";
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: E */
    public String mo21730E() {
        return "sub_id";
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r
    /* renamed from: F */
    public String mo21729F() {
        return "sub_id";
    }

    /* renamed from: G */
    public String mo21728G(int i) {
        try {
            return (String) this.f39178q.invoke(this.f39173l, Integer.valueOf(i));
        } catch (IllegalAccessException | SecurityException | InvocationTargetException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009f  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.multisim.SimInfo m21745H(android.telephony.SubscriptionInfo r14) {
        /*
            r13 = this;
            r0 = r14
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r14
            java.lang.CharSequence r0 = r0.getCarrierName()
            r15 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r16 = r0
            r0 = r16
            r1 = r14
            int r1 = r1.getMcc()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r16
            r1 = r14
            int r1 = r1.getMnc()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r16
            java.lang.String r0 = r0.toString()
            r17 = r0
            r0 = r14
            int r0 = r0.getSimSlotIndex()
            r18 = r0
            r0 = r14
            int r0 = r0.getSubscriptionId()
            r19 = r0
            r0 = r14
            java.lang.String r0 = r0.getNumber()
            r20 = r0
            r0 = r15
            if (r0 != 0) goto L4c
            r0 = 0
            r15 = r0
            goto L53
        L4c:
            r0 = r15
            java.lang.String r0 = r0.toString()
            r15 = r0
        L53:
            r0 = r14
            java.lang.String r0 = r0.getCountryIso()
            r21 = r0
            r0 = r13
            r1 = r14
            int r1 = r1.getSimSlotIndex()
            java.lang.String r0 = r0.mo21728G(r1)
            r22 = r0
            r0 = r14
            java.lang.String r0 = r0.getIccId()
            r23 = r0
            r0 = r13
            java.lang.reflect.Method r0 = r0.f39179r
            r16 = r0
            r0 = r16
            if (r0 != 0) goto L77
        L72:
            r0 = 0
            r16 = r0
            goto L91
        L77:
            r0 = r16
            r1 = r13
            android.telephony.TelephonyManager r1 = r1.f39173l     // Catch: java.lang.Throwable -> Lbf
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lbf
            r3 = r2
            r4 = 0
            r5 = r14
            int r5 = r5.getSubscriptionId()     // Catch: java.lang.Throwable -> Lbf
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> Lbf
            r3[r4] = r5     // Catch: java.lang.Throwable -> Lbf
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> Lbf
            r16 = r0
        L91:
            r0 = r14
            int r0 = r0.getDataRoaming()
            r1 = 1
            if (r0 != r1) goto L9f
            r0 = 1
            r24 = r0
            goto La2
        L9f:
            r0 = 0
            r24 = r0
        La2:
            com.truecaller.multisim.SimInfo r0 = new com.truecaller.multisim.SimInfo
            r1 = r0
            r2 = r18
            r3 = r19
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r4 = r20
            r5 = r15
            r6 = r17
            r7 = r21
            r8 = r22
            r9 = r23
            r10 = r16
            r11 = r24
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return r0
        Lbf:
            r16 = move-exception
            goto L72
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p712e4.C13505t.m21745H(android.telephony.SubscriptionInfo):com.truecaller.multisim.SimInfo");
    }

    /* renamed from: I */
    public final int m21744I(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: b */
    public String mo21743b() {
        return String.valueOf(SmsManager.getDefaultSmsSubscriptionId());
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "LollipopMr1";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: d */
    public List<SimInfo> mo21742d() {
        List<SubscriptionInfo> activeSubscriptionInfoList;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE") && (activeSubscriptionInfoList = this.f39172k.getActiveSubscriptionInfoList()) != null) {
            ArrayList arrayList = new ArrayList(activeSubscriptionInfoList.size());
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                arrayList.add(m21745H(subscriptionInfo));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: e */
    public SimInfo mo21741e(int i) {
        if (!this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            return null;
        }
        return m21745H(this.f39172k.getActiveSubscriptionInfoForSimSlotIndex(i));
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: h */
    public boolean mo21740h() {
        boolean z = true;
        if (!this.f39148b.m21765a("android.permission.READ_PHONE_STATE") || this.f39172k.getActiveSubscriptionInfoCount() <= 1) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: i */
    public AbstractC13490i mo21726i(String str) {
        Bundle carrierConfigValues = ("-1".equals(str) ? SmsManager.getDefault() : SmsManager.getSmsManagerForSubscriptionId(m21744I(str))).getCarrierConfigValues();
        Bundle bundle = carrierConfigValues;
        if (carrierConfigValues == null) {
            bundle = new Bundle();
        }
        return new C13491j(bundle);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: k */
    public String mo21739k(Intent intent) {
        return String.valueOf(intent.getIntExtra("subscription", -1));
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: l */
    public boolean mo21738l(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str4) {
        if ("-1".equals(str4)) {
            return false;
        }
        SmsManager.getSmsManagerForSubscriptionId(m21744I(str4)).sendTextMessage(str, str2, str3, pendingIntent, pendingIntent2);
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: o */
    public boolean mo21737o(String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, String str3) {
        if ("-1".equals(str3)) {
            return false;
        }
        SmsManager.getSmsManagerForSubscriptionId(m21744I(str3)).sendMultipartTextMessage(str, str2, arrayList, arrayList2, arrayList3);
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: p */
    public boolean mo21736p() {
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: r */
    public String mo21735r(String str) {
        return this.f39173l.getNetworkCountryIso();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: s */
    public void mo21724s(Intent intent, String str) {
        Object obj;
        Iterator it;
        Object next;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                it = ((List) this.f39176o.invoke(this.f39174m, new Object[0])).iterator();
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
            do {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                next = it.next();
            } while (!str.equals(this.f39177p.invoke(next, new Object[0])));
            obj = next;
            if (obj == null) {
                return;
            }
            intent.putExtra(this.f39175n, (Parcelable) obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
        if (r0.getSimState(r0) == 5) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0079, code lost:
        if (java.lang.Integer.parseInt(android.telephony.TelephonyManager.class.getMethod("getSimState", java.lang.Integer.TYPE).invoke(r0, java.lang.Integer.valueOf(r0)).toString()) == 5) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0086, code lost:
        if (r0.getSimState() != 5) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0089, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008f, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0094, code lost:
        if (r13 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0097, code lost:
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a0, code lost:
        if (r12 > 1) goto L25;
     */
    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo21723t() {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.mo21740h()
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto La6
            r0 = r7
            android.telephony.TelephonyManager r0 = r0.f39173l
            r10 = r0
            r0 = r7
            java.util.List r0 = r0.mo21742d()
            java.util.Iterator r0 = r0.iterator()
            r11 = r0
            r0 = 0
            r12 = r0
        L1e:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L9d
            r0 = r11
            java.lang.Object r0 = r0.next()
            com.truecaller.multisim.SimInfo r0 = (com.truecaller.multisim.SimInfo) r0
            int r0 = r0.f13983a
            r13 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L4c
            r0 = r10
            r1 = r13
            int r0 = r0.getSimState(r1)
            r1 = 5
            if (r0 != r1) goto L8f
            goto L89
        L4c:
            java.lang.Class<android.telephony.TelephonyManager> r0 = android.telephony.TelephonyManager.class
            java.lang.String r1 = "getSimState"
            r2 = 1
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L7f
            r3 = r2
            r4 = 0
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L7f
            r3[r4] = r5     // Catch: java.lang.Exception -> L7f
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.Exception -> L7f
            r1 = r10
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L7f
            r3 = r2
            r4 = 0
            r5 = r13
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L7f
            r3[r4] = r5     // Catch: java.lang.Exception -> L7f
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> L7f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L7f
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L7f
            r13 = r0
            r0 = r13
            r1 = 5
            if (r0 != r1) goto L8f
            goto L89
        L7f:
            r14 = move-exception
            r0 = r10
            int r0 = r0.getSimState()
            r1 = 5
            if (r0 != r1) goto L8f
        L89:
            r0 = 1
            r13 = r0
            goto L92
        L8f:
            r0 = 0
            r13 = r0
        L92:
            r0 = r13
            if (r0 == 0) goto L1e
            int r12 = r12 + 1
            goto L1e
        L9d:
            r0 = r12
            r1 = 1
            if (r0 <= r1) goto La6
            goto La8
        La6:
            r0 = 0
            r9 = r0
        La8:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p712e4.C13505t.mo21723t():boolean");
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: u */
    public String mo21734u(String str) {
        SubscriptionInfo activeSubscriptionInfo;
        return (!this.f39148b.m21765a("android.permission.READ_PHONE_STATE") || "-1".equals(str) || (activeSubscriptionInfo = this.f39172k.getActiveSubscriptionInfo(m21744I(str))) == null) ? null : activeSubscriptionInfo.getCountryIso();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: v */
    public SimInfo mo21719v(String str) {
        if (!this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            return null;
        }
        return m21745H(this.f39172k.getActiveSubscriptionInfo(m21744I(str)));
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: w */
    public SmsManager mo21733w(String str) {
        return "-1".equals(str) ? SmsManager.getDefault() : SmsManager.getSmsManagerForSubscriptionId(m21744I(str));
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: y */
    public boolean mo21732y() {
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: z */
    public String mo21731z(Intent intent) {
        return String.valueOf(intent.getIntExtra("subscription", -1));
    }
}
