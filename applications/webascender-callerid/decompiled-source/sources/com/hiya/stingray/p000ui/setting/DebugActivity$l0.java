package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.p000ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$l0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$l0.class */
final class DebugActivity$l0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f214f;

    DebugActivity$l0(DebugActivity debugActivity) {
        this.f214f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f214f;
        debugActivity.startActivity(SubscriptionUpsellActivity.r.m1115a(debugActivity, c$b.DEFAULT));
    }
}
