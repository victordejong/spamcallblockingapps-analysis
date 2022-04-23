package com.revenuecat.purchases.common;

import com.android.billingclient.api.SkuDetails;
import com.revenuecat.purchases.EntitlementInfo;
import com.revenuecat.purchases.EntitlementInfos;
import com.revenuecat.purchases.Offering;
import com.revenuecat.purchases.Offerings;
import com.revenuecat.purchases.Package;
import com.revenuecat.purchases.PackageType;
import com.revenuecat.purchases.PeriodType;
import com.revenuecat.purchases.Store;
import com.revenuecat.purchases.utils.JSONObjectExtensionsKt;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.c0.m;
import kotlin.w.c.k;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/FactoriesKt.class */
public final class FactoriesKt {
    private static final EntitlementInfo buildEntitlementInfo(JSONObject jSONObject, String str, JSONObject jSONObject2, Date date) {
        boolean z;
        Date optDate = JSONObjectExtensionsKt.optDate(jSONObject, "expires_date");
        Date optDate2 = JSONObjectExtensionsKt.optDate(jSONObject2, "unsubscribe_detected_at");
        Date optDate3 = JSONObjectExtensionsKt.optDate(jSONObject2, "billing_issues_detected_at");
        if (optDate != null) {
            if (date == null) {
                date = new Date();
            }
            if (!optDate.after(date)) {
                z = false;
                boolean z2 = optDate != null || (optDate2 == null && optDate3 == null);
                PeriodType optPeriodType = optPeriodType(jSONObject2, "period_type");
                Date date2 = JSONObjectExtensionsKt.getDate(jSONObject, "purchase_date");
                Date date3 = JSONObjectExtensionsKt.getDate(jSONObject2, "original_purchase_date");
                Store store = getStore(jSONObject2, "store");
                String string = jSONObject.getString("product_identifier");
                k.e(string, "getString(\"product_identifier\")");
                return new EntitlementInfo(str, z, z2, optPeriodType, date2, date3, optDate, store, string, jSONObject2.getBoolean("is_sandbox"), optDate2, optDate3);
            }
        }
        z = true;
        if (optDate != null) {
        }
        PeriodType optPeriodType2 = optPeriodType(jSONObject2, "period_type");
        Date date22 = JSONObjectExtensionsKt.getDate(jSONObject, "purchase_date");
        Date date32 = JSONObjectExtensionsKt.getDate(jSONObject2, "original_purchase_date");
        Store store2 = getStore(jSONObject2, "store");
        String string2 = jSONObject.getString("product_identifier");
        k.e(string2, "getString(\"product_identifier\")");
        return new EntitlementInfo(str, z, z2, optPeriodType2, date22, date32, optDate, store2, string2, jSONObject2.getBoolean("is_sandbox"), optDate2, optDate3);
    }

    private static final EntitlementInfos buildEntitlementInfos(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, Date date) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> keys = jSONObject.keys();
        k.e(keys, "keys()");
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject4 = jSONObject.getJSONObject(next);
            String optString = jSONObject4.optString("product_identifier");
            k.e(optString, "it");
            if (!(optString.length() > 0)) {
                optString = null;
            }
            if (optString != null) {
                if (jSONObject2.has(optString)) {
                    k.e(next, "entitlementId");
                    k.e(jSONObject4, "entitlement");
                    JSONObject jSONObject5 = jSONObject2.getJSONObject(optString);
                    k.e(jSONObject5, "subscriptions.getJSONObject(productIdentifier)");
                    linkedHashMap.put(next, buildEntitlementInfo(jSONObject4, next, jSONObject5, date));
                } else if (jSONObject3.has(optString)) {
                    k.e(next, "entitlementId");
                    k.e(jSONObject4, "entitlement");
                    JSONObject jSONObject6 = jSONObject3.getJSONObject(optString);
                    k.e(jSONObject6, "nonSubscriptionsLatestPu…Object(productIdentifier)");
                    linkedHashMap.put(next, buildEntitlementInfo(jSONObject4, next, jSONObject6, date));
                }
            }
        }
        return new EntitlementInfos(linkedHashMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00bb, code lost:
        if (r19 != null) goto L_0x00d5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.revenuecat.purchases.PurchaserInfo buildPurchaserInfo(org.json.JSONObject r14) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.FactoriesKt.buildPurchaserInfo(org.json.JSONObject):com.revenuecat.purchases.PurchaserInfo");
    }

    public static final Offering createOffering(JSONObject jSONObject, Map<String, ? extends SkuDetails> map) {
        Offering offering;
        k.f(jSONObject, "$this$createOffering");
        k.f(map, "products");
        String string = jSONObject.getString("identifier");
        JSONArray jSONArray = jSONObject.getJSONArray("packages");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            k.e(jSONObject2, "jsonPackages.getJSONObject(i)");
            k.e(string, "offeringIdentifier");
            Package createPackage = createPackage(jSONObject2, map, string);
            if (createPackage != null) {
                arrayList.add(createPackage);
            }
        }
        if (!arrayList.isEmpty()) {
            k.e(string, "offeringIdentifier");
            String string2 = jSONObject.getString("description");
            k.e(string2, "getString(\"description\")");
            offering = new Offering(string, string2, arrayList);
        } else {
            offering = null;
        }
        return offering;
    }

    public static final Offerings createOfferings(JSONObject jSONObject, Map<String, ? extends SkuDetails> map) {
        k.f(jSONObject, "$this$createOfferings");
        k.f(map, "products");
        JSONArray jSONArray = jSONObject.getJSONArray("offerings");
        String string = jSONObject.getString("current_offering_id");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            k.e(jSONObject2, "jsonOfferings.getJSONObject(i)");
            Offering createOffering = createOffering(jSONObject2, map);
            if (createOffering != null) {
                linkedHashMap.put(createOffering.getIdentifier(), createOffering);
            }
        }
        return new Offerings((Offering) linkedHashMap.get(string), linkedHashMap);
    }

    public static final Package createPackage(JSONObject jSONObject, Map<String, ? extends SkuDetails> map, String str) {
        k.f(jSONObject, "$this$createPackage");
        k.f(map, "products");
        k.f(str, "offeringIdentifier");
        SkuDetails skuDetails = (SkuDetails) map.get(jSONObject.getString("platform_product_identifier"));
        if (skuDetails == null) {
            return null;
        }
        String string = jSONObject.getString("identifier");
        k.e(string, "identifier");
        return new Package(string, toPackageType(string), skuDetails, str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static final Store getStore(JSONObject jSONObject, String str) {
        Store store;
        String string = jSONObject.getString(str);
        if (string != null) {
            switch (string.hashCode()) {
                case -891985843:
                    if (string.equals("stripe")) {
                        store = Store.STRIPE;
                        break;
                    }
                    break;
                case 564036179:
                    if (string.equals("mac_app_store")) {
                        store = Store.MAC_APP_STORE;
                        break;
                    }
                    break;
                case 756050958:
                    if (string.equals("promotional")) {
                        store = Store.PROMOTIONAL;
                        break;
                    }
                    break;
                case 1842542915:
                    if (string.equals("app_store")) {
                        store = Store.APP_STORE;
                        break;
                    }
                    break;
                case 1925951510:
                    if (string.equals("play_store")) {
                        store = Store.PLAY_STORE;
                        break;
                    }
                    break;
            }
            return store;
        }
        store = Store.UNKNOWN_STORE;
        return store;
    }

    private static final PeriodType optPeriodType(JSONObject jSONObject, String str) {
        PeriodType periodType;
        String optString = jSONObject.optString(str);
        if (optString != null) {
            int hashCode = optString.hashCode();
            if (hashCode != -1039745817) {
                if (hashCode != 100361836) {
                    if (hashCode == 110628630 && optString.equals("trial")) {
                        periodType = PeriodType.TRIAL;
                    }
                } else if (optString.equals("intro")) {
                    periodType = PeriodType.INTRO;
                }
            } else if (optString.equals("normal")) {
                periodType = PeriodType.NORMAL;
            }
            return periodType;
        }
        periodType = PeriodType.NORMAL;
        return periodType;
    }

    public static final PackageType toPackageType(String str) {
        PackageType packageType;
        k.f(str, "$this$toPackageType");
        PackageType[] values = PackageType.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                packageType = null;
                break;
            }
            packageType = values[i];
            if (k.b(packageType.getIdentifier(), str)) {
                break;
            }
            i++;
        }
        if (packageType == null) {
            packageType = m.D(str, "$rc_", false, 2, (Object) null) ? PackageType.UNKNOWN : PackageType.CUSTOM;
        }
        return packageType;
    }
}
