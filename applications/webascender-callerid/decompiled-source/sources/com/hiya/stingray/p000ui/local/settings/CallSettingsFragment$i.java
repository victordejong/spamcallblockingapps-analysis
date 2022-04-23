package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.ui.common.e;
import com.hiya.stingray.ui.setting.SettingsCallHistoryDialog;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.TypeCastException;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$i.class */
final class CallSettingsFragment$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f87f;

    CallSettingsFragment$i(CallSettingsFragment callSettingsFragment) {
        this.f87f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f87f.getActivity();
        if (activity != null) {
            SettingsCallHistoryDialog.t1(activity);
            e1 m1 = this.f87f.m1();
            AbstractC0156c.C0157a aVar = new AbstractC0156c.C0157a();
            aVar.m900h("delete_call_history");
            aVar.m897k("call_settings");
            m1.c("user_action", aVar.m907a());
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.hiya.stingray.ui.common.BaseActivity");
    }
}
