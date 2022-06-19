package com.revenuecat.purchases.subscriberattributes.caching;

import com.revenuecat.purchases.common.LogUtilsKt;
import com.revenuecat.purchases.common.caching.DeviceCache;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttribute;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.g;
import kotlin.h;
import kotlin.l;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache.class */
public final class SubscriberAttributesCache {
    private final DeviceCache deviceCache;
    private final g subscriberAttributesCacheKey$delegate = h.a(new subscriberAttributesCacheKey.2(this));

    public SubscriberAttributesCache(DeviceCache deviceCache) {
        k.f(deviceCache, "deviceCache");
        this.deviceCache = deviceCache;
    }

    private final void deleteSyncedSubscriberAttributesForOtherUsers(String str) {
        l lVar;
        synchronized (this) {
            LogUtilsKt.debugLog("Deleting old synced subscriber attributes that don't belong to " + str + '.');
            Map<String, Map<String, SubscriberAttribute>> allStoredSubscriberAttributes = getAllStoredSubscriberAttributes();
            ArrayList arrayList = new ArrayList(allStoredSubscriberAttributes.size());
            for (Map.Entry<String, Map<String, SubscriberAttribute>> entry : allStoredSubscriberAttributes.entrySet()) {
                String key = entry.getKey();
                Map<String, SubscriberAttribute> value = entry.getValue();
                if (!k.b(str, key)) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry<String, SubscriberAttribute> entry2 : value.entrySet()) {
                        if (!entry2.getValue().isSynced()) {
                            linkedHashMap.put(entry2.getKey(), entry2.getValue());
                        }
                    }
                    lVar = p.a(key, linkedHashMap);
                } else {
                    lVar = p.a(key, value);
                }
                arrayList.add(lVar);
            }
            Map p = b0.p(arrayList);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry3 : p.entrySet()) {
                if (!((Map) entry3.getValue()).isEmpty()) {
                    linkedHashMap2.put(entry3.getKey(), entry3.getValue());
                }
            }
            putAttributes$subscriber_attributes_release(this.deviceCache, linkedHashMap2);
        }
    }

    private final Map<String, SubscriberAttribute> filterUnsynced(Map<String, SubscriberAttribute> map, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, SubscriberAttribute> entry : map.entrySet()) {
            if (!entry.getValue().isSynced()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Found ");
        sb.append(linkedHashMap.size());
        sb.append(" unsynced attributes for appUserID: ");
        sb.append(str);
        sb.append(" \n");
        sb.append(linkedHashMap.isEmpty() ^ true ? kotlin.s.k.R(linkedHashMap.values(), "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (kotlin.w.b.l) null, 62, (Object) null) : "");
        LogUtilsKt.debugLog(sb.toString());
        return linkedHashMap;
    }

    public final void cleanUpSubscriberAttributeCache(String str) {
        synchronized (this) {
            k.f(str, "currentAppUserID");
            SubscriberAttributesMigrationExtensionsKt.migrateSubscriberAttributesIfNeeded(this);
            deleteSyncedSubscriberAttributesForOtherUsers(str);
        }
    }

    public final void clearSubscriberAttributesIfSyncedForSubscriber(String str) {
        synchronized (this) {
            k.f(str, "appUserID");
            if (!getUnsyncedSubscriberAttributes(str).isEmpty()) {
                return;
            }
            LogUtilsKt.debugLog("Deleting subscriber attributes for " + str + " from cache.");
            Map v = b0.v(getAllStoredSubscriberAttributes());
            v.remove(str);
            putAttributes$subscriber_attributes_release(this.deviceCache, b0.r(v));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4 != null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.util.Map<java.lang.String, com.revenuecat.purchases.subscriberattributes.SubscriberAttribute>> getAllStoredSubscriberAttributes() {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            com.revenuecat.purchases.common.caching.DeviceCache r0 = r0.deviceCache     // Catch: java.lang.Throwable -> L26
            r1 = r3
            java.lang.String r1 = r1.getSubscriberAttributesCacheKey$subscriber_attributes_release()     // Catch: java.lang.Throwable -> L26
            org.json.JSONObject r0 = r0.getJSONObjectOrNull(r1)     // Catch: java.lang.Throwable -> L26
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1e
            r0 = r4
            java.util.Map r0 = com.revenuecat.purchases.subscriberattributes.SubscriberAttributesFactoriesKt.buildSubscriberAttributesMapPerUser(r0)     // Catch: java.lang.Throwable -> L26
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1e
            goto L22
        L1e:
            java.util.Map r0 = kotlin.s.b0.e()     // Catch: java.lang.Throwable -> L26
            r4 = r0
        L22:
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            return r0
        L26:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesCache.getAllStoredSubscriberAttributes():java.util.Map");
    }

    public final Map<String, SubscriberAttribute> getAllStoredSubscriberAttributes(String str) {
        Map<String, SubscriberAttribute> map;
        synchronized (this) {
            k.f(str, "appUserID");
            map = getAllStoredSubscriberAttributes().get(str);
            if (map == null) {
                map = b0.e();
            }
        }
        return map;
    }

    public final DeviceCache getDeviceCache$subscriber_attributes_release() {
        return this.deviceCache;
    }

    public final String getSubscriberAttributesCacheKey$subscriber_attributes_release() {
        return (String) this.subscriberAttributesCacheKey$delegate.getValue();
    }

    public final Map<String, Map<String, SubscriberAttribute>> getUnsyncedSubscriberAttributes() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            Map<String, Map<String, SubscriberAttribute>> allStoredSubscriberAttributes = getAllStoredSubscriberAttributes();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(b0.b(allStoredSubscriberAttributes.size()));
            for (Object obj : allStoredSubscriberAttributes.entrySet()) {
                Object key = ((Map.Entry) obj).getKey();
                Map.Entry entry = (Map.Entry) obj;
                linkedHashMap2.put(key, filterUnsynced((Map) entry.getValue(), (String) entry.getKey()));
            }
            linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                if (!((Map) entry2.getValue()).isEmpty()) {
                    linkedHashMap.put(entry2.getKey(), entry2.getValue());
                }
            }
        }
        return linkedHashMap;
    }

    public final Map<String, SubscriberAttribute> getUnsyncedSubscriberAttributes(String str) {
        Map<String, SubscriberAttribute> filterUnsynced;
        synchronized (this) {
            k.f(str, "appUserID");
            filterUnsynced = filterUnsynced(getAllStoredSubscriberAttributes(str), str);
        }
        return filterUnsynced;
    }

    public final void putAttributes$subscriber_attributes_release(DeviceCache deviceCache, Map<String, ? extends Map<String, SubscriberAttribute>> map) {
        k.f(deviceCache, "$this$putAttributes");
        k.f(map, "updatedSubscriberAttributesForAll");
        DeviceCache deviceCache2 = this.deviceCache;
        String subscriberAttributesCacheKey = deviceCache.getSubscriberAttributesCacheKey();
        String jSONObject = CachingHelpersKt.toJSONObject(map).toString();
        k.e(jSONObject, "updatedSubscriberAttribu…toJSONObject().toString()");
        deviceCache2.putString(subscriberAttributesCacheKey, jSONObject);
    }

    public final void setAttributes(String str, Map<String, SubscriberAttribute> map) {
        synchronized (this) {
            k.f(str, "appUserID");
            k.f(map, "attributesToBeSet");
            Map<String, Map<String, SubscriberAttribute>> allStoredSubscriberAttributes = getAllStoredSubscriberAttributes();
            Map<String, SubscriberAttribute> map2 = allStoredSubscriberAttributes.get(str);
            if (map2 == null) {
                map2 = b0.e();
            }
            putAttributes$subscriber_attributes_release(this.deviceCache, b0.l(allStoredSubscriberAttributes, b0.c(p.a(str, b0.l(map2, map)))));
        }
    }
}
