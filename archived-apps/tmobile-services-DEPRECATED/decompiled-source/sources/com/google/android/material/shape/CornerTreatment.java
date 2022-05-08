package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/CornerTreatment.class */
public class CornerTreatment {
    @Deprecated
    /* renamed from: a */
    public void m9353a(float f, float f2, @NonNull ShapePath shapePath) {
    }

    /* renamed from: b */
    public void mo9278b(@NonNull ShapePath shapePath, float f, float f2, float f3) {
        m9353a(f, f2, shapePath);
    }

    /* renamed from: c */
    public void m9352c(@NonNull ShapePath shapePath, float f, float f2, @NonNull RectF rectF, @NonNull CornerSize cornerSize) {
        mo9278b(shapePath, f, f2, cornerSize.mo9279a(rectF));
    }
}
