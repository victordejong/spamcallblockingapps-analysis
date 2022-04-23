package com.hiya.stingray.p000ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$i.class */
final class DebugActivity$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f208f;

    DebugActivity$i(DebugActivity debugActivity) {
        this.f208f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f208f.j0().m1219a(this.f208f, new String[]{"android.permission.WRITE_CALL_LOG"})) {
            DebugActivity.P(this.f208f);
            return;
        }
        this.f208f.j0().m1213g(this.f208f, null, new String[]{"android.permission.WRITE_CALL_LOG"}, DebugActivity.Q());
    }
}
