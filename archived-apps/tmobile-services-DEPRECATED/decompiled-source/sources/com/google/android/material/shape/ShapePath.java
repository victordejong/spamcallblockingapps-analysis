package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.google.android.material.shadow.ShadowRenderer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath.class */
public class ShapePath {
    @Deprecated

    /* renamed from: a */
    public float f11150a;
    @Deprecated

    /* renamed from: b */
    public float f11151b;
    @Deprecated

    /* renamed from: c */
    public float f11152c;
    @Deprecated

    /* renamed from: d */
    public float f11153d;
    @Deprecated

    /* renamed from: e */
    public float f11154e;
    @Deprecated

    /* renamed from: f */
    public float f11155f;

    /* renamed from: g */
    private final List<PathOperation> f11156g = new ArrayList();

    /* renamed from: h */
    private final List<ShadowCompatOperation> f11157h = new ArrayList();

    /* renamed from: i */
    private boolean f11158i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$ArcShadowOperation.class */
    public static class ArcShadowOperation extends ShadowCompatOperation {

        /* renamed from: b */
        private final PathArcOperation f11161b;

        public ArcShadowOperation(PathArcOperation pathArcOperation) {
            this.f11161b = pathArcOperation;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        /* renamed from: a */
        public void mo9152a(Matrix matrix, @NonNull ShadowRenderer shadowRenderer, int i, @NonNull Canvas canvas) {
            shadowRenderer.m9360a(canvas, matrix, new RectF(this.f11161b.m9172k(), this.f11161b.m9168o(), this.f11161b.m9171l(), this.f11161b.m9173j()), i, this.f11161b.m9170m(), this.f11161b.m9169n());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$LineShadowOperation.class */
    static class LineShadowOperation extends ShadowCompatOperation {

        /* renamed from: b */
        private final PathLineOperation f11162b;

        /* renamed from: c */
        private final float f11163c;

        /* renamed from: d */
        private final float f11164d;

        public LineShadowOperation(PathLineOperation pathLineOperation, float f, float f2) {
            this.f11162b = pathLineOperation;
            this.f11163c = f;
            this.f11164d = f2;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        /* renamed from: a */
        public void mo9152a(Matrix matrix, @NonNull ShadowRenderer shadowRenderer, int i, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f11162b.f11179c - this.f11164d, this.f11162b.f11178b - this.f11163c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f11163c, this.f11164d);
            matrix2.preRotate(m9182c());
            shadowRenderer.m9359b(canvas, matrix2, rectF, i);
        }

        /* renamed from: c */
        float m9182c() {
            return (float) Math.toDegrees(Math.atan((this.f11162b.f11179c - this.f11164d) / (this.f11162b.f11178b - this.f11163c)));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$PathArcOperation.class */
    public static class PathArcOperation extends PathOperation {

        /* renamed from: h */
        private static final RectF f11165h = new RectF();
        @Deprecated

        /* renamed from: b */
        public float f11166b;
        @Deprecated

        /* renamed from: c */
        public float f11167c;
        @Deprecated

        /* renamed from: d */
        public float f11168d;
        @Deprecated

        /* renamed from: e */
        public float f11169e;
        @Deprecated

        /* renamed from: f */
        public float f11170f;
        @Deprecated

        /* renamed from: g */
        public float f11171g;

        public PathArcOperation(float f, float f2, float f3, float f4) {
            m9166q(f);
            m9162u(f2);
            m9165r(f3);
            m9167p(f4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public float m9173j() {
            return this.f11169e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public float m9172k() {
            return this.f11166b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public float m9171l() {
            return this.f11168d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public float m9170m() {
            return this.f11170f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public float m9169n() {
            return this.f11171g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public float m9168o() {
            return this.f11167c;
        }

        /* renamed from: p */
        private void m9167p(float f) {
            this.f11169e = f;
        }

        /* renamed from: q */
        private void m9166q(float f) {
            this.f11166b = f;
        }

        /* renamed from: r */
        private void m9165r(float f) {
            this.f11168d = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: s */
        public void m9164s(float f) {
            this.f11170f = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: t */
        public void m9163t(float f) {
            this.f11171g = f;
        }

        /* renamed from: u */
        private void m9162u(float f) {
            this.f11167c = f;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        /* renamed from: a */
        public void mo9157a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f11180a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f11165h.set(m9172k(), m9168o(), m9171l(), m9173j());
            path.arcTo(f11165h, m9170m(), m9169n(), false);
            path.transform(matrix);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$PathCubicOperation.class */
    public static class PathCubicOperation extends PathOperation {

        /* renamed from: b */
        private float f11172b;

        /* renamed from: c */
        private float f11173c;

        /* renamed from: d */
        private float f11174d;

        /* renamed from: e */
        private float f11175e;

        /* renamed from: f */
        private float f11176f;

        /* renamed from: g */
        private float f11177g;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        /* renamed from: a */
        public void mo9157a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f11180a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f11172b, this.f11173c, this.f11174d, this.f11175e, this.f11176f, this.f11177g);
            path.transform(matrix);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$PathLineOperation.class */
    public static class PathLineOperation extends PathOperation {

        /* renamed from: b */
        private float f11178b;

        /* renamed from: c */
        private float f11179c;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        /* renamed from: a */
        public void mo9157a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f11180a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f11178b, this.f11179c);
            path.transform(matrix);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$PathOperation.class */
    public static abstract class PathOperation {

        /* renamed from: a */
        protected final Matrix f11180a = new Matrix();

        /* renamed from: a */
        public abstract void mo9157a(Matrix matrix, Path path);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$PathQuadOperation.class */
    public static class PathQuadOperation extends PathOperation {
        @Deprecated

        /* renamed from: b */
        public float f11181b;
        @Deprecated

        /* renamed from: c */
        public float f11182c;
        @Deprecated

        /* renamed from: d */
        public float f11183d;
        @Deprecated

        /* renamed from: e */
        public float f11184e;

        /* renamed from: b */
        private float m9156b() {
            return this.f11181b;
        }

        /* renamed from: c */
        private float m9155c() {
            return this.f11182c;
        }

        /* renamed from: d */
        private float m9154d() {
            return this.f11183d;
        }

        /* renamed from: e */
        private float m9153e() {
            return this.f11184e;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        /* renamed from: a */
        public void mo9157a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f11180a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(m9156b(), m9155c(), m9154d(), m9153e());
            path.transform(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/ShapePath$ShadowCompatOperation.class */
    public static abstract class ShadowCompatOperation {

        /* renamed from: a */
        static final Matrix f11185a = new Matrix();

        ShadowCompatOperation() {
        }

        /* renamed from: a */
        public abstract void mo9152a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas);

        /* renamed from: b */
        public final void m9151b(ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            mo9152a(f11185a, shadowRenderer, i, canvas);
        }
    }

    public ShapePath() {
        m9190n(0.0f, 0.0f);
    }

    /* renamed from: b */
    private void m9202b(float f) {
        if (m9197g() != f) {
            float g = ((f - m9197g()) + 360.0f) % 360.0f;
            if (g <= 180.0f) {
                PathArcOperation pathArcOperation = new PathArcOperation(m9195i(), m9194j(), m9195i(), m9194j());
                pathArcOperation.m9164s(m9197g());
                pathArcOperation.m9163t(g);
                this.f11157h.add(new ArcShadowOperation(pathArcOperation));
                m9188p(f);
            }
        }
    }

    /* renamed from: c */
    private void m9201c(ShadowCompatOperation shadowCompatOperation, float f, float f2) {
        m9202b(f);
        this.f11157h.add(shadowCompatOperation);
        m9188p(f2);
    }

    /* renamed from: g */
    private float m9197g() {
        return this.f11154e;
    }

    /* renamed from: h */
    private float m9196h() {
        return this.f11155f;
    }

    /* renamed from: p */
    private void m9188p(float f) {
        this.f11154e = f;
    }

    /* renamed from: q */
    private void m9187q(float f) {
        this.f11155f = f;
    }

    /* renamed from: r */
    private void m9186r(float f) {
        this.f11152c = f;
    }

    /* renamed from: s */
    private void m9185s(float f) {
        this.f11153d = f;
    }

    /* renamed from: t */
    private void m9184t(float f) {
        this.f11150a = f;
    }

    /* renamed from: u */
    private void m9183u(float f) {
        this.f11151b = f;
    }

    /* renamed from: a */
    public void m9203a(float f, float f2, float f3, float f4, float f5, float f6) {
        PathArcOperation pathArcOperation = new PathArcOperation(f, f2, f3, f4);
        pathArcOperation.m9164s(f5);
        pathArcOperation.m9163t(f6);
        this.f11156g.add(pathArcOperation);
        ArcShadowOperation arcShadowOperation = new ArcShadowOperation(pathArcOperation);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        float f8 = f5;
        if (z) {
            f8 = (f5 + 180.0f) % 360.0f;
        }
        m9201c(arcShadowOperation, f8, z ? (180.0f + f7) % 360.0f : f7);
        double d = f7;
        m9186r(((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))));
        m9185s(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))));
    }

    /* renamed from: d */
    public void m9200d(Matrix matrix, Path path) {
        int size = this.f11156g.size();
        for (int i = 0; i < size; i++) {
            this.f11156g.get(i).mo9157a(matrix, path);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m9199e() {
        return this.f11158i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: f */
    public ShadowCompatOperation m9198f(final Matrix matrix) {
        m9202b(m9196h());
        final ArrayList arrayList = new ArrayList(this.f11157h);
        return new ShadowCompatOperation(this) { // from class: com.google.android.material.shape.ShapePath.1
            @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
            /* renamed from: a */
            public void mo9152a(Matrix matrix2, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
                for (ShadowCompatOperation shadowCompatOperation : arrayList) {
                    shadowCompatOperation.mo9152a(matrix, shadowRenderer, i, canvas);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public float m9195i() {
        return this.f11152c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public float m9194j() {
        return this.f11153d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public float m9193k() {
        return this.f11150a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public float m9192l() {
        return this.f11151b;
    }

    /* renamed from: m */
    public void m9191m(float f, float f2) {
        PathLineOperation pathLineOperation = new PathLineOperation();
        pathLineOperation.f11178b = f;
        pathLineOperation.f11179c = f2;
        this.f11156g.add(pathLineOperation);
        LineShadowOperation lineShadowOperation = new LineShadowOperation(pathLineOperation, m9195i(), m9194j());
        m9201c(lineShadowOperation, lineShadowOperation.m9182c() + 270.0f, lineShadowOperation.m9182c() + 270.0f);
        m9186r(f);
        m9185s(f2);
    }

    /* renamed from: n */
    public void m9190n(float f, float f2) {
        m9189o(f, f2, 270.0f, 0.0f);
    }

    /* renamed from: o */
    public void m9189o(float f, float f2, float f3, float f4) {
        m9184t(f);
        m9183u(f2);
        m9186r(f);
        m9185s(f2);
        m9188p(f3);
        m9187q((f3 + f4) % 360.0f);
        this.f11156g.clear();
        this.f11157h.clear();
        this.f11158i = false;
    }
}
