package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: com.google.android.gms.internal.ads.ik */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ik.class */
final class DialogInterface$OnCancelListenerC1954ik implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f8633a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnCancelListenerC1954ik(JsResult jsResult) {
        this.f8633a = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f8633a.cancel();
    }
}
