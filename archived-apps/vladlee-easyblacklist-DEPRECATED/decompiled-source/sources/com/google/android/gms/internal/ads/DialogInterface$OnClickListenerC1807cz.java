package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.cz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cz.class */
final class DialogInterface$OnClickListenerC1807cz implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ zzaof f8366a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1807cz(zzaof zzaofVar) {
        this.f8366a = zzaofVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f8366a.zzds("User canceled the download.");
    }
}
