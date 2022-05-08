package com.vladlee.easyblacklist;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
/* renamed from: com.vladlee.easyblacklist.gv */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gv.class */
final class View$OnClickListenerC3464gv implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ WhitelistActivity f19646a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3464gv(WhitelistActivity whitelistActivity) {
        this.f19646a = whitelistActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SwitchCompat switchCompat = (SwitchCompat) this.f19646a.findViewById(2131296577);
        TextView textView = (TextView) view;
        boolean z = !switchCompat.isChecked();
        switchCompat.setChecked(z);
        C3392ee.m74b(this.f19646a, "pref_whitelist", z);
        textView.setText(z ? 2131624221 : 2131624104);
    }
}
