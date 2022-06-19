package com.hiya.stingray.p030ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$h.class */
final class DebugActivity$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4886f;

    DebugActivity$h(DebugActivity debugActivity) {
        this.f4886f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f4886f.j0().m1219a(this.f4886f, new String[]{"android.permission.WRITE_CALL_LOG"})) {
            DebugActivity.U(this.f4886f);
            return;
        }
        this.f4886f.j0().m1213g(this.f4886f, null, new String[]{"android.permission.WRITE_CALL_LOG"}, DebugActivity.T());
    }
}
