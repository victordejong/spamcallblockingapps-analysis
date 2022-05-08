package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* renamed from: com.google.android.gms.internal.ads.in */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/in.class */
final class DialogInterface$OnClickListenerC1957in implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f8636a;

    /* renamed from: b */
    private final /* synthetic */ EditText f8637b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1957in(JsPromptResult jsPromptResult, EditText editText) {
        this.f8636a = jsPromptResult;
        this.f8637b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f8636a.confirm(this.f8637b.getText().toString());
    }
}
