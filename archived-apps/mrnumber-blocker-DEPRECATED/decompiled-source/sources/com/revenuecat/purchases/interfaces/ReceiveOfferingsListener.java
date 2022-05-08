package com.revenuecat.purchases.interfaces;

import com.revenuecat.purchases.Offerings;
import com.revenuecat.purchases.PurchasesError;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/interfaces/ReceiveOfferingsListener.class */
public interface ReceiveOfferingsListener {
    void onError(PurchasesError purchasesError);

    void onReceived(Offerings offerings);
}
