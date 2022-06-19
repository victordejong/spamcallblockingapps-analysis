package com.revenuecat.purchases.common;

import android.content.Context;
import com.android.billingclient.api.AbstractC0574c;
import com.android.billingclient.api.AbstractC0596k;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$ClientFactory.class */
public final class BillingWrapper$ClientFactory {
    private final Context context;

    public BillingWrapper$ClientFactory(Context context) {
        k.f(context, "context");
        this.context = context;
    }

    public final AbstractC0574c buildClient(AbstractC0596k abstractC0596k) {
        k.f(abstractC0596k, "listener");
        AbstractC0574c.C0576b m4227g = AbstractC0574c.m4227g(this.context);
        m4227g.m4221b();
        m4227g.m4220c(abstractC0596k);
        AbstractC0574c m4222a = m4227g.m4222a();
        k.e(m4222a, "BillingClient.newBuilder…\n                .build()");
        return m4222a;
    }
}
