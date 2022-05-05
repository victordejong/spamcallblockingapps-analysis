package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/VisibilityAwareImageButton.class */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: a */
    private int f18389a;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18389a = getVisibility();
    }

    /* renamed from: a */
    public final void m1062a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f18389a = i;
        }
    }

    /* renamed from: i */
    public final int m1061i() {
        return this.f18389a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m1062a(i, true);
    }
}
