package com.hiya.stingray.p030ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$i.class */
final class DebugActivity$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4887f;

    DebugActivity$i(DebugActivity debugActivity) {
        this.f4887f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f4887f.j0().m1219a(this.f4887f, new String[]{"android.permission.WRITE_CALL_LOG"})) {
            DebugActivity.P(this.f4887f);
            return;
        }
        this.f4887f.j0().m1213g(this.f4887f, null, new String[]{"android.permission.WRITE_CALL_LOG"}, DebugActivity.Q());
    }
}
