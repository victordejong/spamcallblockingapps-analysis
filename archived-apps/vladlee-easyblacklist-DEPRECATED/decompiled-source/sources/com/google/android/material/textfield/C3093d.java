package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.google.android.material.textfield.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/d.class */
final class C3093d implements TextWatcher {

    /* renamed from: a */
    final /* synthetic */ TextInputLayout f18718a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3093d(TextInputLayout textInputLayout) {
        this.f18718a = textInputLayout;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        boolean z;
        TextInputLayout textInputLayout = this.f18718a;
        z = textInputLayout.f18662af;
        textInputLayout.m833a(!z);
        if (this.f18718a.f18663b) {
            this.f18718a.m839a(editable.length());
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
