package com.hiya.stingray.p000ui.premium;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.p000ui.premium.upsell.SubscriptionUpsellActivity$a;
import com.hiya.stingray.p000ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.u$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/u$b.class */
final class u$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ u f168f;

    u$b(u uVar) {
        this.f168f = uVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        u uVar = this.f168f;
        SubscriptionUpsellActivity$a subscriptionUpsellActivity$a = SubscriptionUpsellActivity.r;
        k.c(view, "it");
        Context context = view.getContext();
        k.c(context, "it.context");
        uVar.startActivityForResult(subscriptionUpsellActivity$a.m1115a(context, c$b.SELECT_EXPIRE), 102);
    }
}
