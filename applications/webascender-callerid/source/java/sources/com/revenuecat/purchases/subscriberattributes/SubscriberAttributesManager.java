package com.revenuecat.purchases.subscriberattributes;

import android.app.Application;
import com.revenuecat.purchases.common.DateProvider;
import com.revenuecat.purchases.common.LogUtilsKt;
import com.revenuecat.purchases.common.SubscriberAttributeError;
import com.revenuecat.purchases.strings.AttributionStrings;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributesManager$synchronizeSubscriberAttributesForAllUsers$;
import com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesCache;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.p;
import kotlin.r;
import kotlin.s.b0;
import kotlin.w.b.l;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager.class */
public final class SubscriberAttributesManager {
    private final AttributionFetcher attributionFetcher;
    private final SubscriberAttributesPoster backend;
    private final SubscriberAttributesCache deviceCache;

    public SubscriberAttributesManager(SubscriberAttributesCache subscriberAttributesCache, SubscriberAttributesPoster subscriberAttributesPoster, AttributionFetcher attributionFetcher) {
        k.f(subscriberAttributesCache, "deviceCache");
        k.f(subscriberAttributesPoster, "backend");
        k.f(attributionFetcher, "attributionFetcher");
        this.deviceCache = subscriberAttributesCache;
        this.backend = subscriberAttributesPoster;
        this.attributionFetcher = attributionFetcher;
    }

    private final void getDeviceIdentifiers(Application application, l<? super Map<String, String>, r> lVar) {
        this.attributionFetcher.getDeviceIdentifiers(application, new getDeviceIdentifiers.1(lVar));
    }

    private final void storeAttributesIfNeeded(Map<String, SubscriberAttribute> map, String str) {
        Map<String, SubscriberAttribute> allStoredSubscriberAttributes = this.deviceCache.getAllStoredSubscriberAttributes(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, SubscriberAttribute> entry : map.entrySet()) {
            String key = entry.getKey();
            SubscriberAttribute value = entry.getValue();
            boolean z = true;
            if (allStoredSubscriberAttributes.containsKey(key)) {
                SubscriberAttribute subscriberAttribute = allStoredSubscriberAttributes.get(key);
                z = k.b(subscriberAttribute != null ? subscriberAttribute.getValue() : null, value.getValue()) ^ true;
            }
            if (z) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (!linkedHashMap.isEmpty()) {
            this.deviceCache.setAttributes(str, linkedHashMap);
        }
    }

    public final void collectDeviceIdentifiers(String str, Application application) {
        k.f(str, "appUserID");
        k.f(application, "applicationContext");
        getDeviceIdentifiers(application, new collectDeviceIdentifiers.1(this, str));
    }

    public final SubscriberAttributesPoster getBackend() {
        return this.backend;
    }

    public final SubscriberAttributesCache getDeviceCache() {
        return this.deviceCache;
    }

    public final Map<String, SubscriberAttribute> getUnsyncedSubscriberAttributes(String str) {
        Map<String, SubscriberAttribute> unsyncedSubscriberAttributes;
        synchronized (this) {
            k.f(str, "appUserID");
            unsyncedSubscriberAttributes = this.deviceCache.getUnsyncedSubscriberAttributes(str);
        }
        return unsyncedSubscriberAttributes;
    }

    public final void markAsSynced(String str, Map<String, SubscriberAttribute> map, List<SubscriberAttributeError> list) {
        synchronized (this) {
            k.f(str, "appUserID");
            k.f(map, "attributesToMarkAsSynced");
            k.f(list, "attributeErrors");
            if (!list.isEmpty()) {
                LogUtilsKt.errorLog("There were some subscriber attributes errors: " + list);
            }
            if (map.isEmpty()) {
                return;
            }
            LogUtilsKt.debugLog("Marking the following attributes as synced for appUserID: " + str + ": \n" + kotlin.s.k.R(map.values(), "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62, (Object) null));
            Map<String, SubscriberAttribute> allStoredSubscriberAttributes = this.deviceCache.getAllStoredSubscriberAttributes(str);
            Map<String, SubscriberAttribute> v = b0.v(allStoredSubscriberAttributes);
            for (Map.Entry<String, SubscriberAttribute> entry : map.entrySet()) {
                String key = entry.getKey();
                SubscriberAttribute value = entry.getValue();
                SubscriberAttribute subscriberAttribute = allStoredSubscriberAttributes.get(key);
                if (subscriberAttribute != null) {
                    SubscriberAttribute subscriberAttribute2 = null;
                    if (subscriberAttribute.isSynced()) {
                        subscriberAttribute = null;
                    }
                    if (subscriberAttribute != null) {
                        if (k.b(subscriberAttribute.getValue(), value.getValue())) {
                            subscriberAttribute2 = subscriberAttribute;
                        }
                        if (subscriberAttribute2 != null) {
                            v.put(key, SubscriberAttribute.copy$default(value, null, null, null, null, true, 15, null));
                        }
                    }
                }
            }
            this.deviceCache.setAttributes(str, v);
        }
    }

    public final void setAttribute(SubscriberAttributeKey subscriberAttributeKey, String str, String str2) {
        synchronized (this) {
            k.f(subscriberAttributeKey, SubscriberAttributeKt.JSON_NAME_KEY);
            k.f(str2, "appUserID");
            setAttributes(b0.c(p.a(subscriberAttributeKey.getBackendKey(), str)), str2);
        }
    }

    public final void setAttributes(Map<String, String> map, String str) {
        synchronized (this) {
            k.f(map, "attributesToSet");
            k.f(str, "appUserID");
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                arrayList.add(p.a(key, new SubscriberAttribute(key, entry.getValue(), (DateProvider) null, (Date) null, false, 28, (g) null)));
            }
            storeAttributesIfNeeded(b0.p(arrayList), str);
        }
    }

    public final void setAttributionID(SubscriberAttributeKey.AttributionIds attributionIds, String str, String str2, Application application) {
        k.f(attributionIds, "attributionKey");
        k.f(str2, "appUserID");
        k.f(application, "applicationContext");
        getDeviceIdentifiers(application, new setAttributionID.1(this, attributionIds, str, str2));
    }

    public final void synchronizeSubscriberAttributesForAllUsers(String str) {
        k.f(str, "currentAppUserID");
        Map<String, Map<String, SubscriberAttribute>> unsyncedSubscriberAttributes = this.deviceCache.getUnsyncedSubscriberAttributes();
        if (unsyncedSubscriberAttributes.isEmpty()) {
            LogUtilsKt.debugLog(AttributionStrings.NO_SUBSCRIBER_ATTRIBUTES_TO_SYNCHRONIZE);
            return;
        }
        for (Map.Entry<String, Map<String, SubscriberAttribute>> entry : unsyncedSubscriberAttributes.entrySet()) {
            String key = entry.getKey();
            Map<String, SubscriberAttribute> value = entry.getValue();
            this.backend.postSubscriberAttributes(BackendHelpersKt.toBackendMap(value), key, new SubscriberAttributesManager$synchronizeSubscriberAttributesForAllUsers$.inlined.forEach.lambda.1(key, value, this, str), new SubscriberAttributesManager$synchronizeSubscriberAttributesForAllUsers$.inlined.forEach.lambda.2(key, value, this, str));
        }
    }
}
