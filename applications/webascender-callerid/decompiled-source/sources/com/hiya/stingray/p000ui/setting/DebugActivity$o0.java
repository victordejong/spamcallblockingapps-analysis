package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
import android.widget.EditText;
import com.hiya.stingray.manager.v3;
import com.hiya.stingray.o;
import kotlin.c0.m;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$o0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$o0.class */
final class DebugActivity$o0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f222a;

    DebugActivity$o0(DebugActivity debugActivity) {
        this.f222a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            v3 n0 = this.f222a.n0();
            EditText editText = (EditText) this.f222a.O(o.c3);
            k.c(editText, "promoPremiumDuration");
            Long k = m.k(editText.getText().toString());
            n0.a(k != null ? k.longValue() : 3L);
        } else {
            v3.f(this.f222a.n0(), false, 1, (Object) null);
        }
        EditText editText2 = (EditText) this.f222a.O(o.c3);
        k.c(editText2, "promoPremiumDuration");
        editText2.setText((CharSequence) null);
        DebugActivity.V(this.f222a);
    }
}
