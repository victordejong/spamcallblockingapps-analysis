package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$q */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$q.class */
final class CallSettingsFragment$q implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f94f;

    CallSettingsFragment$q(CallSettingsFragment callSettingsFragment) {
        this.f94f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CallSettingsFragment callSettingsFragment = this.f94f;
        TextView textView = (TextView) callSettingsFragment.f1(o.X2);
        k.c(textView, "privateCallsDsc");
        d o1 = this.f94f.o1();
        e requireActivity = this.f94f.requireActivity();
        k.c(requireActivity, "requireActivity()");
        CallSettingsFragment.C1(callSettingsFragment, 2131820677, textView, o1.w(requireActivity), CallSettingsFragment.h1(this.f94f), false, (String) null, new a(this), 48, (Object) null);
    }
}
