package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.o;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$p */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$p.class */
final class CallSettingsFragment$p implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f93f;

    CallSettingsFragment$p(CallSettingsFragment callSettingsFragment) {
        this.f93f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e1 m1 = this.f93f.m1();
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("call_settings_picker");
        b.m895m(this.f93f.s1().P() ? "nuisance" : "nuisance_upsell");
        m1.c("view_screen", b.m907a());
        CallSettingsFragment callSettingsFragment = this.f93f;
        TextView textView = (TextView) callSettingsFragment.f1(o.a4);
        k.c(textView, "spamDsc");
        d o1 = this.f93f.o1();
        e requireActivity = this.f93f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.k1(callSettingsFragment, 2131820683, textView, o1.A(requireActivity), CallSettingsFragment.h1(this.f93f), true, "nuisance", new a(this));
    }
}
