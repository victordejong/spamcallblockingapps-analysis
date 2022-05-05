package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: com.google.android.gms.internal.ads.il */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/il.class */
final class DialogInterface$OnCancelListenerC1955il implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f8634a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnCancelListenerC1955il(JsPromptResult jsPromptResult) {
        this.f8634a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f8634a.cancel();
    }
}
