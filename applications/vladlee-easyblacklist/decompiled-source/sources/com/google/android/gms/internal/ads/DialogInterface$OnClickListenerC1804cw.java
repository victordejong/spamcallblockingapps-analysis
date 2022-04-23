package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.cw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cw.class */
final class DialogInterface$OnClickListenerC1804cw implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ zzanz f8363a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1804cw(zzanz zzanzVar) {
        this.f8363a = zzanzVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f8363a.zzds("Operation denied by user.");
    }
}
