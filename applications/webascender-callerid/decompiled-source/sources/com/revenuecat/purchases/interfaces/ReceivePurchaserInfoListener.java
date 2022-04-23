package com.revenuecat.purchases.interfaces;

import com.revenuecat.purchases.PurchaserInfo;
import com.revenuecat.purchases.PurchasesError;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener.class */
public interface ReceivePurchaserInfoListener {
    void onError(PurchasesError purchasesError);

    void onReceived(PurchaserInfo purchaserInfo);
}
