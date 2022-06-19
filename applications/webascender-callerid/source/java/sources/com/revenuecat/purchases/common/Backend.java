package com.revenuecat.purchases.common;

import android.net.Uri;
import com.revenuecat.purchases.PurchaserInfo;
import com.revenuecat.purchases.PurchasesError;
import com.revenuecat.purchases.common.Dispatcher;
import com.revenuecat.purchases.common.HTTPClient;
import com.revenuecat.purchases.common.attribution.AttributionNetwork;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.l;
import kotlin.r;
import kotlin.s.b0;
import kotlin.w.b.a;
import kotlin.w.b.p;
import kotlin.w.b.q;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/Backend.class */
public final class Backend {
    private final String apiKey;
    private final Map<String, String> authenticationHeaders;
    private final Dispatcher dispatcher;
    private final HTTPClient httpClient;
    private volatile Map<List<String>, List<l<kotlin.w.b.l<PurchaserInfo, r>, kotlin.w.b.l<PurchasesError, r>>>> callbacks = new LinkedHashMap();
    private volatile Map<List<String>, List<l<p<PurchaserInfo, JSONObject, r>, q<PurchasesError, Boolean, JSONObject, r>>>> postReceiptCallbacks = new LinkedHashMap();
    private volatile Map<String, List<l<kotlin.w.b.l<JSONObject, r>, kotlin.w.b.l<PurchasesError, r>>>> offeringsCallbacks = new LinkedHashMap();

    public Backend(String str, Dispatcher dispatcher, HTTPClient hTTPClient) {
        k.f(str, "apiKey");
        k.f(dispatcher, "dispatcher");
        k.f(hTTPClient, "httpClient");
        this.apiKey = str;
        this.dispatcher = dispatcher;
        this.httpClient = hTTPClient;
        this.authenticationHeaders = b0.c(kotlin.p.a("Authorization", "Bearer " + str));
    }

    private final <K, S, E> void addCallback(Map<K, List<l<S, E>>> map, Dispatcher.AsyncCall asyncCall, K k, l<? extends S, ? extends E> lVar, boolean z) {
        if (!map.containsKey(k)) {
            map.put(k, kotlin.s.k.l(new l[]{lVar}));
            enqueue(asyncCall, z);
            return;
        }
        List<l<S, E>> list = map.get(k);
        k.d(list);
        list.add(lVar);
    }

    static /* synthetic */ void addCallback$default(Backend backend, Map map, Dispatcher.AsyncCall asyncCall, Object obj, l lVar, boolean z, int i, Object obj2) {
        if ((i & 8) != 0) {
            z = false;
        }
        backend.addCallback(map, asyncCall, obj, lVar, z);
    }

    public final String encode(String str) {
        String encode = Uri.encode(str);
        k.e(encode, "Uri.encode(string)");
        return encode;
    }

    private final void enqueue(Dispatcher.AsyncCall asyncCall, boolean z) {
        if (!this.dispatcher.isClosed()) {
            this.dispatcher.enqueue(asyncCall, z);
        }
    }

    static /* synthetic */ void enqueue$default(Backend backend, Dispatcher.AsyncCall asyncCall, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        backend.enqueue(asyncCall, z);
    }

    public final boolean isSuccessful(HTTPClient.Result result) {
        return result.getResponseCode() < 300;
    }

    public final void close() {
        this.dispatcher.close();
    }

    public final void createAlias(String str, String str2, a<r> aVar, kotlin.w.b.l<? super PurchasesError, r> lVar) {
        k.f(str, "appUserID");
        k.f(str2, "newAppUserID");
        k.f(aVar, "onSuccessHandler");
        k.f(lVar, "onErrorHandler");
        enqueue$default(this, new createAlias.1(this, str, str2, lVar, aVar), false, 2, null);
    }

    public final Map<String, String> getAuthenticationHeaders$common_release() {
        return this.authenticationHeaders;
    }

    public final Map<List<String>, List<l<kotlin.w.b.l<PurchaserInfo, r>, kotlin.w.b.l<PurchasesError, r>>>> getCallbacks() {
        Map<List<String>, List<l<kotlin.w.b.l<PurchaserInfo, r>, kotlin.w.b.l<PurchasesError, r>>>> map;
        synchronized (this) {
            map = this.callbacks;
        }
        return map;
    }

    public final void getOfferings(String str, boolean z, kotlin.w.b.l<? super JSONObject, r> lVar, kotlin.w.b.l<? super PurchasesError, r> lVar2) {
        k.f(str, "appUserID");
        k.f(lVar, "onSuccess");
        k.f(lVar2, "onError");
        String str2 = "/subscribers/" + encode(str) + "/offerings";
        getOfferings.call.1 r0 = new getOfferings.call.1(this, str2);
        synchronized (this) {
            addCallback(this.offeringsCallbacks, r0, str2, kotlin.p.a(lVar, lVar2), z);
            r rVar = r.a;
        }
    }

    public final Map<String, List<l<kotlin.w.b.l<JSONObject, r>, kotlin.w.b.l<PurchasesError, r>>>> getOfferingsCallbacks() {
        Map<String, List<l<kotlin.w.b.l<JSONObject, r>, kotlin.w.b.l<PurchasesError, r>>>> map;
        synchronized (this) {
            map = this.offeringsCallbacks;
        }
        return map;
    }

    public final Map<List<String>, List<l<p<PurchaserInfo, JSONObject, r>, q<PurchasesError, Boolean, JSONObject, r>>>> getPostReceiptCallbacks() {
        Map<List<String>, List<l<p<PurchaserInfo, JSONObject, r>, q<PurchasesError, Boolean, JSONObject, r>>>> map;
        synchronized (this) {
            map = this.postReceiptCallbacks;
        }
        return map;
    }

    public final void getPurchaserInfo(String str, boolean z, kotlin.w.b.l<? super PurchaserInfo, r> lVar, kotlin.w.b.l<? super PurchasesError, r> lVar2) {
        k.f(str, "appUserID");
        k.f(lVar, "onSuccess");
        k.f(lVar2, "onError");
        List b = kotlin.s.k.b("/subscribers/" + encode(str));
        getPurchaserInfo.call.1 r0 = new getPurchaserInfo.call.1(this, str, b);
        synchronized (this) {
            addCallback(this.callbacks, r0, b, kotlin.p.a(lVar, lVar2), z);
            r rVar = r.a;
        }
    }

    public final void performRequest(String str, Map<String, ? extends Object> map, kotlin.w.b.l<? super PurchasesError, r> lVar, a<r> aVar, q<? super PurchasesError, ? super Integer, ? super JSONObject, r> qVar) {
        k.f(str, "path");
        k.f(lVar, "onError");
        k.f(aVar, "onCompletedSuccessfully");
        k.f(qVar, "onCompletedWithErrors");
        enqueue$default(this, new performRequest.1(this, str, map, lVar, aVar, qVar), false, 2, null);
    }

    public final void postAttributionData(String str, AttributionNetwork attributionNetwork, JSONObject jSONObject, a<r> aVar) {
        k.f(str, "appUserID");
        k.f(attributionNetwork, "network");
        k.f(jSONObject, "data");
        k.f(aVar, "onSuccessHandler");
        if (jSONObject.length() == 0) {
            return;
        }
        enqueue$default(this, new postAttributionData.1(this, str, b0.h(new l[]{kotlin.p.a("network", Integer.valueOf(attributionNetwork.getServerValue())), kotlin.p.a("data", jSONObject)}), aVar), false, 2, null);
    }

    public final void postReceiptData(String str, String str2, boolean z, boolean z2, Map<String, ? extends Map<String, ? extends Object>> map, ProductInfo productInfo, p<? super PurchaserInfo, ? super JSONObject, r> pVar, q<? super PurchasesError, ? super Boolean, ? super JSONObject, r> qVar) {
        k.f(str, "purchaseToken");
        k.f(str2, "appUserID");
        k.f(map, "subscriberAttributes");
        k.f(productInfo, "productInfo");
        k.f(pVar, "onSuccess");
        k.f(qVar, "onError");
        List k = kotlin.s.k.k(new String[]{str, str2, String.valueOf(z), String.valueOf(z2), map.toString(), productInfo.toString()});
        Map h = b0.h(new l[]{kotlin.p.a("fetch_token", str), kotlin.p.a("product_id", productInfo.getProductID()), kotlin.p.a("app_user_id", str2), kotlin.p.a("is_restore", Boolean.valueOf(z)), kotlin.p.a("presented_offering_identifier", productInfo.getOfferingIdentifier()), kotlin.p.a("observer_mode", Boolean.valueOf(z2)), kotlin.p.a("price", productInfo.getPrice()), kotlin.p.a("currency", productInfo.getCurrency()), kotlin.p.a("attributes", !map.isEmpty() ? map : null), kotlin.p.a("normal_duration", productInfo.getDuration()), kotlin.p.a("intro_duration", productInfo.getIntroDuration()), kotlin.p.a("trial_duration", productInfo.getTrialDuration())});
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : h.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        postReceiptData.call.1 r0 = new postReceiptData.call.1(this, linkedHashMap, k);
        synchronized (this) {
            addCallback$default(this, this.postReceiptCallbacks, r0, k, kotlin.p.a(pVar, qVar), false, 8, null);
            r rVar = r.a;
        }
    }

    public final void setCallbacks(Map<List<String>, List<l<kotlin.w.b.l<PurchaserInfo, r>, kotlin.w.b.l<PurchasesError, r>>>> map) {
        synchronized (this) {
            k.f(map, "<set-?>");
            this.callbacks = map;
        }
    }

    public final void setOfferingsCallbacks(Map<String, List<l<kotlin.w.b.l<JSONObject, r>, kotlin.w.b.l<PurchasesError, r>>>> map) {
        synchronized (this) {
            k.f(map, "<set-?>");
            this.offeringsCallbacks = map;
        }
    }

    public final void setPostReceiptCallbacks(Map<List<String>, List<l<p<PurchaserInfo, JSONObject, r>, q<PurchasesError, Boolean, JSONObject, r>>>> map) {
        synchronized (this) {
            k.f(map, "<set-?>");
            this.postReceiptCallbacks = map;
        }
    }
}
