package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.cx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cx.class */
public final class DialogInterface$OnClickListenerC1805cx implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ zzanz f8364a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1805cx(zzanz zzanzVar) {
        this.f8364a = zzanzVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent a = this.f8364a.m4333a();
        zzq.zzkq();
        context = this.f8364a.f11078b;
        zzawb.zza(context, a);
    }
}
