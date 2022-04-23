package com.google.android.material.p060a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: com.google.android.material.a.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/f.class */
public final class C2930f extends Property<ImageView, Matrix> {

    /* renamed from: a */
    private final Matrix f17819a = new Matrix();

    public C2930f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    @Override // android.util.Property
    public final /* synthetic */ Matrix get(ImageView imageView) {
        this.f17819a.set(imageView.getImageMatrix());
        return this.f17819a;
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
