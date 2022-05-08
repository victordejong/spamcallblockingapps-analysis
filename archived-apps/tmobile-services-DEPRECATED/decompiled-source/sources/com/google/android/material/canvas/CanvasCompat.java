package com.google.android.material.canvas;

import android.graphics.Canvas;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/canvas/CanvasCompat.class */
public class CanvasCompat {
    private CanvasCompat() {
    }

    /* renamed from: a */
    public static int m10287a(@NonNull Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
    }
}
