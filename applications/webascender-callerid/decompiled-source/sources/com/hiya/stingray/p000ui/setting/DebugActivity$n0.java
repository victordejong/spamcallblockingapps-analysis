package com.hiya.stingray.p000ui.setting;

import android.os.Bundle;
import android.view.View;
import com.hiya.stingray.ui.common.SinglePanelFragmentActivity;
import com.hiya.stingray.ui.premium.b0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$n0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$n0.class */
final class DebugActivity$n0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f218f;

    DebugActivity$n0(DebugActivity debugActivity) {
        this.f218f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f218f;
        debugActivity.startActivity(SinglePanelFragmentActivity.O(debugActivity, Bundle.EMPTY, b0.class));
    }
}
