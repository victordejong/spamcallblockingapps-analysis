package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzq;
/* renamed from: com.google.android.gms.internal.ads.fg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fg.class */
final class DialogInterface$OnClickListenerC1869fg implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ RunnableC1870fh f8462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1869fg(RunnableC1870fh fhVar) {
        this.f8462a = fhVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzq.zzkq();
        zzawb.zza(this.f8462a.f8463a, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
