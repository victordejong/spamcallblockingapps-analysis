package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/OffsetEdgeTreatment.class */
public final class OffsetEdgeTreatment extends EdgeTreatment {

    /* renamed from: a */
    private final EdgeTreatment f11106a;

    /* renamed from: b */
    private final float f11107b;

    public OffsetEdgeTreatment(@NonNull EdgeTreatment edgeTreatment, float f) {
        this.f11106a = edgeTreatment;
        this.f11107b = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: a */
    public boolean mo9280a() {
        return this.f11106a.mo9280a();
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: b */
    public void mo9150b(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        this.f11106a.mo9150b(f, f2 - this.f11107b, f3, shapePath);
    }
}
