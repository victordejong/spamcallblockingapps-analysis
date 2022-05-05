package com.google.android.material.p067h;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.h.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/h/d.class */
public final class C3018d {

    /* renamed from: a */
    public float f18338a;

    /* renamed from: b */
    public float f18339b;

    /* renamed from: c */
    public float f18340c;

    /* renamed from: d */
    public float f18341d;

    /* renamed from: e */
    private final List<AbstractC3021c> f18342e = new ArrayList();

    /* renamed from: com.google.android.material.h.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/h/d$a.class */
    public static final class C3019a extends AbstractC3021c {

        /* renamed from: h */
        private static final RectF f18343h = new RectF();

        /* renamed from: a */
        public float f18344a;

        /* renamed from: b */
        public float f18345b;

        /* renamed from: c */
        public float f18346c;

        /* renamed from: d */
        public float f18347d;

        /* renamed from: e */
        public float f18348e;

        /* renamed from: f */
        public float f18349f;

        public C3019a(float f, float f2, float f3, float f4) {
            this.f18344a = f;
            this.f18345b = f2;
            this.f18346c = f3;
            this.f18347d = f4;
        }

        @Override // com.google.android.material.p067h.C3018d.AbstractC3021c
        /* renamed from: a */
        public final void mo1083a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f18352g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f18343h.set(this.f18344a, this.f18345b, this.f18346c, this.f18347d);
            path.arcTo(f18343h, this.f18348e, this.f18349f, false);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.h.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/h/d$b.class */
    public static final class C3020b extends AbstractC3021c {

        /* renamed from: a */
        private float f18350a;

        /* renamed from: b */
        private float f18351b;

        @Override // com.google.android.material.p067h.C3018d.AbstractC3021c
        /* renamed from: a */
        public final void mo1083a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f18352g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f18350a, this.f18351b);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.h.d$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/h/d$c.class */
    public static abstract class AbstractC3021c {

        /* renamed from: g */
        protected final Matrix f18352g = new Matrix();

        /* renamed from: a */
        public abstract void mo1083a(Matrix matrix, Path path);
    }

    public C3018d() {
        m1089a();
    }

    /* renamed from: a */
    public final void m1089a() {
        this.f18338a = 0.0f;
        this.f18339b = 0.0f;
        this.f18340c = 0.0f;
        this.f18341d = 0.0f;
        this.f18342e.clear();
    }

    /* renamed from: a */
    public final void m1088a(float f) {
        C3020b bVar = new C3020b();
        bVar.f18350a = f;
        bVar.f18351b = 0.0f;
        this.f18342e.add(bVar);
        this.f18340c = f;
        this.f18341d = 0.0f;
    }

    /* renamed from: a */
    public final void m1087a(float f, float f2, float f3, float f4, float f5, float f6) {
        C3019a aVar = new C3019a(f, f2, f3, f4);
        aVar.f18348e = f5;
        aVar.f18349f = f6;
        this.f18342e.add(aVar);
        double d = f5 + f6;
        this.f18340c = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d))));
        this.f18341d = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d))));
    }

    /* renamed from: a */
    public final void m1086a(Matrix matrix, Path path) {
        int size = this.f18342e.size();
        for (int i = 0; i < size; i++) {
            this.f18342e.get(i).mo1083a(matrix, path);
        }
    }
}
