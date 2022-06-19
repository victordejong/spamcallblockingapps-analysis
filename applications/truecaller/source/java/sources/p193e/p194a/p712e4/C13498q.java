package p193e.p194a.p712e4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.PersistableBundle;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.multisim.SimInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.e4.q */
/* loaded from: classes11-dex2jar.jar:e/a/e4/q.class */
public final class C13498q extends AbstractC13501r {

    /* renamed from: o */
    public static final /* synthetic */ int f39140o = 0;

    /* renamed from: k */
    public final SubscriptionManager f39141k;

    /* renamed from: l */
    public final TelephonyManager f39142l;

    /* renamed from: m */
    public final TelecomManager f39143m;

    /* renamed from: n */
    public final CarrierConfigManager f39144n;

    /* renamed from: e.a.e4.q$a */
    /* loaded from: classes11-dex2jar.jar:e/a/e4/q$a.class */
    public static final class C13499a implements AbstractC13504s {

        /* renamed from: a */
        public static final C13499a f39145a = new C13499a();

        @Override // p193e.p194a.p712e4.AbstractC13504s
        /* renamed from: a */
        public final AbstractC13497p mo21746a(Context context, TelephonyManager telephonyManager) {
            C13498q c13498q;
            l.e(context, AnalyticsConstants.CONTEXT);
            try {
                c13498q = new C13498q(context);
            } catch (Exception e) {
                c13498q = null;
            }
            return c13498q;
        }
    }

    /* renamed from: e.a.e4.q$b */
    /* loaded from: classes11-dex2jar.jar:e/a/e4/q$b.class */
    public final class C13500b extends AbstractC13494m {

        /* renamed from: c */
        public final /* synthetic */ C13498q f39146c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13500b(C13498q c13498q, Cursor cursor, String str) {
            super(cursor, str);
            l.e(cursor, "cursor");
            this.f39146c = c13498q;
        }

        @Override // p193e.p194a.p712e4.AbstractC13494m
        /* renamed from: b */
        public String mo21725b(String str) {
            PhoneAccountHandle next;
            l.e(str, "callLogSim");
            C13498q c13498q = this.f39146c;
            if (c13498q.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
                try {
                    TelecomManager telecomManager = c13498q.f39143m;
                    l.d(telecomManager, "telecomManager");
                    List<PhoneAccountHandle> callCapablePhoneAccounts = telecomManager.getCallCapablePhoneAccounts();
                    l.d(callCapablePhoneAccounts, "telecomManager.callCapablePhoneAccounts");
                    Iterator<PhoneAccountHandle> it = callCapablePhoneAccounts.iterator();
                    do {
                        if (it.hasNext()) {
                            next = it.next();
                        }
                    } while (!l.a(str, next.getId()));
                    str = String.valueOf(c13498q.f39142l.getSubscriptionId(next));
                } catch (IllegalAccessException | InvocationTargetException e) {
                }
                return str;
            }
            for (SimInfo simInfo : c13498q.mo21742d()) {
                if (l.a(simInfo.f13984b, str)) {
                    break;
                }
            }
            str = "-1";
            return str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13498q(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService(SubscriptionManager.class);
        l.d(systemService, "context.getSystemService…ptionManager::class.java)");
        this.f39141k = (SubscriptionManager) systemService;
        this.f39142l = (TelephonyManager) context.getSystemService(TelephonyManager.class);
        this.f39143m = (TelecomManager) context.getSystemService(TelecomManager.class);
        Object systemService2 = context.getSystemService("carrier_config");
        Objects.requireNonNull(systemService2, "null cannot be cast to non-null type android.telephony.CarrierConfigManager");
        this.f39144n = (CarrierConfigManager) systemService2;
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

    /* JADX WARN: Removed duplicated region for block: B:19:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.multisim.SimInfo m21757G(android.telephony.SubscriptionInfo r14) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p712e4.C13498q.m21757G(android.telephony.SubscriptionInfo):com.truecaller.multisim.SimInfo");
    }

    /* renamed from: H */
    public final int m21756H(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            i = -1;
        }
        return i;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: b */
    public String mo21743b() {
        return String.valueOf(SmsManager.getDefaultSmsSubscriptionId());
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: c */
    public String mo21720c() {
        return "AndroidRNative";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: d */
    public List<SimInfo> mo21742d() {
        ArrayList arrayList = s.a;
        ArrayList arrayList2 = arrayList;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                List<SubscriptionInfo> activeSubscriptionInfoList = this.f39141k.getActiveSubscriptionInfoList();
                arrayList2 = arrayList;
                if (activeSubscriptionInfoList != null) {
                    arrayList2 = new ArrayList(C25225a.m4004J(activeSubscriptionInfoList, 10));
                    for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                        l.d(subscriptionInfo, "it");
                        arrayList2.add(m21757G(subscriptionInfo));
                    }
                }
            } catch (Exception e) {
                e.getMessage();
                arrayList2 = arrayList;
            }
        }
        return arrayList2;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: e */
    public SimInfo mo21741e(int i) {
        SimInfo simInfo = null;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                SubscriptionInfo activeSubscriptionInfoForSimSlotIndex = this.f39141k.getActiveSubscriptionInfoForSimSlotIndex(i);
                simInfo = null;
                if (activeSubscriptionInfoForSimSlotIndex != null) {
                    simInfo = m21757G(activeSubscriptionInfoForSimSlotIndex);
                }
            } catch (Exception e) {
                e.getMessage();
                simInfo = null;
            }
        }
        return simInfo;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: h */
    public boolean mo21740h() {
        boolean z = true;
        if (!this.f39148b.m21765a("android.permission.READ_PHONE_STATE") || this.f39141k.getActiveSubscriptionInfoCount() <= 1) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: i */
    public AbstractC13490i mo21726i(String str) {
        PersistableBundle persistableBundle;
        l.e(str, "simToken");
        if (l.a("-1", str)) {
            persistableBundle = this.f39144n.getConfig();
        } else {
            CarrierConfigManager carrierConfigManager = this.f39144n;
            Integer valueOf = Integer.valueOf(str);
            l.d(valueOf, "Integer.valueOf(simToken)");
            persistableBundle = carrierConfigManager.getConfigForSubId(valueOf.intValue());
        }
        return persistableBundle != null ? new C13492k(persistableBundle) : new C13491j(mo21733w(str).getCarrierConfigValues());
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: k */
    public String mo21739k(Intent intent) {
        l.e(intent, "intent");
        return String.valueOf(intent.getIntExtra("subscription", -1));
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: l */
    public boolean mo21738l(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str4) {
        l.e(str, "destinationAddress");
        l.e(str3, "text");
        l.e(pendingIntent, "sentIntent");
        l.e(str4, "simToken");
        if (l.a("-1", str4)) {
            return false;
        }
        mo21733w(str4).sendTextMessage(str, str2, str3, pendingIntent, pendingIntent2);
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: o */
    public boolean mo21737o(String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, String str3) {
        l.e(str, "destinationAddress");
        l.e(arrayList, "parts");
        l.e(arrayList2, "sentIntents");
        l.e(str3, "simToken");
        if (l.a("-1", str3)) {
            return false;
        }
        mo21733w(str3).sendMultipartTextMessage(str, str2, arrayList, arrayList2, arrayList3);
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: p */
    public boolean mo21736p() {
        boolean z = true;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                TelephonyManager telephonyManager = this.f39142l;
                l.d(telephonyManager, "telephonyManager");
                z = telephonyManager.isMultiSimSupported() == 0;
            } catch (Exception e) {
                e.getMessage();
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: r */
    public String mo21735r(String str) {
        l.e(str, "simToken");
        TelephonyManager telephonyManager = this.f39142l;
        l.d(telephonyManager, "telephonyManager");
        return telephonyManager.getNetworkCountryIso();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo21724s(android.content.Intent r7, java.lang.String r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "intent"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "simToken"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            e.a.e4.f0.a r0 = r0.f39148b
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            r2[r3] = r4
            boolean r0 = r0.m21765a(r1)
            if (r0 == 0) goto L9c
            r0 = r6
            android.telecom.TelecomManager r0 = r0.f39143m     // Catch: java.lang.Exception -> L70
            r9 = r0
            r0 = r9
            java.lang.String r1 = "telecomManager"
            s1.z.c.l.d(r0, r1)     // Catch: java.lang.Exception -> L70
            r0 = r9
            java.util.List r0 = r0.getCallCapablePhoneAccounts()     // Catch: java.lang.Exception -> L70
            r9 = r0
            r0 = r9
            java.lang.String r1 = "telecomManager.callCapablePhoneAccounts"
            s1.z.c.l.d(r0, r1)     // Catch: java.lang.Exception -> L70
            r0 = r9
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L70
            r10 = r0
        L40:
            r0 = r10
            boolean r0 = r0.hasNext()     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L9c
            r0 = r10
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Exception -> L70
            android.telecom.PhoneAccountHandle r0 = (android.telecom.PhoneAccountHandle) r0     // Catch: java.lang.Exception -> L70
            r9 = r0
            r0 = r8
            r1 = r6
            android.telephony.TelephonyManager r1 = r1.f39142l     // Catch: java.lang.Exception -> L70
            r2 = r9
            int r1 = r1.getSubscriptionId(r2)     // Catch: java.lang.Exception -> L70
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> L70
            boolean r0 = s1.z.c.l.a(r0, r1)     // Catch: java.lang.Exception -> L70
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L40
            r0 = r9
            r8 = r0
            goto L9e
        L70:
            r8 = move-exception
            r0 = r8
            boolean r0 = r0 instanceof java.lang.IllegalAccessException     // Catch: java.lang.Exception -> L96
            if (r0 == 0) goto L7b
            goto L8c
        L7b:
            r0 = r8
            boolean r0 = r0 instanceof java.lang.reflect.InvocationTargetException     // Catch: java.lang.Exception -> L96
            if (r0 == 0) goto L85
            goto L8c
        L85:
            r0 = r8
            boolean r0 = r0 instanceof java.lang.SecurityException     // Catch: java.lang.Exception -> L96
            if (r0 == 0) goto L94
        L8c:
            r0 = r8
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Exception -> L96
            goto L9c
        L94:
            r0 = r8
            throw r0     // Catch: java.lang.Exception -> L96
        L96:
            r8 = move-exception
            r0 = r8
            java.lang.String r0 = r0.getMessage()
        L9c:
            r0 = 0
            r8 = r0
        L9e:
            r0 = r8
            if (r0 == 0) goto Lab
            r0 = r7
            java.lang.String r1 = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"
            r2 = r8
            android.content.Intent r0 = r0.putExtra(r1, r2)
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p712e4.C13498q.mo21724s(android.content.Intent, java.lang.String):void");
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
            android.telephony.TelephonyManager r0 = r0.f39142l
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p712e4.C13498q.mo21723t():boolean");
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: u */
    public String mo21734u(String str) {
        SubscriptionInfo activeSubscriptionInfo;
        String countryIso;
        l.e(str, "simToken");
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
            } catch (Exception e) {
                e.getMessage();
            }
            if ((!l.a("-1", str)) && (activeSubscriptionInfo = this.f39141k.getActiveSubscriptionInfo(m21756H(str))) != null) {
                countryIso = activeSubscriptionInfo.getCountryIso();
                return countryIso;
            }
        }
        countryIso = null;
        return countryIso;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: v */
    public SimInfo mo21719v(String str) {
        l.e(str, "simToken");
        SimInfo simInfo = null;
        if (this.f39148b.m21765a("android.permission.READ_PHONE_STATE")) {
            try {
                SubscriptionInfo activeSubscriptionInfo = this.f39141k.getActiveSubscriptionInfo(m21756H(str));
                simInfo = null;
                if (activeSubscriptionInfo != null) {
                    simInfo = m21757G(activeSubscriptionInfo);
                }
            } catch (Exception e) {
                e.getMessage();
                simInfo = null;
            }
        }
        return simInfo;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: w */
    public SmsManager mo21733w(String str) {
        SmsManager smsManager;
        l.e(str, "simToken");
        if (l.a("-1", str)) {
            smsManager = SmsManager.getDefault();
            l.d(smsManager, "super.getSmsManager(simToken)");
        } else {
            smsManager = SmsManager.getSmsManagerForSubscriptionId(m21756H(str));
            l.d(smsManager, "SmsManager.getSmsManager…ionId(simToken.toSubId())");
        }
        return smsManager;
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        l.e(cursor, "cursor");
        return new C13500b(this, cursor, mo21747q());
    }

    @Override // p193e.p194a.p712e4.AbstractC13501r, p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: y */
    public boolean mo21732y() {
        return true;
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: z */
    public String mo21731z(Intent intent) {
        l.e(intent, "intent");
        return String.valueOf(intent.getIntExtra("subscription", -1));
    }
}
