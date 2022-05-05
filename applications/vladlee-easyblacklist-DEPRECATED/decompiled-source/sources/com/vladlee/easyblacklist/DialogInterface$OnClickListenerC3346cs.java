package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.widget.ListView;
import com.vladlee.easyblacklist.C3318by;
/* renamed from: com.vladlee.easyblacklist.cs */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cs.class */
final class DialogInterface$OnClickListenerC3346cs implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ View$OnClickListenerC3345cr f19457a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3346cs(View$OnClickListenerC3345cr crVar) {
        this.f19457a = crVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f19457a.f19456b.getContentResolver().delete(C3318by.C3319a.f19425a, null, null);
        ((C3281av) ((ListView) this.f19457a.f19456b.findViewById(2131296470)).getAdapter()).m119d();
    }
}
