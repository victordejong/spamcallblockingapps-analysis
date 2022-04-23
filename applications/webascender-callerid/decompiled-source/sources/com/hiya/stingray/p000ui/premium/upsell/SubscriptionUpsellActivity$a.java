package com.hiya.stingray.p000ui.premium.upsell;

import android.content.Context;
import android.content.Intent;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a.class */
public final class SubscriptionUpsellActivity$a {
    private SubscriptionUpsellActivity$a() {
    }

    public /* synthetic */ SubscriptionUpsellActivity$a(g gVar) {
        this();
    }

    /* renamed from: a */
    public final Intent m1115a(Context context, c$b c_b) {
        k.g(context, "context");
        k.g(c_b, "source");
        Intent intent = new Intent(context, SubscriptionUpsellActivity.class);
        intent.putExtra("EXTRA_SOURCE", c_b);
        return intent;
    }
}
