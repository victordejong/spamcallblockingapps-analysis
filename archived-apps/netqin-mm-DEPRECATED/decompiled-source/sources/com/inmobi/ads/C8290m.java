package com.inmobi.ads;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: com.inmobi.ads.m */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/m.class */
public final class C8290m {

    /* renamed from: com.inmobi.ads.m$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/m$a.class */
    public static final class C8291a extends Animation {

        /* renamed from: c */
        public final float f32268c;

        /* renamed from: d */
        public final float f32269d;

        /* renamed from: g */
        public Camera f32272g;

        /* renamed from: a */
        public final float f32266a = 0.0f;

        /* renamed from: b */
        public final float f32267b = 90.0f;

        /* renamed from: e */
        public final float f32270e = 0.0f;

        /* renamed from: f */
        public final boolean f32271f = true;

        public C8291a(float f, float f2) {
            this.f32268c = f;
            this.f32269d = f2;
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            float f2 = this.f32266a;
            float f3 = this.f32267b;
            float f4 = this.f32268c;
            float f5 = this.f32269d;
            Camera camera = this.f32272g;
            Matrix matrix = transformation.getMatrix();
            camera.save();
            if (this.f32271f) {
                camera.translate(0.0f, 0.0f, this.f32270e * f);
            } else {
                camera.translate(0.0f, 0.0f, this.f32270e * (1.0f - f));
            }
            camera.rotateX(f2 + ((f3 - f2) * f));
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f4, -f5);
            matrix.postTranslate(f4, f5);
        }

        @Override // android.view.animation.Animation
        public final void initialize(int i, int i2, int i3, int i4) {
            super.initialize(i, i2, i3, i4);
            this.f32272g = new Camera();
        }
    }

    /* renamed from: com.inmobi.ads.m$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/m$b.class */
    public static final class C8292b extends Animation {

        /* renamed from: c */
        public final float f32275c;

        /* renamed from: d */
        public final float f32276d;

        /* renamed from: g */
        public Camera f32279g;

        /* renamed from: a */
        public final float f32273a = 0.0f;

        /* renamed from: b */
        public final float f32274b = 90.0f;

        /* renamed from: e */
        public final float f32277e = 0.0f;

        /* renamed from: f */
        public final boolean f32278f = true;

        public C8292b(float f, float f2) {
            this.f32275c = f;
            this.f32276d = f2;
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            float f2 = this.f32273a;
            float f3 = this.f32274b;
            float f4 = this.f32275c;
            float f5 = this.f32276d;
            Camera camera = this.f32279g;
            Matrix matrix = transformation.getMatrix();
            camera.save();
            if (this.f32278f) {
                camera.translate(0.0f, 0.0f, this.f32277e * f);
            } else {
                camera.translate(0.0f, 0.0f, this.f32277e * (1.0f - f));
            }
            camera.rotateY(f2 + ((f3 - f2) * f));
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f4, -f5);
            matrix.postTranslate(f4, f5);
        }

        @Override // android.view.animation.Animation
        public final void initialize(int i, int i2, int i3, int i4) {
            super.initialize(i, i2, i3, i4);
            this.f32279g = new Camera();
        }
    }
}
