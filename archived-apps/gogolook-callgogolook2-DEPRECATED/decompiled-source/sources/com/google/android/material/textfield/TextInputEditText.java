package com.google.android.material.textfield;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.material.R$attr;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputEditText.class */
public class TextInputEditText extends AppCompatEditText {
    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.editTextStyle);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Nullable
    /* renamed from: a */
    public final CharSequence m31223a() {
        TextInputLayout b = m31222b();
        return b != null ? b.m31180o() : null;
    }

    @Nullable
    /* renamed from: b */
    public final TextInputLayout m31222b() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout b = m31222b();
        return (b == null || !b.m31177r()) ? super.getHint() : b.m31180o();
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            editorInfo.hintText = m31223a();
        }
        return onCreateInputConnection;
    }
}
