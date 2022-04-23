package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.os.Build;
import androidx.preference.AbstractC1027o;
/* renamed from: com.vladlee.easyblacklist.dp */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dp.class */
final class DialogInterface$OnClickListenerC3370dp implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC1027o f19512a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3370dp(AbstractC1027o oVar) {
        this.f19512a = oVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            C3369do.m126b(this.f19512a.getActivity());
        }
    }
}
