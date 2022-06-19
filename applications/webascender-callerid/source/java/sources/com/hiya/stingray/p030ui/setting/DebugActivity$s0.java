package com.hiya.stingray.p030ui.setting;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$s0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$s0.class */
final class DebugActivity$s0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f4907a;

    DebugActivity$s0(DebugActivity debugActivity) {
        this.f4907a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f4907a.m0().c0(z);
        DebugActivity.V(this.f4907a);
    }
}
