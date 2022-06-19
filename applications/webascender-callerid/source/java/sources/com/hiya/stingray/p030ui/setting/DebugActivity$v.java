package com.hiya.stingray.p030ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.o;
import com.hiya.stingray.util.C1808e0;
import kotlin.c0.m;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$v */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$v.class */
final class DebugActivity$v implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4910f;

    DebugActivity$v(DebugActivity debugActivity) {
        this.f4910f = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            DebugActivity debugActivity = this.f4910f;
            int i2 = o.h1;
            ((EditText) debugActivity.O(i2)).clearFocus();
            EditText editText = (EditText) this.f4910f.O(i2);
            k.c(editText, "firebaseRemoteConfigAddOverride");
            String G0 = m.G0(editText.getText().toString(), "=", "");
            EditText editText2 = (EditText) this.f4910f.O(i2);
            k.c(editText2, "firebaseRemoteConfigAddOverride");
            this.f4910f.o0().G(G0, m.z0(editText2.getText().toString(), "=", ""));
            ((EditText) this.f4910f.O(i2)).setText("");
            DebugActivity.X(this.f4910f);
            DebugActivity debugActivity2 = this.f4910f;
            EditText editText3 = (EditText) debugActivity2.O(i2);
            k.c(editText3, "firebaseRemoteConfigAddOverride");
            C1808e0.m950i(debugActivity2, editText3);
            return true;
        }
        return false;
    }
}
