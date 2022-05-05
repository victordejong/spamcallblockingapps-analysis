package com.google.android.material.bottomappbar;

import com.google.android.material.p067h.C3016b;
import com.google.android.material.p067h.C3018d;
/* renamed from: com.google.android.material.bottomappbar.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/g.class */
public final class C2958g extends C3016b {

    /* renamed from: a */
    private float f17954a;

    /* renamed from: b */
    private float f17955b;

    /* renamed from: c */
    private float f17956c;

    /* renamed from: d */
    private float f17957d;

    /* renamed from: e */
    private float f17958e;

    public C2958g(float f, float f2, float f3) {
        this.f17955b = f;
        this.f17954a = f2;
        this.f17957d = f3;
        if (f3 >= 0.0f) {
            this.f17958e = 0.0f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final float m1405a() {
        return this.f17957d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1404a(float f) {
        this.f17958e = f;
    }

    @Override // com.google.android.material.p067h.C3016b
    /* renamed from: a */
    public final void mo1099a(float f, float f2, C3018d dVar) {
        float f3 = this.f17956c;
        if (f3 == 0.0f) {
            dVar.m1088a(f);
            return;
        }
        float f4 = ((this.f17955b * 2.0f) + f3) / 2.0f;
        float f5 = f2 * this.f17954a;
        float f6 = (f / 2.0f) + this.f17958e;
        float f7 = (this.f17957d * f2) + ((1.0f - f2) * f4);
        if (f7 / f4 >= 1.0f) {
            dVar.m1088a(f);
            return;
        }
        float f8 = f4 + f5;
        float f9 = f7 + f5;
        float sqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f6 - sqrt;
        float f11 = f6 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f9));
        float f12 = 90.0f - degrees;
        float f13 = f10 - f5;
        dVar.m1088a(f13);
        float f14 = f5 * 2.0f;
        dVar.m1087a(f13, 0.0f, f10 + f5, f14, 270.0f, degrees);
        dVar.m1087a(f6 - f4, (-f4) - f7, f6 + f4, f4 - f7, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        dVar.m1087a(f11 - f5, 0.0f, f11 + f5, f14, 270.0f - degrees, degrees);
        dVar.m1088a(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final float m1403b() {
        return this.f17956c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1402b(float f) {
        this.f17956c = f;
    }
}
