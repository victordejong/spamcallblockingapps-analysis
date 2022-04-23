package com.hiya.stingray.p000ui.local.settings;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import com.hiya.stingray.p000ui.login.C0064o;
import com.hiya.stingray.util.AbstractC0175n;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$r */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$r.class */
final class CallSettingsFragment$r implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f95f;

    CallSettingsFragment$r(CallSettingsFragment callSettingsFragment) {
        this.f95f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0064o r1 = this.f95f.r1();
        Context requireContext = this.f95f.requireContext();
        String[] strArr = AbstractC0175n.f327f;
        if (r1.m1219a(requireContext, strArr)) {
            CallSettingsFragment callSettingsFragment = this.f95f;
            TextView textView = (TextView) callSettingsFragment.f1(o.u3);
            k.c(textView, "savedContactsDsc");
            d o1 = this.f95f.o1();
            e requireActivity = this.f95f.requireActivity();
            k.c(requireActivity, "requireActivity()");
            CallSettingsFragment.C1(callSettingsFragment, 2131820678, textView, o1.x(requireActivity), CallSettingsFragment.i1(this.f95f), false, (String) null, new a(this), 48, (Object) null);
            return;
        }
        this.f95f.r1().m1213g(this.f95f.requireActivity(), this.f95f, strArr, 6005);
    }
}
