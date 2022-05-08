package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: com.google.android.gms.internal.ads.io */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/io.class */
final class DialogInterface$OnClickListenerC1958io implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f8638a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1958io(JsPromptResult jsPromptResult) {
        this.f8638a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f8638a.cancel();
    }
}
