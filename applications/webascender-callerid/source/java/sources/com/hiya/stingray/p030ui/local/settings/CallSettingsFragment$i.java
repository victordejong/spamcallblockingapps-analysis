package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.ui.common.e;
import com.hiya.stingray.ui.setting.SettingsCallHistoryDialog;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.TypeCastException;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$i.class */
final class CallSettingsFragment$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f4766f;

    CallSettingsFragment$i(CallSettingsFragment callSettingsFragment) {
        this.f4766f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f4766f.getActivity();
        if (activity != null) {
            SettingsCallHistoryDialog.t1(activity);
            e1 m1 = this.f4766f.m1();
            AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
            c1819a.m900h("delete_call_history");
            c1819a.m897k("call_settings");
            m1.c("user_action", c1819a.m907a());
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.hiya.stingray.ui.common.BaseActivity");
    }
}
