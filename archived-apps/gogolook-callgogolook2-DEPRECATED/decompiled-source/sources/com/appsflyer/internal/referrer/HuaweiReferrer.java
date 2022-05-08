package com.appsflyer.internal.referrer;

import android.content.Context;
import com.appsflyer.internal.ContentFetcher;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/HuaweiReferrer.class */
public class HuaweiReferrer extends ContentFetcher<Map<String, Object>> {
    public Map<String, Object> map;

    /* renamed from: ɩ */
    public Runnable f1899;

    public HuaweiReferrer(Runnable runnable, Context context) {
        super(context, "com.huawei.appmarket.commondata", "ffe391e0ea186d0734ed601e4e70e3224b7309d48e2075bac46d8c667eae7212", 0L);
        this.f1899 = runnable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x014c, code lost:
        if (0 == 0) goto L_0x0156;
     */
    @Override // com.appsflyer.internal.ContentFetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Object> query() {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.referrer.HuaweiReferrer.query():java.util.Map");
    }
}
