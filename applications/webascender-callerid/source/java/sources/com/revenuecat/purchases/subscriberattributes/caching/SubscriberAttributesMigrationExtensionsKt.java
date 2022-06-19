package com.revenuecat.purchases.subscriberattributes.caching;

import com.revenuecat.purchases.subscriberattributes.SubscriberAttribute;
import java.util.Map;
import kotlin.s.b0;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesMigrationExtensionsKt.class */
public final class SubscriberAttributesMigrationExtensionsKt {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0073, code lost:
        if (r9 != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.Map<java.lang.String, java.util.Map<java.lang.String, com.revenuecat.purchases.subscriberattributes.SubscriberAttribute>> getAllLegacyStoredSubscriberAttributes(com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesCache r7) {
        /*
            java.lang.Class<com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt> r0 = com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt.class
            monitor-enter(r0)
            r0 = r7
            java.lang.String r1 = "$this$getAllLegacyStoredSubscriberAttributes"
            kotlin.w.c.k.f(r0, r1)     // Catch: java.lang.Throwable -> L97
            r0 = r7
            java.lang.String r1 = ""
            java.lang.String r0 = legacySubscriberAttributesCacheKey(r0, r1)     // Catch: java.lang.Throwable -> L97
            r8 = r0
            r0 = r7
            com.revenuecat.purchases.common.caching.DeviceCache r0 = r0.getDeviceCache$subscriber_attributes_release()     // Catch: java.lang.Throwable -> L97
            r1 = r8
            java.util.Set r0 = r0.findKeysThatStartWith(r1)     // Catch: java.lang.Throwable -> L97
            r9 = r0
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L97
            r10 = r0
            r0 = r10
            r1 = r9
            r2 = 10
            int r1 = kotlin.s.k.q(r1, r2)     // Catch: java.lang.Throwable -> L97
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L97
            r0 = r9
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L97
            r11 = r0
        L2f:
            r0 = r11
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L8d
            r0 = r11
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L97
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L97
            r9 = r0
            r0 = r9
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> L97
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4     // Catch: java.lang.Throwable -> L97
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            java.util.List r0 = kotlin.c0.m.r0(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L97
            r1 = 1
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L97
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L97
            r12 = r0
            r0 = r7
            com.revenuecat.purchases.common.caching.DeviceCache r0 = r0.getDeviceCache$subscriber_attributes_release()     // Catch: java.lang.Throwable -> L97
            r1 = r9
            org.json.JSONObject r0 = r0.getJSONObjectOrNull(r1)     // Catch: java.lang.Throwable -> L97
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L79
            r0 = r9
            java.util.Map r0 = com.revenuecat.purchases.subscriberattributes.SubscriberAttributesFactoriesKt.buildLegacySubscriberAttributes(r0)     // Catch: java.lang.Throwable -> L97
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L79
            goto L7d
        L79:
            java.util.Map r0 = kotlin.s.b0.e()     // Catch: java.lang.Throwable -> L97
            r9 = r0
        L7d:
            r0 = r10
            r1 = r12
            r2 = r9
            kotlin.l r1 = kotlin.p.a(r1, r2)     // Catch: java.lang.Throwable -> L97
            boolean r0 = r0.add(r1)     // Catch: java.lang.Throwable -> L97
            goto L2f
        L8d:
            r0 = r10
            java.util.Map r0 = kotlin.s.b0.p(r0)     // Catch: java.lang.Throwable -> L97
            r7 = r0
            java.lang.Class<com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt> r0 = com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt.class
            monitor-exit(r0)
            r0 = r7
            return r0
        L97:
            r7 = move-exception
            java.lang.Class<com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt> r0 = com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt.class
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesMigrationExtensionsKt.getAllLegacyStoredSubscriberAttributes(com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesCache):java.util.Map");
    }

    public static final String legacySubscriberAttributesCacheKey(SubscriberAttributesCache subscriberAttributesCache, String str) {
        k.f(subscriberAttributesCache, "$this$legacySubscriberAttributesCacheKey");
        k.f(str, "appUserID");
        return subscriberAttributesCache.getSubscriberAttributesCacheKey$subscriber_attributes_release() + '.' + str;
    }

    public static final void migrateSubscriberAttributes(SubscriberAttributesCache subscriberAttributesCache, Map<String, ? extends Map<String, SubscriberAttribute>> map) {
        synchronized (SubscriberAttributesMigrationExtensionsKt.class) {
            try {
                k.f(subscriberAttributesCache, "$this$migrateSubscriberAttributes");
                k.f(map, "legacySubscriberAttributesForAppUserID");
                Map<String, Map<String, SubscriberAttribute>> allStoredSubscriberAttributes = subscriberAttributesCache.getAllStoredSubscriberAttributes();
                Map<String, ? extends Map<String, SubscriberAttribute>> v = b0.v(allStoredSubscriberAttributes);
                for (Map.Entry<String, ? extends Map<String, SubscriberAttribute>> entry : map.entrySet()) {
                    String key = entry.getKey();
                    Map<String, SubscriberAttribute> value = entry.getValue();
                    Map<String, SubscriberAttribute> map2 = allStoredSubscriberAttributes.get(key);
                    if (map2 == null) {
                        map2 = b0.e();
                    }
                    v.put(key, b0.l(value, map2));
                    subscriberAttributesCache.getDeviceCache$subscriber_attributes_release().remove(legacySubscriberAttributesCacheKey(subscriberAttributesCache, key));
                }
                subscriberAttributesCache.putAttributes$subscriber_attributes_release(subscriberAttributesCache.getDeviceCache$subscriber_attributes_release(), v);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void migrateSubscriberAttributesIfNeeded(SubscriberAttributesCache subscriberAttributesCache) {
        synchronized (SubscriberAttributesMigrationExtensionsKt.class) {
            try {
                k.f(subscriberAttributesCache, "$this$migrateSubscriberAttributesIfNeeded");
                Map<String, Map<String, SubscriberAttribute>> allLegacyStoredSubscriberAttributes = getAllLegacyStoredSubscriberAttributes(subscriberAttributesCache);
                if (!(!allLegacyStoredSubscriberAttributes.isEmpty())) {
                    allLegacyStoredSubscriberAttributes = null;
                }
                if (allLegacyStoredSubscriberAttributes != null) {
                    migrateSubscriberAttributes(subscriberAttributesCache, allLegacyStoredSubscriberAttributes);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
