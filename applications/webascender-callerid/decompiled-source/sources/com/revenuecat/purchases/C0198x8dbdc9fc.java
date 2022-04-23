package com.revenuecat.purchases;

import java.util.Comparator;
import java.util.Date;
import kotlin.t.a;
/* renamed from: com.revenuecat.purchases.PurchaserInfo$latestExpirationDate$2$$special$$inlined$sortedBy$1 */
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2$$special$$inlined$sortedBy$1.class */
public final class C0198x8dbdc9fc<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return a.a((Date) t, (Date) t2);
    }
}
