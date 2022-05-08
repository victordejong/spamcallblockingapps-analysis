package com.google.android.material.textfield;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/NoEndIconDelegate.class */
public class NoEndIconDelegate extends EndIconDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public NoEndIconDelegate(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: a */
    public void mo8798a() {
        this.f11466a.setEndIconOnClickListener(null);
        this.f11466a.setEndIconDrawable((Drawable) null);
        this.f11466a.setEndIconContentDescription((CharSequence) null);
    }
}
