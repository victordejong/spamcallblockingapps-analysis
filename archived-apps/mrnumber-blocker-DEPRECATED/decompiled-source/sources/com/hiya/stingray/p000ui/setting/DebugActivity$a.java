package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.util.C0091e0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$a.class */
final class DebugActivity$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ View f88f;

    DebugActivity$a(View view) {
        this.f88f = view;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Boolean bool = (Boolean) DebugActivity.R().get(Integer.valueOf(this.f88f.getId()));
        boolean z = true;
        if (bool != null) {
            z = !bool.booleanValue();
        }
        DebugActivity.R().put(Integer.valueOf(this.f88f.getId()), Boolean.valueOf(z));
        C0091e0.m1012z(this.f88f, z);
    }
}
