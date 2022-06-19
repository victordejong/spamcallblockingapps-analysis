package com.revenuecat.purchases.common;

import com.android.billingclient.api.SkuDetails;
import java.util.Objects;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/ProductInfo.class */
public final class ProductInfo {
    private final String currency;
    private final String duration;
    private final String introDuration;
    private final String offeringIdentifier;
    private final Double price;
    private final String productID;
    private final SkuDetails skuDetails;
    private final String trialDuration;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
        if ((r4.length() == 0) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a2, code lost:
        if ((r4.length() == 0) == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ProductInfo(java.lang.String r4, java.lang.String r5, com.android.billingclient.api.SkuDetails r6) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.ProductInfo.<init>(java.lang.String, java.lang.String, com.android.billingclient.api.SkuDetails):void");
    }

    public /* synthetic */ ProductInfo(String str, String str2, SkuDetails skuDetails, int i, g gVar) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : skuDetails);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!k.b(ProductInfo.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.revenuecat.purchases.common.ProductInfo");
        ProductInfo productInfo = (ProductInfo) obj;
        return !(k.b(this.productID, productInfo.productID) ^ true) && !(k.b(this.offeringIdentifier, productInfo.offeringIdentifier) ^ true) && !(k.a(this.price, productInfo.price) ^ true) && !(k.b(this.currency, productInfo.currency) ^ true) && !(k.b(this.duration, productInfo.duration) ^ true) && !(k.b(this.introDuration, productInfo.introDuration) ^ true) && !(k.b(this.trialDuration, productInfo.trialDuration) ^ true);
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getIntroDuration() {
        return this.introDuration;
    }

    public final String getOfferingIdentifier() {
        return this.offeringIdentifier;
    }

    public final Double getPrice() {
        return this.price;
    }

    public final String getProductID() {
        return this.productID;
    }

    public final SkuDetails getSkuDetails() {
        return this.skuDetails;
    }

    public final String getTrialDuration() {
        return this.trialDuration;
    }

    public int hashCode() {
        int hashCode = this.productID.hashCode();
        String str = this.offeringIdentifier;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        SkuDetails skuDetails = this.skuDetails;
        if (skuDetails != null) {
            i = skuDetails.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "ProductInfo(productID='" + this.productID + "', offeringIdentifier=" + this.offeringIdentifier + ", price=" + this.price + ", currency=" + this.currency + ", duration=" + this.duration + ", introDuration=" + this.introDuration + ", trialDuration=" + this.trialDuration + ')';
    }
}
