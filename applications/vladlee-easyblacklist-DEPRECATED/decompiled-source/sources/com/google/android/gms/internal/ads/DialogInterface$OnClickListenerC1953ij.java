package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: com.google.android.gms.internal.ads.ij */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ij.class */
final class DialogInterface$OnClickListenerC1953ij implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f8632a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1953ij(JsResult jsResult) {
        this.f8632a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f8632a.cancel();
    }
}
