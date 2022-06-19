package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.o;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$p */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$p.class */
final class CallSettingsFragment$p implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f4772f;

    CallSettingsFragment$p(CallSettingsFragment callSettingsFragment) {
        this.f4772f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e1 m1 = this.f4772f.m1();
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("call_settings_picker");
        m906b.m895m(this.f4772f.s1().P() ? "nuisance" : "nuisance_upsell");
        m1.c("view_screen", m906b.m907a());
        CallSettingsFragment callSettingsFragment = this.f4772f;
        TextView textView = (TextView) callSettingsFragment.f1(o.a4);
        k.c(textView, "spamDsc");
        d o1 = this.f4772f.o1();
        e requireActivity = this.f4772f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.k1(callSettingsFragment, 2131820683, textView, o1.A(requireActivity), CallSettingsFragment.h1(this.f4772f), true, "nuisance", new a(this));
    }
}
