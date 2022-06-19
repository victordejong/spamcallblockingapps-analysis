package com.revenuecat.purchases.common;

import com.android.billingclient.api.C0586g;
import com.revenuecat.purchases.PurchasesError;
import kotlin.r;
import kotlin.w.b.l;
/* renamed from: com.revenuecat.purchases.common.BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1 */
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1.class */
final class RunnableC1868xa4324c8c implements Runnable {
    final /* synthetic */ C0586g $billingResult$inlined;
    final /* synthetic */ String $message$inlined;
    final /* synthetic */ l $serviceRequest;
    final /* synthetic */ BillingWrapper this$0;

    RunnableC1868xa4324c8c(l lVar, BillingWrapper billingWrapper, C0586g c0586g, String str) {
        this.$serviceRequest = lVar;
        this.this$0 = billingWrapper;
        this.$billingResult$inlined = c0586g;
        this.$message$inlined = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l lVar = this.$serviceRequest;
        PurchasesError billingResponseToPurchasesError = ErrorsKt.billingResponseToPurchasesError(this.$billingResult$inlined.m4192b(), this.$message$inlined);
        LogUtilsKt.errorLog(billingResponseToPurchasesError);
        r rVar = r.a;
        lVar.invoke(billingResponseToPurchasesError);
    }
}
