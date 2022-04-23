package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$k0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$k0.class */
final class DebugActivity$k0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f212a;

    DebugActivity$k0(DebugActivity debugActivity) {
        this.f212a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f212a.m0().b0(z);
        DebugActivity.V(this.f212a);
    }
}
