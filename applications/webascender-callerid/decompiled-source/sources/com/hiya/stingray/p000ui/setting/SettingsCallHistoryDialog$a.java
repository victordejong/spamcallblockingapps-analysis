package com.hiya.stingray.p000ui.setting;

import android.view.View;
import android.widget.Toast;
import com.hiya.stingray.util.p011i0.C0167d;
/* renamed from: com.hiya.stingray.ui.setting.SettingsCallHistoryDialog$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a.class */
class SettingsCallHistoryDialog$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SettingsCallHistoryDialog f234f;

    SettingsCallHistoryDialog$a(SettingsCallHistoryDialog settingsCallHistoryDialog) {
        this.f234f = settingsCallHistoryDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f234f.A.j(System.currentTimeMillis());
        this.f234f.C.m981d(new C0167d(C0167d.EnumC0168a.FULL_REFRESH));
        Toast.makeText(this.f234f.getContext(), this.f234f.getString(2131820644), 0).show();
        this.f234f.c1();
    }
}
