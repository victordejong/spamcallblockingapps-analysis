package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/EndIconDelegate.class */
abstract class EndIconDelegate {

    /* renamed from: a */
    TextInputLayout f11466a;

    /* renamed from: b */
    Context f11467b;

    /* renamed from: c */
    CheckableImageButton f11468c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EndIconDelegate(@NonNull TextInputLayout textInputLayout) {
        this.f11466a = textInputLayout;
        this.f11467b = textInputLayout.getContext();
        this.f11468c = textInputLayout.getEndIconView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo8798a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public boolean mo8846b(int i) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void mo8845c(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean mo8844d() {
        return false;
    }
}
