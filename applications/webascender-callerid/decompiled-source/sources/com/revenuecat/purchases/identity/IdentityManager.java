package com.revenuecat.purchases.identity;

import com.revenuecat.purchases.PurchasesError;
import com.revenuecat.purchases.common.Backend;
import com.revenuecat.purchases.common.LogUtilsKt;
import com.revenuecat.purchases.common.caching.DeviceCache;
import com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesCache;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import kotlin.c0.j;
import kotlin.c0.m;
import kotlin.r;
import kotlin.w.b.a;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/identity/IdentityManager.class */
public final class IdentityManager {
    private final Backend backend;
    private final DeviceCache deviceCache;
    private final SubscriberAttributesCache subscriberAttributesCache;

    public IdentityManager(DeviceCache deviceCache, SubscriberAttributesCache subscriberAttributesCache, Backend backend) {
        k.f(deviceCache, "deviceCache");
        k.f(subscriberAttributesCache, "subscriberAttributesCache");
        k.f(backend, "backend");
        this.deviceCache = deviceCache;
        this.subscriberAttributesCache = subscriberAttributesCache;
        this.backend = backend;
    }

    private final String generateRandomID() {
        StringBuilder sb = new StringBuilder();
        sb.append("$RCAnonymousID:");
        String uuid = UUID.randomUUID().toString();
        k.e(uuid, "UUID.randomUUID().toString()");
        Locale locale = Locale.ROOT;
        k.e(locale, "Locale.ROOT");
        Objects.requireNonNull(uuid, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = uuid.toLowerCase(locale);
        k.e(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        String z = m.z(lowerCase, "-", "", false, 4, (Object) null);
        LogUtilsKt.debugLog("Generated New App User ID - " + z);
        r rVar = r.a;
        sb.append(z);
        return sb.toString();
    }

    public final void configure(String str) {
        synchronized (this) {
            if (str == null) {
                str = this.deviceCache.getCachedAppUserID();
            }
            if (str == null) {
                str = this.deviceCache.getLegacyCachedAppUserID();
            }
            if (str == null) {
                str = generateRandomID();
            }
            LogUtilsKt.debugLog("Identifying App User ID: " + str);
            this.deviceCache.cacheAppUserID(str);
            this.subscriberAttributesCache.cleanUpSubscriberAttributeCache(str);
        }
    }

    public final void createAlias(String str, a<r> aVar, l<? super PurchasesError, r> lVar) {
        k.f(str, "newAppUserID");
        k.f(aVar, "onSuccess");
        k.f(lVar, "onError");
        LogUtilsKt.debugLog("Creating an alias to " + getCurrentAppUserID() + " from " + str);
        this.backend.createAlias(getCurrentAppUserID(), str, new createAlias.1(this, str, aVar), lVar);
    }

    public final boolean currentUserIsAnonymous() {
        boolean z;
        synchronized (this) {
            j jVar = new j("^\\$RCAnonymousID:([a-f0-9]{32})$");
            String cachedAppUserID = this.deviceCache.getCachedAppUserID();
            if (cachedAppUserID == null) {
                cachedAppUserID = "";
            }
            z = jVar.c(cachedAppUserID) || k.b(this.deviceCache.getCachedAppUserID(), this.deviceCache.getLegacyCachedAppUserID());
        }
        return z;
    }

    public final String getCurrentAppUserID() {
        String cachedAppUserID = this.deviceCache.getCachedAppUserID();
        if (cachedAppUserID == null) {
            cachedAppUserID = "";
        }
        return cachedAppUserID;
    }

    public final void identify(String str, a<r> aVar, l<? super PurchasesError, r> lVar) {
        k.f(str, "appUserID");
        k.f(aVar, "onSuccess");
        k.f(lVar, "onError");
        if (currentUserIsAnonymous()) {
            LogUtilsKt.debugLog("Identifying from an anonymous ID: " + str + ". An alias will be created.");
            createAlias(str, aVar, lVar);
            return;
        }
        synchronized (this) {
            LogUtilsKt.debugLog("Changing App User ID: " + getCurrentAppUserID() + " -> " + str);
            this.deviceCache.clearCachesForAppUserID(getCurrentAppUserID());
            this.subscriberAttributesCache.clearSubscriberAttributesIfSyncedForSubscriber(getCurrentAppUserID());
            this.deviceCache.cacheAppUserID(str);
            r rVar = r.a;
        }
        aVar.invoke();
    }

    public final void reset() {
        synchronized (this) {
            this.deviceCache.clearCachesForAppUserID(getCurrentAppUserID());
            this.subscriberAttributesCache.clearSubscriberAttributesIfSyncedForSubscriber(getCurrentAppUserID());
            this.deviceCache.cacheAppUserID(generateRandomID());
        }
    }
}
