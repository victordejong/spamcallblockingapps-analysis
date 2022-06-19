package com.hiya.stingray.p030ui.local.settings;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import com.hiya.stingray.p030ui.login.C1726o;
import com.hiya.stingray.util.AbstractC1837n;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$r */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$r.class */
final class CallSettingsFragment$r implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f4774f;

    CallSettingsFragment$r(CallSettingsFragment callSettingsFragment) {
        this.f4774f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1726o r1 = this.f4774f.r1();
        Context requireContext = this.f4774f.requireContext();
        String[] strArr = AbstractC1837n.f5006f;
        if (!r1.m1219a(requireContext, strArr)) {
            this.f4774f.r1().m1213g(this.f4774f.requireActivity(), this.f4774f, strArr, 6005);
            return;
        }
        CallSettingsFragment callSettingsFragment = this.f4774f;
        TextView textView = (TextView) callSettingsFragment.f1(o.u3);
        k.c(textView, "savedContactsDsc");
        d o1 = this.f4774f.o1();
        e requireActivity = this.f4774f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.C1(callSettingsFragment, 2131820678, textView, o1.x(requireActivity), CallSettingsFragment.i1(this.f4774f), false, (String) null, new a(this), 48, (Object) null);
    }
}
