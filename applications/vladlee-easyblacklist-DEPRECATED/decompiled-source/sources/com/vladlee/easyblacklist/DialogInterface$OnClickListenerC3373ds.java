package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
/* renamed from: com.vladlee.easyblacklist.ds */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ds.class */
final class DialogInterface$OnClickListenerC3373ds implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19515a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3373ds(Activity activity) {
        this.f19515a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C3392ee.m74b((Context) this.f19515a, "pref_block_sms_option", false);
        View findViewById = this.f19515a.findViewById(2131296575);
        if (findViewById != null) {
            ((SwitchCompat) findViewById).setChecked(false);
        }
        dialogInterface.dismiss();
    }
}
