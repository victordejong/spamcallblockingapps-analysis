package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import androidx.appcompat.C0247a;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: a */
    private static final int[] f18364a = {16842912};

    /* renamed from: b */
    private boolean f18365b;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f547E);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0741t.m8348a(this, new C3023a(this));
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f18365b;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f18365b ? mergeDrawableStates(super.onCreateDrawableState(i + f18364a.length), f18364a) : super.onCreateDrawableState(i);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f18365b != z) {
            this.f18365b = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f18365b);
    }
}
