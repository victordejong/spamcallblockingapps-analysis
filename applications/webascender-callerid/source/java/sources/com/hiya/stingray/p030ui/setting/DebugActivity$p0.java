package com.hiya.stingray.p030ui.setting;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.o;
import com.hiya.stingray.util.C1808e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$p0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$p0.class */
final class DebugActivity$p0 implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f4902f;

    DebugActivity$p0(DebugActivity debugActivity) {
        this.f4902f = debugActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            DebugActivity debugActivity = this.f4902f;
            int i2 = o.c3;
            ((EditText) debugActivity.O(i2)).clearFocus();
            DebugActivity debugActivity2 = this.f4902f;
            EditText editText = (EditText) debugActivity2.O(i2);
            k.c(editText, "promoPremiumDuration");
            C1808e0.m950i(debugActivity2, editText);
            return true;
        }
        return false;
    }
}
