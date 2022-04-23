package com.revenuecat.purchases.common;

import com.android.billingclient.api.Purchase;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener.class */
public interface BillingWrapper$PurchasesUpdatedListener {
    void onPurchasesFailedToUpdate(List<? extends Purchase> list, int i, String str);

    void onPurchasesUpdated(List<PurchaseWrapper> list);
}
