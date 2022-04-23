package com.hiya.stingray.p000ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$h.class */
final class DebugActivity$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f207f;

    DebugActivity$h(DebugActivity debugActivity) {
        this.f207f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f207f.j0().m1219a(this.f207f, new String[]{"android.permission.WRITE_CALL_LOG"})) {
            DebugActivity.U(this.f207f);
            return;
        }
        this.f207f.j0().m1213g(this.f207f, null, new String[]{"android.permission.WRITE_CALL_LOG"}, DebugActivity.T());
    }
}
