package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.af */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/af.class */
public final class DialogInterface$OnClickListenerC3264af implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ int f19302a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19303b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3264af(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, int i) {
        this.f19303b = lVar;
        this.f19302a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f19303b.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, this.f19302a);
    }
}
