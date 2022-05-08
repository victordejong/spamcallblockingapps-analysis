package com.hiya.stingray.p000ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$g.class */
final class DebugActivity$g implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f91f;

    DebugActivity$g(DebugActivity debugActivity) {
        this.f91f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f91f.h0().m1298a(this.f91f, new String[]{"android.permission.WRITE_CALL_LOG"})) {
            DebugActivity.U(this.f91f);
            return;
        }
        this.f91f.h0().m1292g(this.f91f, null, new String[]{"android.permission.WRITE_CALL_LOG"}, DebugActivity.T());
    }
}
