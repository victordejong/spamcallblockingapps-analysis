package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$t */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$t.class */
final class CallSettingsFragment$t implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f97f;

    CallSettingsFragment$t(CallSettingsFragment callSettingsFragment) {
        this.f97f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CallSettingsFragment callSettingsFragment = this.f97f;
        TextView textView = (TextView) callSettingsFragment.f1(o.G2);
        k.c(textView, "outgoingDsc");
        d o1 = this.f97f.o1();
        e requireActivity = this.f97f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.C1(callSettingsFragment, 2131820676, textView, o1.v(requireActivity), CallSettingsFragment.i1(this.f97f), false, (String) null, new a(this), 48, (Object) null);
    }
}
