package com.revenuecat.purchases.subscriberattributes;

import java.util.ArrayList;
import java.util.Map;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/BackendHelpersKt.class */
public final class BackendHelpersKt {
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0106, code lost:
        if (r6 != null) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<com.revenuecat.purchases.common.SubscriberAttributeError> getAttributeErrors(org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.subscriberattributes.BackendHelpersKt.getAttributeErrors(org.json.JSONObject):java.util.List");
    }

    public static final Map<String, Map<String, Object>> toBackendMap(Map<String, SubscriberAttribute> map) {
        k.f(map, "$this$toBackendMap");
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, SubscriberAttribute> entry : map.entrySet()) {
            arrayList.add(p.a(entry.getKey(), entry.getValue().toBackendMap()));
        }
        return b0.p(arrayList);
    }
}
