package com.hiya.stingray.p030ui.setting;

import android.view.View;
import com.hiya.stingray.util.C1808e0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$a.class */
final class DebugActivity$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ View f4880f;

    DebugActivity$a(View view) {
        this.f4880f = view;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Boolean bool = (Boolean) DebugActivity.R().get(Integer.valueOf(this.f4880f.getId()));
        boolean z = true;
        if (bool != null) {
            z = !bool.booleanValue();
        }
        DebugActivity.R().put(Integer.valueOf(this.f4880f.getId()), Boolean.valueOf(z));
        C1808e0.m933z(this.f4880f, z);
    }
}
