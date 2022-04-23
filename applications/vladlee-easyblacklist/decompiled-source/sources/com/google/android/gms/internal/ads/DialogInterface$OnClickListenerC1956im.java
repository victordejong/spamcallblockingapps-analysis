package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: com.google.android.gms.internal.ads.im */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/im.class */
final class DialogInterface$OnClickListenerC1956im implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f8635a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1956im(JsResult jsResult) {
        this.f8635a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f8635a.confirm();
    }
}
