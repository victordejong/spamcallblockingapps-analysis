package com.flurry.sdk;

import com.flurry.sdk.C3324j;
/* renamed from: com.flurry.sdk.dw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dw.class */
public class C3009dw {

    /* renamed from: a */
    public static final String f4692a = "dw";

    /* renamed from: a */
    public static void m33319a(AbstractC3518x xVar) {
        if (xVar != null) {
            String str = f4692a;
            C3356jq.m32615a(3, str, "Firing onFetched, adObject=" + xVar);
            C3324j jVar = new C3324j();
            jVar.f5647a = xVar;
            jVar.f5648b = C3324j.EnumC3325a.kOnFetched;
            jVar.m32637b();
        }
    }

    /* renamed from: a */
    public static void m33318a(AbstractC3518x xVar, EnumC2873bh bhVar) {
        if (xVar != null && bhVar != null) {
            String str = f4692a;
            C3356jq.m32615a(3, str, "Firing onFetchFailed, adObject=" + xVar + ", errorCode=" + bhVar);
            C3324j jVar = new C3324j();
            jVar.f5647a = xVar;
            jVar.f5648b = C3324j.EnumC3325a.kOnFetchFailed;
            jVar.f5649c = bhVar;
            jVar.m32637b();
        }
    }
}
