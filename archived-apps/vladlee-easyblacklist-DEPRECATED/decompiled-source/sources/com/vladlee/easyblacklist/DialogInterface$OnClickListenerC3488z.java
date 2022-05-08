package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.DialogInterface;
import com.vladlee.easyblacklist.C3318by;
/* renamed from: com.vladlee.easyblacklist.z */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/z.class */
final class DialogInterface$OnClickListenerC3488z implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f19692a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19693b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3488z(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Context context) {
        this.f19693b = lVar;
        this.f19692a = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f19692a.getContentResolver().delete(C3318by.C3321c.f19427a, null, null);
    }
}
