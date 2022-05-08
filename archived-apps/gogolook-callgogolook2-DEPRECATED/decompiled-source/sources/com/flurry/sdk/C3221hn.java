package com.flurry.sdk;

import com.flurry.sdk.C3225ho;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.hn */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hn.class */
public class C3221hn extends AbstractC3377kc<C3225ho> {

    /* renamed from: a */
    public static long f5372a = 0;

    /* renamed from: e */
    public static final String f5373e = "hn";

    /* renamed from: com.flurry.sdk.hn$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hn$a.class */
    public static final class C3224a {

        /* renamed from: a */
        public static HashMap<EnumC3254hw, String> f5377a;

        static {
            HashMap<EnumC3254hw, String> hashMap = new HashMap<>();
            f5377a = hashMap;
            hashMap.put(EnumC3254hw.INSTALL, "Install");
            f5377a.put(EnumC3254hw.SESSION_START, "Session Start");
            f5377a.put(EnumC3254hw.SESSION_END, "Session End");
            f5377a.put(EnumC3254hw.APPLICATION_EVENT, "App Event");
        }

        /* renamed from: a */
        public static String m32869a(EnumC3254hw hwVar) {
            String str = f5377a.get(hwVar);
            String str2 = str;
            if (str == null) {
                str2 = "Unknown";
            }
            return str2;
        }

        /* renamed from: a */
        public static void m32868a(String str, String str2, EnumC3254hw hwVar) {
            if (!C3180gq.m32933a().f5246d) {
                C3356jq.m32615a(4, C3221hn.f5373e, "Not yahoo app. Don't log event Flurry.PulseSuccess");
                return;
            }
            HashMap hashMap = new HashMap(3);
            hashMap.put("fl.Partner", str);
            hashMap.put("fl.Event", str2);
            hashMap.put("fl.Trigger", m32869a(hwVar));
            try {
                C3180gq.m32933a().m32928a("Flurry.PulseSuccess", (Map<String, String>) hashMap, false);
            } catch (Throwable th) {
                C3356jq.m32612a(C3221hn.f5373e, "Failed to log event: Flurry.PulseSuccess", th);
            }
        }

        /* renamed from: b */
        public static void m32867b(String str, String str2, EnumC3254hw hwVar) {
            if (!C3180gq.m32933a().f5246d) {
                C3356jq.m32615a(4, C3221hn.f5373e, "Not yahoo app. Don't log event Flurry.PulseFail");
                return;
            }
            HashMap hashMap = new HashMap(3);
            hashMap.put("fl.Partner", str);
            hashMap.put("fl.Event", str2);
            hashMap.put("fl.Trigger", m32869a(hwVar));
            try {
                C3180gq.m32933a().m32928a("Flurry.PulseFail", (Map<String, String>) hashMap, false);
            } catch (Throwable th) {
                C3356jq.m32612a(C3221hn.f5373e, "Failed to log event: Flurry.PulseFail", th);
            }
        }
    }

    public C3221hn() {
        AbstractC3377kc.f5803b = 30000L;
        this.f5805d = AbstractC3377kc.f5803b;
    }

    /* renamed from: a */
    public static /* synthetic */ void m32874a(C3221hn hnVar, C3229hp hpVar, C3225ho hoVar) {
        C3234hr.m32838c().m32841b(hpVar);
        hnVar.m32557c((C3221hn) hoVar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m32873a(C3221hn hnVar, C3229hp hpVar, C3225ho hoVar, C3363jx jxVar) {
        List<String> a = jxVar.m32582a("Location");
        String b = (a == null || a.size() <= 0) ? null : C3452lf.m32435b(a.get(0), hoVar.f5799q);
        boolean a2 = C3234hr.m32838c().m32846a(hpVar, b);
        if (a2) {
            String str = f5373e;
            C3356jq.m32615a(3, str, "Received redirect url. Retrying: " + b);
        } else {
            C3356jq.m32615a(3, f5373e, "Received redirect url. Retrying: false");
        }
        if (a2) {
            hoVar.f5800r = b;
            jxVar.f5766g = b;
            C3338jg<String, String> jgVar = jxVar.f5765f;
            if (jgVar != null && jgVar.f5707a.containsKey("Location")) {
                jxVar.f5765f.m32651b("Location");
            }
            C3323iz.m32690a().m32623a((Object) hnVar, (C3221hn) jxVar);
            return;
        }
        hnVar.m32557c((C3221hn) hoVar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m32872a(C3221hn hnVar, C3229hp hpVar, C3225ho hoVar, String str) {
        boolean b = C3234hr.m32838c().m32840b(hpVar, str);
        String str2 = f5373e;
        C3356jq.m32615a(3, str2, "Failed report retrying: " + b);
        if (b) {
            hnVar.m32554d(hoVar);
        } else {
            hnVar.m32557c((C3221hn) hoVar);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m32870b(C3221hn hnVar, C3229hp hpVar, C3225ho hoVar) {
        String str = f5373e;
        C3356jq.m32615a(3, str, hoVar.f5384g.f5427d + " report sent successfully to : " + hoVar.f5389l);
        C3234hr.m32838c().m32847a(hpVar);
        hnVar.m32557c((C3221hn) hoVar);
    }

    @Override // com.flurry.sdk.AbstractC3377kc
    /* renamed from: a */
    public final C3342jj<List<C3225ho>> mo32566a() {
        return new C3342jj<>(C3331jb.m32681a().f5679a.getFileStreamPath(".yflurryanpulsecallbackreporter"), ".yflurryanpulsecallbackreporter", 2, new AbstractC3422ko<List<C3225ho>>(this) { // from class: com.flurry.sdk.hn.1
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<List<C3225ho>> mo32339a(int i) {
                return new C3414kk(new C3225ho.C3226a());
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v32, types: [byte[], RequestObjectType] */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.flurry.sdk.AbstractC3377kc
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void mo32565a(com.flurry.sdk.C3225ho r10) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3221hn.mo32565a(com.flurry.sdk.kb):void");
    }

    @Override // com.flurry.sdk.AbstractC3377kc
    /* renamed from: a */
    public final void mo32563a(List<C3225ho> list) {
        synchronized (this) {
            C3234hr.m32838c();
            List<C3242hs> d = C3234hr.m32835d();
            if (d != null) {
                if (d.size() != 0) {
                    String str = f5373e;
                    C3356jq.m32615a(3, str, "Restoring " + d.size() + " from report queue.");
                    for (C3242hs hsVar : d) {
                        C3234hr.m32838c().m32839b(hsVar);
                    }
                    C3234hr.m32838c();
                    for (C3242hs hsVar2 : C3234hr.m32843b()) {
                        for (C3225ho hoVar : hsVar2.m32826a()) {
                            if (!hoVar.f5390m) {
                                String str2 = f5373e;
                                C3356jq.m32615a(3, str2, "Callback for " + hoVar.f5384g.f5427d + " to " + hoVar.f5389l + " not completed.  Adding to reporter queue.");
                                list.add(hoVar);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3377kc
    /* renamed from: b */
    public final void mo32559b(List<C3225ho> list) {
        synchronized (this) {
            C3234hr.m32838c().m32849a();
        }
    }
}
