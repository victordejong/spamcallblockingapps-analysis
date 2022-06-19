package com.revenuecat.purchases;

import com.revenuecat.purchases.models.Transaction;
import java.util.Comparator;
import kotlin.t.a;
/* renamed from: com.revenuecat.purchases.PurchaserInfo$nonSubscriptionTransactions$2$$special$$inlined$sortedBy$1 */
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchaserInfo$nonSubscriptionTransactions$2$$special$$inlined$sortedBy$1.class */
public final class C1861x71f58a6b<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return a.a(((Transaction) t).getPurchaseDate(), ((Transaction) t2).getPurchaseDate());
    }
}
