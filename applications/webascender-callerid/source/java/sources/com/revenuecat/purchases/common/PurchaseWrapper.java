package com.revenuecat.purchases.common;

import com.android.billingclient.api.Purchase;
import com.appsflyer.internal.referrer.Payload;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PurchaseWrapper.class */
public final class PurchaseWrapper {
    private final Purchase containedPurchase;
    private final boolean isConsumable;
    private final String presentedOfferingIdentifier;
    private final long purchaseTime;
    private final String purchaseToken;
    private final String sku;
    private final PurchaseType type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PurchaseWrapper(com.android.billingclient.api.Purchase r11, com.revenuecat.purchases.common.PurchaseType r12, java.lang.String r13) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "purchase"
            kotlin.w.c.k.f(r0, r1)
            r0 = r12
            java.lang.String r1 = "type"
            kotlin.w.c.k.f(r0, r1)
            r0 = r12
            com.revenuecat.purchases.common.PurchaseType r1 = com.revenuecat.purchases.common.PurchaseType.INAPP
            if (r0 != r1) goto L19
            r0 = 1
            r14 = r0
            goto L1c
        L19:
            r0 = 0
            r14 = r0
        L1c:
            r0 = r11
            java.lang.String r0 = r0.m4267e()
            r15 = r0
            r0 = r15
            java.lang.String r1 = "purchase.purchaseToken"
            kotlin.w.c.k.e(r0, r1)
            r0 = r11
            long r0 = r0.m4268d()
            r16 = r0
            r0 = r11
            java.lang.String r0 = r0.m4265g()
            r18 = r0
            r0 = r18
            java.lang.String r1 = "purchase.sku"
            kotlin.w.c.k.e(r0, r1)
            r0 = r10
            r1 = r14
            r2 = r15
            r3 = r16
            r4 = r18
            r5 = r11
            r6 = r12
            r7 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.PurchaseWrapper.<init>(com.android.billingclient.api.Purchase, com.revenuecat.purchases.common.PurchaseType, java.lang.String):void");
    }

    public PurchaseWrapper(boolean z, String str, long j, String str2, Purchase purchase, PurchaseType purchaseType, String str3) {
        k.f(str, "purchaseToken");
        k.f(str2, "sku");
        k.f(purchase, "containedPurchase");
        k.f(purchaseType, Payload.TYPE);
        this.isConsumable = z;
        this.purchaseToken = str;
        this.purchaseTime = j;
        this.sku = str2;
        this.containedPurchase = purchase;
        this.type = purchaseType;
        this.presentedOfferingIdentifier = str3;
    }

    public /* synthetic */ PurchaseWrapper(boolean z, String str, long j, String str2, Purchase purchase, PurchaseType purchaseType, String str3, int i, g gVar) {
        this(z, str, j, str2, purchase, purchaseType, (i & 64) != 0 ? null : str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.revenuecat.purchases.common.PurchaseWrapper] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    public static /* synthetic */ PurchaseWrapper copy$default(PurchaseWrapper purchaseWrapper, boolean z, String str, long j, String str2, Purchase purchase, PurchaseType purchaseType, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = ((PurchaseWrapper) purchaseWrapper).isConsumable;
        }
        if ((i & 2) != 0) {
            str = ((PurchaseWrapper) purchaseWrapper).purchaseToken;
        }
        ?? r13 = j;
        if ((i & 4) != 0) {
            r13 = ((PurchaseWrapper) purchaseWrapper).purchaseTime;
        }
        if ((i & 8) != 0) {
            str2 = ((PurchaseWrapper) purchaseWrapper).sku;
        }
        if ((i & 16) != 0) {
            purchase = ((PurchaseWrapper) purchaseWrapper).containedPurchase;
        }
        if ((i & 32) != 0) {
            purchaseType = ((PurchaseWrapper) purchaseWrapper).type;
        }
        if ((i & 64) != 0) {
            str3 = ((PurchaseWrapper) purchaseWrapper).presentedOfferingIdentifier;
        }
        return purchaseWrapper.copy(z, str, r13, str2, purchase, purchaseType, str3);
    }

    public final boolean component1() {
        return this.isConsumable;
    }

    public final String component2() {
        return this.purchaseToken;
    }

    public final long component3() {
        return this.purchaseTime;
    }

    public final String component4() {
        return this.sku;
    }

    public final Purchase component5() {
        return this.containedPurchase;
    }

    public final PurchaseType component6() {
        return this.type;
    }

    public final String component7() {
        return this.presentedOfferingIdentifier;
    }

    public final PurchaseWrapper copy(boolean z, String str, long j, String str2, Purchase purchase, PurchaseType purchaseType, String str3) {
        k.f(str, "purchaseToken");
        k.f(str2, "sku");
        k.f(purchase, "containedPurchase");
        k.f(purchaseType, Payload.TYPE);
        return new PurchaseWrapper(z, str, j, str2, purchase, purchaseType, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PurchaseWrapper)) {
                return false;
            }
            PurchaseWrapper purchaseWrapper = (PurchaseWrapper) obj;
            return this.isConsumable == purchaseWrapper.isConsumable && k.b(this.purchaseToken, purchaseWrapper.purchaseToken) && this.purchaseTime == purchaseWrapper.purchaseTime && k.b(this.sku, purchaseWrapper.sku) && k.b(this.containedPurchase, purchaseWrapper.containedPurchase) && k.b(this.type, purchaseWrapper.type) && k.b(this.presentedOfferingIdentifier, purchaseWrapper.presentedOfferingIdentifier);
        }
        return true;
    }

    public final Purchase getContainedPurchase() {
        return this.containedPurchase;
    }

    public final String getPresentedOfferingIdentifier() {
        return this.presentedOfferingIdentifier;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final String getSku() {
        return this.sku;
    }

    public final PurchaseType getType() {
        return this.type;
    }

    public int hashCode() {
        boolean z = this.isConsumable;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.purchaseToken;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        long j = this.purchaseTime;
        int i2 = (int) (j ^ (j >>> 32));
        String str2 = this.sku;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Purchase purchase = this.containedPurchase;
        int hashCode3 = purchase != null ? purchase.hashCode() : 0;
        PurchaseType purchaseType = this.type;
        int hashCode4 = purchaseType != null ? purchaseType.hashCode() : 0;
        String str3 = this.presentedOfferingIdentifier;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((((((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public final boolean isConsumable() {
        return this.isConsumable;
    }

    public String toString() {
        return "PurchaseWrapper(isConsumable=" + this.isConsumable + ", purchaseToken=" + this.purchaseToken + ", purchaseTime=" + this.purchaseTime + ", sku=" + this.sku + ", containedPurchase=" + this.containedPurchase + ", type=" + this.type + ", presentedOfferingIdentifier=" + this.presentedOfferingIdentifier + ")";
    }
}
