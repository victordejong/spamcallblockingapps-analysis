package com.hiya.stingray.p000ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.manager.q2;
import com.hiya.stingray.util.C0091e0;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$n */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$n.class */
final class DebugActivity$n implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ EditText f104f;

    /* renamed from: g */
    final /* synthetic */ q2.c f105g;

    /* renamed from: h */
    final /* synthetic */ DebugActivity f106h;

    DebugActivity$n(EditText editText, q2.c cVar, DebugActivity debugActivity) {
        this.f104f = editText;
        this.f105g = cVar;
        this.f106h = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.f104f.clearFocus();
        this.f106h.e0().s(this.f105g, this.f104f.getText().toString());
        C0091e0.m1029i(this.f106h, this.f104f);
        DebugActivity.W(this.f106h, true);
        return true;
    }
}
