package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.ui.t.e;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$r */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$r.class */
final class DebugActivity$r implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f112f;

    DebugActivity$r(DebugActivity debugActivity) {
        this.f112f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f112f;
        new e(debugActivity, debugActivity.m0().q("feedback_survey_link")).show();
    }
}
