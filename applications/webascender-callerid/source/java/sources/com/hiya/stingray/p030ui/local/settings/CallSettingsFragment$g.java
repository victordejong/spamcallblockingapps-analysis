package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$g.class */
final class CallSettingsFragment$g implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f4764f;

    CallSettingsFragment$g(CallSettingsFragment callSettingsFragment) {
        this.f4764f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CallSettingsFragment callSettingsFragment = this.f4764f;
        TextView textView = (TextView) callSettingsFragment.f1(o.y3);
        k.c(textView, "screenedCallsDsc");
        d o1 = this.f4764f.o1();
        e requireActivity = this.f4764f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.C1(callSettingsFragment, 2131820680, textView, o1.y(requireActivity), CallSettingsFragment.i1(this.f4764f), false, (String) null, new a(this), 48, (Object) null);
    }
}
