package com.hiya.stingray.p030ui.setting;

import android.view.View;
import android.widget.Toast;
import com.hiya.stingray.util.p041i0.C1829d;
/* renamed from: com.hiya.stingray.ui.setting.SettingsCallHistoryDialog$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/SettingsCallHistoryDialog$a.class */
class SettingsCallHistoryDialog$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SettingsCallHistoryDialog f4913f;

    SettingsCallHistoryDialog$a(SettingsCallHistoryDialog settingsCallHistoryDialog) {
        this.f4913f = settingsCallHistoryDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4913f.A.j(System.currentTimeMillis());
        this.f4913f.C.m981d(new C1829d(C1829d.EnumC1830a.FULL_REFRESH));
        Toast.makeText(this.f4913f.getContext(), this.f4913f.getString(2131820644), 0).show();
        this.f4913f.c1();
    }
}
