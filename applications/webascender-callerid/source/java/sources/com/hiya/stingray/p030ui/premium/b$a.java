package com.hiya.stingray.p030ui.premium;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.p030ui.premium.upsell.SubscriptionUpsellActivity$a;
import com.hiya.stingray.p030ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b$a.class */
final class b$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f4822f;

    b$a(b bVar) {
        this.f4822f = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        b bVar = this.f4822f;
        SubscriptionUpsellActivity$a subscriptionUpsellActivity$a = SubscriptionUpsellActivity.r;
        Context context = bVar.getContext();
        if (context == null) {
            k.o();
            throw null;
        }
        k.c(context, "context!!");
        bVar.startActivity(subscriptionUpsellActivity$a.m1115a(context, c$b.BASIC_TAB));
        this.f4822f.g1().m1164c();
    }
}
