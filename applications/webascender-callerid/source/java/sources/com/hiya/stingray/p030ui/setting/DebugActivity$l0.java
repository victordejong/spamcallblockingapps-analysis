package com.hiya.stingray.p030ui.setting;

import android.view.View;
import com.hiya.stingray.p030ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$l0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$l0.class */
final class DebugActivity$l0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4893f;

    DebugActivity$l0(DebugActivity debugActivity) {
        this.f4893f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f4893f;
        debugActivity.startActivity(SubscriptionUpsellActivity.r.m1115a(debugActivity, c$b.DEFAULT));
    }
}
