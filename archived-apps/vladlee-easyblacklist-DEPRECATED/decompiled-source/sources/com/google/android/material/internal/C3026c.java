package com.google.android.material.internal;

import android.graphics.Outline;
/* renamed from: com.google.android.material.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/c.class */
public final class C3026c extends C3024b {
    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        copyBounds(this.f18392b);
        outline.setOval(this.f18392b);
    }
}
