package com.revenuecat.purchases;

import com.revenuecat.purchases.common.BillingWrapper$QueryPurchasesResult;
import kotlin.w.b.p;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1.class */
final class Purchases$updatePendingPurchaseQueue$1 implements Runnable {
    final /* synthetic */ Purchases this$0;

    Purchases$updatePendingPurchaseQueue$1(Purchases purchases) {
        this.this$0 = purchases;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BillingWrapper$QueryPurchasesResult queryPurchases = Purchases.access$getBillingWrapper$p(this.this$0).queryPurchases("subs");
        BillingWrapper$QueryPurchasesResult queryPurchases2 = Purchases.access$getBillingWrapper$p(this.this$0).queryPurchases("inapp");
        if (queryPurchases != null && queryPurchases.isSuccessful() && queryPurchases2 != null && queryPurchases2.isSuccessful()) {
            Purchases.access$getDeviceCache$p(this.this$0).cleanPreviouslySentTokens(queryPurchases.getPurchasesByHashedToken().keySet(), queryPurchases2.getPurchasesByHashedToken().keySet());
            Purchases purchases = this.this$0;
            Purchases.postPurchases$default(purchases, Purchases.access$getDeviceCache$p(purchases).getActivePurchasesNotInCache(queryPurchases.getPurchasesByHashedToken(), queryPurchases2.getPurchasesByHashedToken()), this.this$0.getAllowSharingPlayStoreAccount(), this.this$0.getFinishTransactions(), this.this$0.getAppUserID(), (p) null, (p) null, 48, (Object) null);
        }
    }
}
