package com.revenuecat.purchases;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.billingclient.api.AbstractC0574c;
import com.revenuecat.purchases.Purchases$Companion$isBillingSupported$;
import com.revenuecat.purchases.Purchases$Companion$isFeatureSupported$;
import com.revenuecat.purchases.common.AppConfig;
import com.revenuecat.purchases.common.Backend;
import com.revenuecat.purchases.common.BillingWrapper;
import com.revenuecat.purchases.common.BillingWrapper$ClientFactory;
import com.revenuecat.purchases.common.Config;
import com.revenuecat.purchases.common.Dispatcher;
import com.revenuecat.purchases.common.HTTPClient;
import com.revenuecat.purchases.common.PlatformInfo;
import com.revenuecat.purchases.common.attribution.AttributionData;
import com.revenuecat.purchases.common.caching.DeviceCache;
import com.revenuecat.purchases.identity.IdentityManager;
import com.revenuecat.purchases.interfaces.Callback;
import com.revenuecat.purchases.subscriberattributes.AttributionFetcher;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributesManager;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributesPoster;
import com.revenuecat.purchases.subscriberattributes.caching.SubscriberAttributesCache;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.UninitializedPropertyAccessException;
import kotlin.c0.m;
import kotlin.w.c.g;
import kotlin.w.c.k;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Purchases$Companion.class */
public final class Purchases$Companion {
    private Purchases$Companion() {
    }

    public /* synthetic */ Purchases$Companion(g gVar) {
        this();
    }

    public static /* synthetic */ void addAttributionData$default(Purchases$Companion purchases$Companion, Map map, Purchases$AttributionNetwork purchases$AttributionNetwork, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        purchases$Companion.addAttributionData(map, purchases$AttributionNetwork, str);
    }

    public static /* synthetic */ void addAttributionData$default(Purchases$Companion purchases$Companion, JSONObject jSONObject, Purchases$AttributionNetwork purchases$AttributionNetwork, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        purchases$Companion.addAttributionData(jSONObject, purchases$AttributionNetwork, str);
    }

    public static /* synthetic */ Purchases configure$default(Purchases$Companion purchases$Companion, Context context, String str, String str2, boolean z, ExecutorService executorService, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            executorService = purchases$Companion.createDefaultExecutor();
        }
        return purchases$Companion.configure(context, str, str2, z, executorService);
    }

    private final ExecutorService createDefaultExecutor() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        k.e(newSingleThreadScheduledExecutor, "Executors.newSingleThreadScheduledExecutor()");
        return newSingleThreadScheduledExecutor;
    }

    private final Application getApplication(Context context) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        return (Application) applicationContext;
    }

    public static /* synthetic */ void getDebugLogsEnabled$annotations() {
    }

    public static /* synthetic */ void getFrameworkVersion$annotations() {
    }

    public static /* synthetic */ void getPlatformInfo$annotations() {
    }

    public static /* synthetic */ void getProxyURL$annotations() {
    }

    public static /* synthetic */ void getSharedInstance$annotations() {
    }

    private final boolean hasPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public final void addAttributionData(Map<String, ? extends Object> map, Purchases$AttributionNetwork purchases$AttributionNetwork, String str) {
        k.f(map, "data");
        k.f(purchases$AttributionNetwork, "network");
        JSONObject jSONObject = new JSONObject();
        for (String str2 : map.keySet()) {
            try {
                Object obj = map.get(str2);
                if (obj == null || jSONObject.put(str2, obj) == null) {
                    jSONObject.put(str2, JSONObject.NULL);
                }
            } catch (JSONException e) {
                Log.e("Purchases", "Failed to add key " + str2 + " to attribution map");
            }
        }
        addAttributionData(jSONObject, purchases$AttributionNetwork, str);
    }

    public final void addAttributionData(JSONObject jSONObject, Purchases$AttributionNetwork purchases$AttributionNetwork, String str) {
        k.f(jSONObject, "data");
        k.f(purchases$AttributionNetwork, "network");
        Purchases backingFieldSharedInstance$purchases_release = getBackingFieldSharedInstance$purchases_release();
        if (backingFieldSharedInstance$purchases_release != null) {
            backingFieldSharedInstance$purchases_release.postAttributionData$purchases_release(jSONObject, PurchasesKt.convert(purchases$AttributionNetwork), str);
        } else {
            new addAttributionData.1(jSONObject, purchases$AttributionNetwork, str).invoke();
        }
    }

    public final Purchases configure(Context context, String str) {
        return configure$default(this, context, str, null, false, null, 28, null);
    }

    public final Purchases configure(Context context, String str, String str2) {
        return configure$default(this, context, str, str2, false, null, 24, null);
    }

    public final Purchases configure(Context context, String str, String str2, boolean z) {
        return configure$default(this, context, str, str2, z, null, 16, null);
    }

    public final Purchases configure(Context context, String str, String str2, boolean z, ExecutorService executorService) {
        k.f(context, "context");
        k.f(str, "apiKey");
        k.f(executorService, "service");
        if (hasPermission(context, "android.permission.INTERNET")) {
            if (!(!m.s(str))) {
                throw new IllegalArgumentException("API key must be set. Get this from the RevenueCat web app".toString());
            }
            if (!(context.getApplicationContext() instanceof Application)) {
                throw new IllegalArgumentException("Needs an application context.".toString());
            }
            Application application = getApplication(context);
            AppConfig appConfig = new AppConfig(context, z, getPlatformInfo(), getProxyURL());
            Dispatcher dispatcher = new Dispatcher(executorService);
            Backend backend = new Backend(str, dispatcher, new HTTPClient(appConfig));
            SubscriberAttributesPoster subscriberAttributesPoster = new SubscriberAttributesPoster(backend);
            BillingWrapper billingWrapper = new BillingWrapper(new BillingWrapper$ClientFactory(application), new Handler(application.getMainLooper()));
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(application);
            k.e(defaultSharedPreferences, "prefs");
            DeviceCache deviceCache = new DeviceCache(defaultSharedPreferences, str, null, null, 12, null);
            SubscriberAttributesCache subscriberAttributesCache = new SubscriberAttributesCache(deviceCache);
            Purchases purchases = new Purchases(application, str2, backend, billingWrapper, deviceCache, dispatcher, new IdentityManager(deviceCache, subscriberAttributesCache, backend), new SubscriberAttributesManager(subscriberAttributesCache, subscriberAttributesPoster, new AttributionFetcher(dispatcher)), appConfig);
            Purchases.Companion.setSharedInstance$purchases_release(purchases);
            return purchases;
        }
        throw new IllegalArgumentException("Purchases requires INTERNET permission.".toString());
    }

    public final Purchases getBackingFieldSharedInstance$purchases_release() {
        return Purchases.access$getBackingFieldSharedInstance$cp();
    }

    public final boolean getDebugLogsEnabled() {
        return Config.INSTANCE.getDebugLogsEnabled();
    }

    public final String getFrameworkVersion() {
        return Purchases.access$getFrameworkVersion$cp();
    }

    public final PlatformInfo getPlatformInfo() {
        return Purchases.access$getPlatformInfo$cp();
    }

    public final List<AttributionData> getPostponedAttributionData$purchases_release() {
        return Purchases.access$getPostponedAttributionData$cp();
    }

    public final URL getProxyURL() {
        return Purchases.access$getProxyURL$cp();
    }

    public final Purchases getSharedInstance() {
        Purchases backingFieldSharedInstance$purchases_release = Purchases.Companion.getBackingFieldSharedInstance$purchases_release();
        if (backingFieldSharedInstance$purchases_release != null) {
            return backingFieldSharedInstance$purchases_release;
        }
        throw new UninitializedPropertyAccessException("There is no singleton instance. Make sure you configure Purchases before trying to get the default instance.");
    }

    public final void isBillingSupported(Context context, Callback<Boolean> callback) {
        k.f(context, "context");
        k.f(callback, "callback");
        AbstractC0574c.C0576b m4227g = AbstractC0574c.m4227g(context);
        m4227g.m4221b();
        m4227g.m4220c(isBillingSupported.1.INSTANCE);
        AbstractC0574c m4222a = m4227g.m4222a();
        m4222a.m4223k(new Purchases$Companion$isBillingSupported$.inlined.let.lambda.1(m4222a, callback));
    }

    public final void isFeatureSupported(String str, Context context, Callback<Boolean> callback) {
        k.f(str, "feature");
        k.f(context, "context");
        k.f(callback, "callback");
        AbstractC0574c.C0576b m4227g = AbstractC0574c.m4227g(context);
        m4227g.m4221b();
        m4227g.m4220c(isFeatureSupported.1.INSTANCE);
        AbstractC0574c m4222a = m4227g.m4222a();
        m4222a.m4223k(new Purchases$Companion$isFeatureSupported$.inlined.let.lambda.1(m4222a, str, callback));
    }

    public final void setBackingFieldSharedInstance$purchases_release(Purchases purchases) {
        Purchases.access$setBackingFieldSharedInstance$cp(purchases);
    }

    public final void setDebugLogsEnabled(boolean z) {
        Config.INSTANCE.setDebugLogsEnabled(z);
    }

    public final void setPlatformInfo(PlatformInfo platformInfo) {
        k.f(platformInfo, "<set-?>");
        Purchases.access$setPlatformInfo$cp(platformInfo);
    }

    public final void setPostponedAttributionData$purchases_release(List<AttributionData> list) {
        k.f(list, "<set-?>");
        Purchases.access$setPostponedAttributionData$cp(list);
    }

    public final void setProxyURL(URL url) {
        Purchases.access$setProxyURL$cp(url);
    }

    public final void setSharedInstance$purchases_release(Purchases purchases) {
        k.f(purchases, "value");
        Purchases$Companion purchases$Companion = Purchases.Companion;
        Purchases backingFieldSharedInstance$purchases_release = purchases$Companion.getBackingFieldSharedInstance$purchases_release();
        if (backingFieldSharedInstance$purchases_release != null) {
            backingFieldSharedInstance$purchases_release.close();
        }
        purchases$Companion.setBackingFieldSharedInstance$purchases_release(purchases);
        Iterator<AttributionData> it = purchases$Companion.getPostponedAttributionData$purchases_release().iterator();
        while (it.hasNext()) {
            AttributionData next = it.next();
            purchases.postAttributionData$purchases_release(next.getData(), next.getNetwork(), next.getNetworkUserId());
            it.remove();
        }
    }
}
