package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$s */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$s.class */
final class CallSettingsFragment$s implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f96f;

    CallSettingsFragment$s(CallSettingsFragment callSettingsFragment) {
        this.f96f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CallSettingsFragment callSettingsFragment = this.f96f;
        TextView textView = (TextView) callSettingsFragment.f1(o.J1);
        k.c(textView, "incomingDsc");
        d o1 = this.f96f.o1();
        e requireActivity = this.f96f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.C1(callSettingsFragment, 2131820675, textView, o1.u(requireActivity), CallSettingsFragment.i1(this.f96f), false, (String) null, new a(this), 48, (Object) null);
    }
}
