package com.hiya.stingray.p030ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.manager.s2;
import com.hiya.stingray.util.C1808e0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$o */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$o.class */
final class DebugActivity$o implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ EditText f4898f;

    /* renamed from: g */
    final /* synthetic */ s2.c f4899g;

    /* renamed from: h */
    final /* synthetic */ DebugActivity f4900h;

    DebugActivity$o(EditText editText, s2.c cVar, DebugActivity debugActivity) {
        this.f4898f = editText;
        this.f4899g = cVar;
        this.f4900h = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            this.f4898f.clearFocus();
            this.f4900h.f0().t(this.f4899g, this.f4898f.getText().toString());
            C1808e0.m950i(this.f4900h, this.f4898f);
            DebugActivity.W(this.f4900h, true);
            return true;
        }
        return false;
    }
}
