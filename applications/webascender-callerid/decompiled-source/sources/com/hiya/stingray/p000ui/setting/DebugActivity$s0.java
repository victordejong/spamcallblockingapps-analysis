package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$s0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$s0.class */
final class DebugActivity$s0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f228a;

    DebugActivity$s0(DebugActivity debugActivity) {
        this.f228a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f228a.m0().c0(z);
        DebugActivity.V(this.f228a);
    }
}
