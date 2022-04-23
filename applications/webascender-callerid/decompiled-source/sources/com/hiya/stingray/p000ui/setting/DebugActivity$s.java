package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.ui.t.e;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$s */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$s.class */
final class DebugActivity$s implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f227f;

    DebugActivity$s(DebugActivity debugActivity) {
        this.f227f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f227f;
        new e(debugActivity, debugActivity.o0().q("feedback_survey_link")).show();
    }
}
