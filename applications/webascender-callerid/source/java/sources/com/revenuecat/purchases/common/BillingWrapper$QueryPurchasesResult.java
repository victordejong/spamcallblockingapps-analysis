package com.revenuecat.purchases.common;

import java.util.Map;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult.class */
public final class BillingWrapper$QueryPurchasesResult {
    private final Map<String, PurchaseWrapper> purchasesByHashedToken;
    private final int responseCode;

    public BillingWrapper$QueryPurchasesResult(int i, Map<String, PurchaseWrapper> map) {
        k.f(map, "purchasesByHashedToken");
        this.responseCode = i;
        this.purchasesByHashedToken = map;
    }

    public static /* synthetic */ BillingWrapper$QueryPurchasesResult copy$default(BillingWrapper$QueryPurchasesResult billingWrapper$QueryPurchasesResult, int i, Map map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = billingWrapper$QueryPurchasesResult.responseCode;
        }
        if ((i2 & 2) != 0) {
            map = billingWrapper$QueryPurchasesResult.purchasesByHashedToken;
        }
        return billingWrapper$QueryPurchasesResult.copy(i, map);
    }

    public final int component1() {
        return this.responseCode;
    }

    public final Map<String, PurchaseWrapper> component2() {
        return this.purchasesByHashedToken;
    }

    public final BillingWrapper$QueryPurchasesResult copy(int i, Map<String, PurchaseWrapper> map) {
        k.f(map, "purchasesByHashedToken");
        return new BillingWrapper$QueryPurchasesResult(i, map);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BillingWrapper$QueryPurchasesResult)) {
                return false;
            }
            BillingWrapper$QueryPurchasesResult billingWrapper$QueryPurchasesResult = (BillingWrapper$QueryPurchasesResult) obj;
            return this.responseCode == billingWrapper$QueryPurchasesResult.responseCode && k.b(this.purchasesByHashedToken, billingWrapper$QueryPurchasesResult.purchasesByHashedToken);
        }
        return true;
    }

    public final Map<String, PurchaseWrapper> getPurchasesByHashedToken() {
        return this.purchasesByHashedToken;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public int hashCode() {
        int i = this.responseCode;
        Map<String, PurchaseWrapper> map = this.purchasesByHashedToken;
        return (i * 31) + (map != null ? map.hashCode() : 0);
    }

    public final boolean isSuccessful() {
        return this.responseCode == 0;
    }

    public String toString() {
        return "QueryPurchasesResult(responseCode=" + this.responseCode + ", purchasesByHashedToken=" + this.purchasesByHashedToken + ")";
    }
}
