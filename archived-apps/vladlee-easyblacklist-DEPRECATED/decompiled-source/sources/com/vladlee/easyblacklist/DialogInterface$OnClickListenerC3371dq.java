package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import androidx.preference.AbstractC1027o;
import androidx.preference.SwitchPreferenceCompat;
/* renamed from: com.vladlee.easyblacklist.dq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dq.class */
final class DialogInterface$OnClickListenerC3371dq implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC1027o f19513a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3371dq(AbstractC1027o oVar) {
        this.f19513a = oVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ((SwitchPreferenceCompat) this.f19513a.mo7391a((CharSequence) "pref_block_sms_option")).m7412f(false);
        dialogInterface.dismiss();
    }
}
