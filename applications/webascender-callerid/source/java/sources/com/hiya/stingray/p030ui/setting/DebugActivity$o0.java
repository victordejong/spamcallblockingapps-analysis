package com.hiya.stingray.p030ui.setting;

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
    final /* synthetic */ DebugActivity f4901a;

    DebugActivity$o0(DebugActivity debugActivity) {
        this.f4901a = debugActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            v3 n0 = this.f4901a.n0();
            EditText editText = (EditText) this.f4901a.O(o.c3);
            k.c(editText, "promoPremiumDuration");
            Long k = m.k(editText.getText().toString());
            n0.a((k != null ? k.longValue() : true) == true ? 1L : 0L);
        } else {
            v3.f(this.f4901a.n0(), false, 1, (Object) null);
        }
        EditText editText2 = (EditText) this.f4901a.O(o.c3);
        k.c(editText2, "promoPremiumDuration");
        editText2.setText((CharSequence) null);
        DebugActivity.V(this.f4901a);
    }
}
