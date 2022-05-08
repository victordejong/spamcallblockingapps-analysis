package com.hiya.stingray.p000ui.setting;

import android.view.View;
import android.widget.Toast;
import com.hiya.stingray.util.p005i0.C0112d;
/* renamed from: com.hiya.stingray.ui.setting.SettingsCallHistoryDialog$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a.class */
class SettingsCallHistoryDialog$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SettingsCallHistoryDialog f119f;

    SettingsCallHistoryDialog$a(SettingsCallHistoryDialog settingsCallHistoryDialog) {
        this.f119f = settingsCallHistoryDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f119f.A.j(System.currentTimeMillis());
        this.f119f.C.m1061d(new C0112d(C0112d.EnumC0113a.FULL_REFRESH));
        Toast.makeText(this.f119f.getContext(), this.f119f.getString(2131820644), 0).show();
        this.f119f.c1();
    }
}
