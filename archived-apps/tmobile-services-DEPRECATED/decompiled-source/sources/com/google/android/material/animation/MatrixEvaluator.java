package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/MatrixEvaluator.class */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f9933a = new float[9];

    /* renamed from: b */
    private final float[] f9934b = new float[9];

    /* renamed from: c */
    private final Matrix f9935c = new Matrix();

    @NonNull
    /* renamed from: a */
    public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.f9933a);
        matrix2.getValues(this.f9934b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f9934b;
            float f2 = fArr[i];
            float[] fArr2 = this.f9933a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f9935c.setValues(this.f9934b);
        return this.f9935c;
    }
}
