package com.hiya.stingray.p000ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.manager.s2;
import com.hiya.stingray.util.C0146e0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$o */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$o.class */
final class DebugActivity$o implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ EditText f219f;

    /* renamed from: g */
    final /* synthetic */ s2.c f220g;

    /* renamed from: h */
    final /* synthetic */ DebugActivity f221h;

    DebugActivity$o(EditText editText, s2.c cVar, DebugActivity debugActivity) {
        this.f219f = editText;
        this.f220g = cVar;
        this.f221h = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.f219f.clearFocus();
        this.f221h.f0().t(this.f220g, this.f219f.getText().toString());
        C0146e0.m950i(this.f221h, this.f219f);
        DebugActivity.W(this.f221h, true);
        return true;
    }
}
