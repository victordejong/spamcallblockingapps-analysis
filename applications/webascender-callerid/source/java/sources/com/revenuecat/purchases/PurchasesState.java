package com.revenuecat.purchases;

import com.revenuecat.purchases.interfaces.MakePurchaseListener;
import com.revenuecat.purchases.interfaces.ProductChangeListener;
import com.revenuecat.purchases.interfaces.UpdatedPurchaserInfoListener;
import java.util.Map;
import kotlin.s.b0;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchasesState.class */
public final class PurchasesState {
    private final Boolean allowSharingPlayStoreAccount;
    private final boolean appInBackground;
    private final boolean firstTimeInForeground;
    private final PurchaserInfo lastSentPurchaserInfo;
    private final ProductChangeListener productChangeCallback;
    private final Map<String, MakePurchaseListener> purchaseCallbacks;
    private final UpdatedPurchaserInfoListener updatedPurchaserInfoListener;

    public PurchasesState() {
        this(null, null, null, null, null, false, false, 127, null);
    }

    public PurchasesState(Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map<String, ? extends MakePurchaseListener> map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2) {
        k.f(map, "purchaseCallbacks");
        this.allowSharingPlayStoreAccount = bool;
        this.updatedPurchaserInfoListener = updatedPurchaserInfoListener;
        this.purchaseCallbacks = map;
        this.productChangeCallback = productChangeListener;
        this.lastSentPurchaserInfo = purchaserInfo;
        this.appInBackground = z;
        this.firstTimeInForeground = z2;
    }

    public /* synthetic */ PurchasesState(Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2, int i, g gVar) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : updatedPurchaserInfoListener, (i & 4) != 0 ? b0.e() : map, (i & 8) != 0 ? null : productChangeListener, (i & 16) != 0 ? null : purchaserInfo, (i & 32) != 0 ? true : z, (i & 64) != 0 ? true : z2);
    }

    public static /* synthetic */ PurchasesState copy$default(PurchasesState purchasesState, Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = purchasesState.allowSharingPlayStoreAccount;
        }
        if ((i & 2) != 0) {
            updatedPurchaserInfoListener = purchasesState.updatedPurchaserInfoListener;
        }
        if ((i & 4) != 0) {
            map = purchasesState.purchaseCallbacks;
        }
        if ((i & 8) != 0) {
            productChangeListener = purchasesState.productChangeCallback;
        }
        if ((i & 16) != 0) {
            purchaserInfo = purchasesState.lastSentPurchaserInfo;
        }
        if ((i & 32) != 0) {
            z = purchasesState.appInBackground;
        }
        if ((i & 64) != 0) {
            z2 = purchasesState.firstTimeInForeground;
        }
        return purchasesState.copy(bool, updatedPurchaserInfoListener, map, productChangeListener, purchaserInfo, z, z2);
    }

    public final Boolean component1() {
        return this.allowSharingPlayStoreAccount;
    }

    public final UpdatedPurchaserInfoListener component2() {
        return this.updatedPurchaserInfoListener;
    }

    public final Map<String, MakePurchaseListener> component3() {
        return this.purchaseCallbacks;
    }

    public final ProductChangeListener component4() {
        return this.productChangeCallback;
    }

    public final PurchaserInfo component5() {
        return this.lastSentPurchaserInfo;
    }

    public final boolean component6() {
        return this.appInBackground;
    }

    public final boolean component7() {
        return this.firstTimeInForeground;
    }

    public final PurchasesState copy(Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map<String, ? extends MakePurchaseListener> map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2) {
        k.f(map, "purchaseCallbacks");
        return new PurchasesState(bool, updatedPurchaserInfoListener, map, productChangeListener, purchaserInfo, z, z2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PurchasesState)) {
                return false;
            }
            PurchasesState purchasesState = (PurchasesState) obj;
            return k.b(this.allowSharingPlayStoreAccount, purchasesState.allowSharingPlayStoreAccount) && k.b(this.updatedPurchaserInfoListener, purchasesState.updatedPurchaserInfoListener) && k.b(this.purchaseCallbacks, purchasesState.purchaseCallbacks) && k.b(this.productChangeCallback, purchasesState.productChangeCallback) && k.b(this.lastSentPurchaserInfo, purchasesState.lastSentPurchaserInfo) && this.appInBackground == purchasesState.appInBackground && this.firstTimeInForeground == purchasesState.firstTimeInForeground;
        }
        return true;
    }

    public final Boolean getAllowSharingPlayStoreAccount() {
        return this.allowSharingPlayStoreAccount;
    }

    public final boolean getAppInBackground() {
        return this.appInBackground;
    }

    public final boolean getFirstTimeInForeground() {
        return this.firstTimeInForeground;
    }

    public final PurchaserInfo getLastSentPurchaserInfo() {
        return this.lastSentPurchaserInfo;
    }

    public final ProductChangeListener getProductChangeCallback() {
        return this.productChangeCallback;
    }

    public final Map<String, MakePurchaseListener> getPurchaseCallbacks() {
        return this.purchaseCallbacks;
    }

    public final UpdatedPurchaserInfoListener getUpdatedPurchaserInfoListener() {
        return this.updatedPurchaserInfoListener;
    }

    public int hashCode() {
        Boolean bool = this.allowSharingPlayStoreAccount;
        int i = 0;
        int hashCode = bool != null ? bool.hashCode() : 0;
        UpdatedPurchaserInfoListener updatedPurchaserInfoListener = this.updatedPurchaserInfoListener;
        int hashCode2 = updatedPurchaserInfoListener != null ? updatedPurchaserInfoListener.hashCode() : 0;
        Map<String, MakePurchaseListener> map = this.purchaseCallbacks;
        int hashCode3 = map != null ? map.hashCode() : 0;
        ProductChangeListener productChangeListener = this.productChangeCallback;
        int hashCode4 = productChangeListener != null ? productChangeListener.hashCode() : 0;
        PurchaserInfo purchaserInfo = this.lastSentPurchaserInfo;
        if (purchaserInfo != null) {
            i = purchaserInfo.hashCode();
        }
        boolean z = this.appInBackground;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.firstTimeInForeground;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + i3) * 31) + i2;
    }

    public String toString() {
        return "PurchasesState(allowSharingPlayStoreAccount=" + this.allowSharingPlayStoreAccount + ", updatedPurchaserInfoListener=" + this.updatedPurchaserInfoListener + ", purchaseCallbacks=" + this.purchaseCallbacks + ", productChangeCallback=" + this.productChangeCallback + ", lastSentPurchaserInfo=" + this.lastSentPurchaserInfo + ", appInBackground=" + this.appInBackground + ", firstTimeInForeground=" + this.firstTimeInForeground + ")";
    }
}
