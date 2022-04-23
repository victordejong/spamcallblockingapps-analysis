package com.google.android.material.textfield;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputEditText.class */
public class TextInputEditText extends AppCompatEditText {
    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17441g);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: c */
    private TextInputLayout m842c() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout c = m842c();
        return (c == null || !c.m831b()) ? super.getHint() : c.m841a();
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            TextInputLayout c = m842c();
            editorInfo.hintText = c != null ? c.m841a() : null;
        }
        return onCreateInputConnection;
    }
}
