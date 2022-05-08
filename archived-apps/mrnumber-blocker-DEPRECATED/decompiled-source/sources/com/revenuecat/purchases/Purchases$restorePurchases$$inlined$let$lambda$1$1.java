package com.revenuecat.purchases;

import com.revenuecat.purchases.common.PurchaseHistoryRecordWrapper;
import java.util.Comparator;
import kotlin.t.a;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$1.class */
public final class Purchases$restorePurchases$$inlined$let$lambda$1$1<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return a.a(Long.valueOf(((PurchaseHistoryRecordWrapper) t).getPurchaseTime()), Long.valueOf(((PurchaseHistoryRecordWrapper) t2).getPurchaseTime()));
    }
}
