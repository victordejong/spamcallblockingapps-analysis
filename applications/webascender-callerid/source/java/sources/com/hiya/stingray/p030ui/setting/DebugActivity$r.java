package com.hiya.stingray.p030ui.setting;

import android.view.View;
import com.hiya.stingray.manager.u2;
import com.hiya.stingray.ui.t.a;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$r */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$r.class */
final class DebugActivity$r implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4904f;

    DebugActivity$r(DebugActivity debugActivity) {
        this.f4904f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        new a(u2.b.DEBUG, this.f4904f).show();
    }
}
