package com.hiya.stingray.p030ui.setting;

import android.view.View;
import com.hiya.stingray.ui.premium.SoftPaywallActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$m0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$m0.class */
final class DebugActivity$m0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4895f;

    DebugActivity$m0(DebugActivity debugActivity) {
        this.f4895f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f4895f;
        debugActivity.startActivity(SoftPaywallActivity.s.m1167a(debugActivity));
    }
}
