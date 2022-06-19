package com.revenuecat.purchases.common;

import com.android.billingclient.api.AbstractC0574c;
import kotlin.r;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$startConnection$1.class */
final class BillingWrapper$startConnection$1 implements Runnable {
    final /* synthetic */ BillingWrapper this$0;

    BillingWrapper$startConnection$1(BillingWrapper billingWrapper) {
        this.this$0 = billingWrapper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.this$0) {
            if (this.this$0.getBillingClient() == null) {
                BillingWrapper billingWrapper = this.this$0;
                billingWrapper.setBillingClient(BillingWrapper.access$getClientFactory$p(billingWrapper).buildClient(this.this$0));
            }
            AbstractC0574c billingClient = this.this$0.getBillingClient();
            if (billingClient != null) {
                LogUtilsKt.debugLog("Starting connection for " + billingClient);
                billingClient.m4223k(this.this$0);
            }
            r rVar = r.a;
        }
    }
}
