package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$g.class */
final class DebugActivity$g implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f205a;

    DebugActivity$g(DebugActivity debugActivity) {
        this.f205a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f205a.d0().l0(z);
    }
}
