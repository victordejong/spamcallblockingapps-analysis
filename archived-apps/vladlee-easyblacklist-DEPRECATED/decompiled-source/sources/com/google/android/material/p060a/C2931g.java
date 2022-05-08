package com.google.android.material.p060a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* renamed from: com.google.android.material.a.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/g.class */
public final class C2931g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f17820a = new float[9];

    /* renamed from: b */
    private final float[] f17821b = new float[9];

    /* renamed from: c */
    private final Matrix f17822c = new Matrix();

    @Override // android.animation.TypeEvaluator
    public final /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f17820a);
        matrix2.getValues(this.f17821b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f17821b;
            float f2 = fArr[i];
            float[] fArr2 = this.f17820a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f17822c.setValues(this.f17821b);
        return this.f17822c;
    }
}
