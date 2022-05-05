package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ah */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ah.class */
public final class DialogInterface$OnClickListenerC3266ah implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f19305a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19306b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3266ah(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Context context) {
        this.f19306b = lVar;
        this.f19305a = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        CheckPermissionsActivity.m353a(this.f19305a);
    }
}
