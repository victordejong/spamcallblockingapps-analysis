package androidx.p046f.p047a.p048a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.content.p033a.C0631a;
import androidx.core.content.p033a.C0632b;
import androidx.core.content.p033a.C0641f;
import androidx.core.content.p033a.C0645i;
import androidx.core.graphics.C0753b;
import androidx.core.graphics.drawable.C0758a;
import androidx.p026b.C0529a;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.f.a.a.j */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a/j.class */
public final class C0850j extends AbstractC0849i {

    /* renamed from: a */
    static final PorterDuff.Mode f3461a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private C0857g f3462b;

    /* renamed from: d */
    private PorterDuffColorFilter f3463d;

    /* renamed from: e */
    private ColorFilter f3464e;

    /* renamed from: f */
    private boolean f3465f;

    /* renamed from: g */
    private boolean f3466g;

    /* renamed from: h */
    private Drawable.ConstantState f3467h;

    /* renamed from: i */
    private final float[] f3468i;

    /* renamed from: j */
    private final Matrix f3469j;

    /* renamed from: k */
    private final Rect f3470k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$a.class */
    public static final class C0851a extends AbstractC0855e {
        C0851a() {
        }

        C0851a(C0851a aVar) {
            super(aVar);
        }

        /* renamed from: a */
        public final void m7923a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (C0645i.m8626a(xmlPullParser, "pathData")) {
                TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3434d);
                String string = a.getString(0);
                if (string != null) {
                    this.f3497m = string;
                }
                String string2 = a.getString(1);
                if (string2 != null) {
                    this.f3496l = C0753b.m8274b(string2);
                }
                this.f3498n = C0645i.m8628a(a, xmlPullParser, "fillType", 2, 0);
                a.recycle();
            }
        }

        @Override // androidx.p046f.p047a.p048a.C0850j.AbstractC0855e
        /* renamed from: a */
        public final boolean mo7917a() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$b.class */
    public static final class C0852b extends AbstractC0855e {

        /* renamed from: a */
        C0632b f3471a;

        /* renamed from: b */
        float f3472b;

        /* renamed from: c */
        C0632b f3473c;

        /* renamed from: d */
        float f3474d;

        /* renamed from: e */
        float f3475e;

        /* renamed from: f */
        float f3476f;

        /* renamed from: g */
        float f3477g;

        /* renamed from: h */
        float f3478h;

        /* renamed from: i */
        Paint.Cap f3479i;

        /* renamed from: j */
        Paint.Join f3480j;

        /* renamed from: k */
        float f3481k;

        /* renamed from: p */
        private int[] f3482p;

        C0852b() {
            this.f3472b = 0.0f;
            this.f3474d = 1.0f;
            this.f3475e = 1.0f;
            this.f3476f = 0.0f;
            this.f3477g = 1.0f;
            this.f3478h = 0.0f;
            this.f3479i = Paint.Cap.BUTT;
            this.f3480j = Paint.Join.MITER;
            this.f3481k = 4.0f;
        }

        C0852b(C0852b bVar) {
            super(bVar);
            this.f3472b = 0.0f;
            this.f3474d = 1.0f;
            this.f3475e = 1.0f;
            this.f3476f = 0.0f;
            this.f3477g = 1.0f;
            this.f3478h = 0.0f;
            this.f3479i = Paint.Cap.BUTT;
            this.f3480j = Paint.Join.MITER;
            this.f3481k = 4.0f;
            this.f3482p = bVar.f3482p;
            this.f3471a = bVar.f3471a;
            this.f3472b = bVar.f3472b;
            this.f3474d = bVar.f3474d;
            this.f3473c = bVar.f3473c;
            this.f3498n = bVar.f3498n;
            this.f3475e = bVar.f3475e;
            this.f3476f = bVar.f3476f;
            this.f3477g = bVar.f3477g;
            this.f3478h = bVar.f3478h;
            this.f3479i = bVar.f3479i;
            this.f3480j = bVar.f3480j;
            this.f3481k = bVar.f3481k;
        }

        /* renamed from: a */
        public final void m7922a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3433c);
            this.f3482p = null;
            if (C0645i.m8626a(xmlPullParser, "pathData")) {
                String string = a.getString(0);
                if (string != null) {
                    this.f3497m = string;
                }
                String string2 = a.getString(2);
                if (string2 != null) {
                    this.f3496l = C0753b.m8274b(string2);
                }
                this.f3473c = C0645i.m8632a(a, xmlPullParser, theme, "fillColor", 1);
                this.f3475e = C0645i.m8629a(a, xmlPullParser, "fillAlpha", 12, this.f3475e);
                int a2 = C0645i.m8628a(a, xmlPullParser, "strokeLineCap", 8, -1);
                Paint.Cap cap = this.f3479i;
                if (a2 == 0) {
                    cap = Paint.Cap.BUTT;
                } else if (a2 == 1) {
                    cap = Paint.Cap.ROUND;
                } else if (a2 == 2) {
                    cap = Paint.Cap.SQUARE;
                }
                this.f3479i = cap;
                int a3 = C0645i.m8628a(a, xmlPullParser, "strokeLineJoin", 9, -1);
                Paint.Join join = this.f3480j;
                if (a3 == 0) {
                    join = Paint.Join.MITER;
                } else if (a3 == 1) {
                    join = Paint.Join.ROUND;
                } else if (a3 == 2) {
                    join = Paint.Join.BEVEL;
                }
                this.f3480j = join;
                this.f3481k = C0645i.m8629a(a, xmlPullParser, "strokeMiterLimit", 10, this.f3481k);
                this.f3471a = C0645i.m8632a(a, xmlPullParser, theme, "strokeColor", 3);
                this.f3474d = C0645i.m8629a(a, xmlPullParser, "strokeAlpha", 11, this.f3474d);
                this.f3472b = C0645i.m8629a(a, xmlPullParser, "strokeWidth", 4, this.f3472b);
                this.f3477g = C0645i.m8629a(a, xmlPullParser, "trimPathEnd", 6, this.f3477g);
                this.f3478h = C0645i.m8629a(a, xmlPullParser, "trimPathOffset", 7, this.f3478h);
                this.f3476f = C0645i.m8629a(a, xmlPullParser, "trimPathStart", 5, this.f3476f);
                this.f3498n = C0645i.m8628a(a, xmlPullParser, "fillType", 13, this.f3498n);
            }
            a.recycle();
        }

        @Override // androidx.p046f.p047a.p048a.C0850j.AbstractC0854d
        /* renamed from: a */
        public final boolean mo7919a(int[] iArr) {
            return this.f3471a.m8673a(iArr) | this.f3473c.m8673a(iArr);
        }

        @Override // androidx.p046f.p047a.p048a.C0850j.AbstractC0854d
        /* renamed from: b */
        public final boolean mo7918b() {
            return this.f3473c.m8669d() || this.f3471a.m8669d();
        }

        final float getFillAlpha() {
            return this.f3475e;
        }

        final int getFillColor() {
            return this.f3473c.m8672b();
        }

        final float getStrokeAlpha() {
            return this.f3474d;
        }

        final int getStrokeColor() {
            return this.f3471a.m8672b();
        }

        final float getStrokeWidth() {
            return this.f3472b;
        }

        final float getTrimPathEnd() {
            return this.f3477g;
        }

        final float getTrimPathOffset() {
            return this.f3478h;
        }

        final float getTrimPathStart() {
            return this.f3476f;
        }

        final void setFillAlpha(float f) {
            this.f3475e = f;
        }

        final void setFillColor(int i) {
            this.f3473c.m8671b(i);
        }

        final void setStrokeAlpha(float f) {
            this.f3474d = f;
        }

        final void setStrokeColor(int i) {
            this.f3471a.m8671b(i);
        }

        final void setStrokeWidth(float f) {
            this.f3472b = f;
        }

        final void setTrimPathEnd(float f) {
            this.f3477g = f;
        }

        final void setTrimPathOffset(float f) {
            this.f3478h = f;
        }

        final void setTrimPathStart(float f) {
            this.f3476f = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$c.class */
    public static final class C0853c extends AbstractC0854d {

        /* renamed from: a */
        final Matrix f3483a;

        /* renamed from: b */
        final ArrayList<AbstractC0854d> f3484b;

        /* renamed from: c */
        float f3485c;

        /* renamed from: d */
        final Matrix f3486d;

        /* renamed from: e */
        int f3487e;

        /* renamed from: f */
        private float f3488f;

        /* renamed from: g */
        private float f3489g;

        /* renamed from: h */
        private float f3490h;

        /* renamed from: i */
        private float f3491i;

        /* renamed from: j */
        private float f3492j;

        /* renamed from: k */
        private float f3493k;

        /* renamed from: l */
        private int[] f3494l;

        /* renamed from: m */
        private String f3495m;

        public C0853c() {
            super((byte) 0);
            this.f3483a = new Matrix();
            this.f3484b = new ArrayList<>();
            this.f3485c = 0.0f;
            this.f3488f = 0.0f;
            this.f3489g = 0.0f;
            this.f3490h = 1.0f;
            this.f3491i = 1.0f;
            this.f3492j = 0.0f;
            this.f3493k = 0.0f;
            this.f3486d = new Matrix();
            this.f3495m = null;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0853c(C0853c cVar, C0529a<String, Object> aVar) {
            super((byte) 0);
            AbstractC0855e eVar;
            this.f3483a = new Matrix();
            this.f3484b = new ArrayList<>();
            this.f3485c = 0.0f;
            this.f3488f = 0.0f;
            this.f3489g = 0.0f;
            this.f3490h = 1.0f;
            this.f3491i = 1.0f;
            this.f3492j = 0.0f;
            this.f3493k = 0.0f;
            this.f3486d = new Matrix();
            this.f3495m = null;
            this.f3485c = cVar.f3485c;
            this.f3488f = cVar.f3488f;
            this.f3489g = cVar.f3489g;
            this.f3490h = cVar.f3490h;
            this.f3491i = cVar.f3491i;
            this.f3492j = cVar.f3492j;
            this.f3493k = cVar.f3493k;
            this.f3494l = cVar.f3494l;
            this.f3495m = cVar.f3495m;
            this.f3487e = cVar.f3487e;
            String str = this.f3495m;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f3486d.set(cVar.f3486d);
            ArrayList<AbstractC0854d> arrayList = cVar.f3484b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC0854d dVar = arrayList.get(i);
                if (dVar instanceof C0853c) {
                    this.f3484b.add(new C0853c((C0853c) dVar, aVar));
                } else {
                    if (dVar instanceof C0852b) {
                        eVar = new C0852b((C0852b) dVar);
                    } else if (dVar instanceof C0851a) {
                        eVar = new C0851a((C0851a) dVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f3484b.add(eVar);
                    if (eVar.f3497m != null) {
                        aVar.put(eVar.f3497m, eVar);
                    }
                }
            }
        }

        /* renamed from: a */
        private void m7921a() {
            this.f3486d.reset();
            this.f3486d.postTranslate(-this.f3488f, -this.f3489g);
            this.f3486d.postScale(this.f3490h, this.f3491i);
            this.f3486d.postRotate(this.f3485c, 0.0f, 0.0f);
            this.f3486d.postTranslate(this.f3492j + this.f3488f, this.f3493k + this.f3489g);
        }

        /* renamed from: a */
        public final void m7920a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3432b);
            this.f3494l = null;
            this.f3485c = C0645i.m8629a(a, xmlPullParser, "rotation", 5, this.f3485c);
            this.f3488f = a.getFloat(1, this.f3488f);
            this.f3489g = a.getFloat(2, this.f3489g);
            this.f3490h = C0645i.m8629a(a, xmlPullParser, "scaleX", 3, this.f3490h);
            this.f3491i = C0645i.m8629a(a, xmlPullParser, "scaleY", 4, this.f3491i);
            this.f3492j = C0645i.m8629a(a, xmlPullParser, "translateX", 6, this.f3492j);
            this.f3493k = C0645i.m8629a(a, xmlPullParser, "translateY", 7, this.f3493k);
            String string = a.getString(0);
            if (string != null) {
                this.f3495m = string;
            }
            m7921a();
            a.recycle();
        }

        @Override // androidx.p046f.p047a.p048a.C0850j.AbstractC0854d
        /* renamed from: a */
        public final boolean mo7919a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f3484b.size(); i++) {
                z |= this.f3484b.get(i).mo7919a(iArr);
            }
            return z;
        }

        @Override // androidx.p046f.p047a.p048a.C0850j.AbstractC0854d
        /* renamed from: b */
        public final boolean mo7918b() {
            for (int i = 0; i < this.f3484b.size(); i++) {
                if (this.f3484b.get(i).mo7918b()) {
                    return true;
                }
            }
            return false;
        }

        public final String getGroupName() {
            return this.f3495m;
        }

        public final Matrix getLocalMatrix() {
            return this.f3486d;
        }

        public final float getPivotX() {
            return this.f3488f;
        }

        public final float getPivotY() {
            return this.f3489g;
        }

        public final float getRotation() {
            return this.f3485c;
        }

        public final float getScaleX() {
            return this.f3490h;
        }

        public final float getScaleY() {
            return this.f3491i;
        }

        public final float getTranslateX() {
            return this.f3492j;
        }

        public final float getTranslateY() {
            return this.f3493k;
        }

        public final void setPivotX(float f) {
            if (f != this.f3488f) {
                this.f3488f = f;
                m7921a();
            }
        }

        public final void setPivotY(float f) {
            if (f != this.f3489g) {
                this.f3489g = f;
                m7921a();
            }
        }

        public final void setRotation(float f) {
            if (f != this.f3485c) {
                this.f3485c = f;
                m7921a();
            }
        }

        public final void setScaleX(float f) {
            if (f != this.f3490h) {
                this.f3490h = f;
                m7921a();
            }
        }

        public final void setScaleY(float f) {
            if (f != this.f3491i) {
                this.f3491i = f;
                m7921a();
            }
        }

        public final void setTranslateX(float f) {
            if (f != this.f3492j) {
                this.f3492j = f;
                m7921a();
            }
        }

        public final void setTranslateY(float f) {
            if (f != this.f3493k) {
                this.f3493k = f;
                m7921a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$d.class */
    public static abstract class AbstractC0854d {
        private AbstractC0854d() {
        }

        /* synthetic */ AbstractC0854d(byte b) {
            this();
        }

        /* renamed from: a */
        public boolean mo7919a(int[] iArr) {
            return false;
        }

        /* renamed from: b */
        public boolean mo7918b() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$e.class */
    public static abstract class AbstractC0855e extends AbstractC0854d {

        /* renamed from: l */
        protected C0753b.C0755b[] f3496l;

        /* renamed from: m */
        String f3497m;

        /* renamed from: n */
        int f3498n;

        /* renamed from: o */
        int f3499o;

        public AbstractC0855e() {
            super((byte) 0);
            this.f3496l = null;
            this.f3498n = 0;
        }

        public AbstractC0855e(AbstractC0855e eVar) {
            super((byte) 0);
            this.f3496l = null;
            this.f3498n = 0;
            this.f3497m = eVar.f3497m;
            this.f3499o = eVar.f3499o;
            this.f3496l = C0753b.m8276a(eVar.f3496l);
        }

        /* renamed from: a */
        public final void m7916a(Path path) {
            path.reset();
            C0753b.C0755b[] bVarArr = this.f3496l;
            if (bVarArr != null) {
                C0753b.C0755b.m8269a(bVarArr, path);
            }
        }

        /* renamed from: a */
        public boolean mo7917a() {
            return false;
        }

        public C0753b.C0755b[] getPathData() {
            return this.f3496l;
        }

        public String getPathName() {
            return this.f3497m;
        }

        public void setPathData(C0753b.C0755b[] bVarArr) {
            if (!C0753b.m8275a(this.f3496l, bVarArr)) {
                this.f3496l = C0753b.m8276a(bVarArr);
                return;
            }
            C0753b.C0755b[] bVarArr2 = this.f3496l;
            for (int i = 0; i < bVarArr.length; i++) {
                bVarArr2[i].f3128a = bVarArr[i].f3128a;
                for (int i2 = 0; i2 < bVarArr[i].f3129b.length; i2++) {
                    bVarArr2[i].f3129b[i2] = bVarArr[i].f3129b[i2];
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$f */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$f.class */
    public static final class C0856f {

        /* renamed from: n */
        private static final Matrix f3500n = new Matrix();

        /* renamed from: a */
        Paint f3501a;

        /* renamed from: b */
        Paint f3502b;

        /* renamed from: c */
        final C0853c f3503c;

        /* renamed from: d */
        float f3504d;

        /* renamed from: e */
        float f3505e;

        /* renamed from: f */
        float f3506f;

        /* renamed from: g */
        float f3507g;

        /* renamed from: h */
        int f3508h;

        /* renamed from: i */
        String f3509i;

        /* renamed from: j */
        Boolean f3510j;

        /* renamed from: k */
        final C0529a<String, Object> f3511k;

        /* renamed from: l */
        private final Path f3512l;

        /* renamed from: m */
        private final Path f3513m;

        /* renamed from: o */
        private final Matrix f3514o;

        /* renamed from: p */
        private PathMeasure f3515p;

        /* renamed from: q */
        private int f3516q;

        public C0856f() {
            this.f3514o = new Matrix();
            this.f3504d = 0.0f;
            this.f3505e = 0.0f;
            this.f3506f = 0.0f;
            this.f3507g = 0.0f;
            this.f3508h = 255;
            this.f3509i = null;
            this.f3510j = null;
            this.f3511k = new C0529a<>();
            this.f3503c = new C0853c();
            this.f3512l = new Path();
            this.f3513m = new Path();
        }

        public C0856f(C0856f fVar) {
            this.f3514o = new Matrix();
            this.f3504d = 0.0f;
            this.f3505e = 0.0f;
            this.f3506f = 0.0f;
            this.f3507g = 0.0f;
            this.f3508h = 255;
            this.f3509i = null;
            this.f3510j = null;
            this.f3511k = new C0529a<>();
            this.f3503c = new C0853c(fVar.f3503c, this.f3511k);
            this.f3512l = new Path(fVar.f3512l);
            this.f3513m = new Path(fVar.f3513m);
            this.f3504d = fVar.f3504d;
            this.f3505e = fVar.f3505e;
            this.f3506f = fVar.f3506f;
            this.f3507g = fVar.f3507g;
            this.f3516q = fVar.f3516q;
            this.f3508h = fVar.f3508h;
            this.f3509i = fVar.f3509i;
            String str = fVar.f3509i;
            if (str != null) {
                this.f3511k.put(str, this);
            }
            this.f3510j = fVar.f3510j;
        }

        /* renamed from: a */
        private void m7913a(C0853c cVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            cVar.f3483a.set(matrix);
            cVar.f3483a.preConcat(cVar.f3486d);
            canvas.save();
            C0856f fVar = this;
            for (int i3 = 0; i3 < cVar.f3484b.size(); i3++) {
                AbstractC0854d dVar = cVar.f3484b.get(i3);
                if (dVar instanceof C0853c) {
                    m7913a((C0853c) dVar, cVar.f3483a, canvas, i, i2, colorFilter);
                } else if (dVar instanceof AbstractC0855e) {
                    AbstractC0855e eVar = (AbstractC0855e) dVar;
                    float f = i / fVar.f3506f;
                    float f2 = i2 / fVar.f3507g;
                    float min = Math.min(f, f2);
                    Matrix matrix2 = cVar.f3483a;
                    fVar.f3514o.set(matrix2);
                    fVar.f3514o.postScale(f, f2);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix2.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[0], fArr[1]);
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    float f5 = fArr[2];
                    float f6 = fArr[3];
                    float max = Math.max(hypot, hypot2);
                    float abs = max > 0.0f ? Math.abs((f3 * f6) - (f4 * f5)) / max : 0.0f;
                    if (abs != 0.0f) {
                        eVar.m7916a(this.f3512l);
                        Path path = this.f3512l;
                        this.f3513m.reset();
                        if (eVar.mo7917a()) {
                            this.f3513m.setFillType(eVar.f3498n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            this.f3513m.addPath(path, this.f3514o);
                            canvas.clipPath(this.f3513m);
                            fVar = this;
                        } else {
                            C0852b bVar = (C0852b) eVar;
                            if (!(bVar.f3476f == 0.0f && bVar.f3477g == 1.0f)) {
                                float f7 = bVar.f3476f;
                                float f8 = bVar.f3478h;
                                float f9 = bVar.f3477g;
                                float f10 = bVar.f3478h;
                                if (this.f3515p == null) {
                                    this.f3515p = new PathMeasure();
                                }
                                this.f3515p.setPath(this.f3512l, false);
                                float length = this.f3515p.getLength();
                                float f11 = ((f7 + f8) % 1.0f) * length;
                                float f12 = ((f9 + f10) % 1.0f) * length;
                                path.reset();
                                if (f11 > f12) {
                                    this.f3515p.getSegment(f11, length, path, true);
                                    this.f3515p.getSegment(0.0f, f12, path, true);
                                } else {
                                    this.f3515p.getSegment(f11, f12, path, true);
                                }
                                path.rLineTo(0.0f, 0.0f);
                            }
                            this.f3513m.addPath(path, this.f3514o);
                            if (bVar.f3473c.m8668e()) {
                                C0632b bVar2 = bVar.f3473c;
                                if (this.f3502b == null) {
                                    this.f3502b = new Paint(1);
                                    this.f3502b.setStyle(Paint.Style.FILL);
                                }
                                Paint paint = this.f3502b;
                                if (bVar2.m8670c()) {
                                    Shader a = bVar2.m8676a();
                                    a.setLocalMatrix(this.f3514o);
                                    paint.setShader(a);
                                    paint.setAlpha(Math.round(bVar.f3475e * 255.0f));
                                } else {
                                    paint.setShader(null);
                                    paint.setAlpha(255);
                                    paint.setColor(C0850j.m7929a(bVar2.m8672b(), bVar.f3475e));
                                }
                                paint.setColorFilter(colorFilter);
                                this.f3513m.setFillType(bVar.f3498n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(this.f3513m, paint);
                            }
                            fVar = this;
                            if (bVar.f3471a.m8668e()) {
                                C0632b bVar3 = bVar.f3471a;
                                if (this.f3501a == null) {
                                    this.f3501a = new Paint(1);
                                    this.f3501a.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint2 = this.f3501a;
                                if (bVar.f3480j != null) {
                                    paint2.setStrokeJoin(bVar.f3480j);
                                }
                                if (bVar.f3479i != null) {
                                    paint2.setStrokeCap(bVar.f3479i);
                                }
                                paint2.setStrokeMiter(bVar.f3481k);
                                if (bVar3.m8670c()) {
                                    Shader a2 = bVar3.m8676a();
                                    a2.setLocalMatrix(this.f3514o);
                                    paint2.setShader(a2);
                                    paint2.setAlpha(Math.round(bVar.f3474d * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    paint2.setColor(C0850j.m7929a(bVar3.m8672b(), bVar.f3474d));
                                }
                                paint2.setColorFilter(colorFilter);
                                paint2.setStrokeWidth(bVar.f3472b * abs * min);
                                canvas.drawPath(this.f3513m, paint2);
                                fVar = this;
                            }
                        }
                    } else {
                        fVar = this;
                    }
                }
            }
            canvas.restore();
        }

        /* renamed from: a */
        public final void m7914a(Canvas canvas, int i, int i2) {
            m7913a(this.f3503c, f3500n, canvas, i, i2, null);
        }

        /* renamed from: a */
        public final boolean m7915a() {
            if (this.f3510j == null) {
                this.f3510j = Boolean.valueOf(this.f3503c.mo7918b());
            }
            return this.f3510j.booleanValue();
        }

        public final float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public final int getRootAlpha() {
            return this.f3508h;
        }

        public final void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public final void setRootAlpha(int i) {
            this.f3508h = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.j$g */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$g.class */
    public static final class C0857g extends Drawable.ConstantState {

        /* renamed from: a */
        int f3517a;

        /* renamed from: b */
        C0856f f3518b;

        /* renamed from: c */
        ColorStateList f3519c;

        /* renamed from: d */
        PorterDuff.Mode f3520d;

        /* renamed from: e */
        boolean f3521e;

        /* renamed from: f */
        Bitmap f3522f;

        /* renamed from: g */
        ColorStateList f3523g;

        /* renamed from: h */
        PorterDuff.Mode f3524h;

        /* renamed from: i */
        int f3525i;

        /* renamed from: j */
        boolean f3526j;

        /* renamed from: k */
        boolean f3527k;

        /* renamed from: l */
        Paint f3528l;

        public C0857g() {
            this.f3519c = null;
            this.f3520d = C0850j.f3461a;
            this.f3518b = new C0856f();
        }

        public C0857g(C0857g gVar) {
            this.f3519c = null;
            this.f3520d = C0850j.f3461a;
            if (gVar != null) {
                this.f3517a = gVar.f3517a;
                this.f3518b = new C0856f(gVar.f3518b);
                if (gVar.f3518b.f3502b != null) {
                    this.f3518b.f3502b = new Paint(gVar.f3518b.f3502b);
                }
                if (gVar.f3518b.f3501a != null) {
                    this.f3518b.f3501a = new Paint(gVar.f3518b.f3501a);
                }
                this.f3519c = gVar.f3519c;
                this.f3520d = gVar.f3520d;
                this.f3521e = gVar.f3521e;
            }
        }

        /* renamed from: a */
        public final void m7912a(int i, int i2) {
            this.f3522f.eraseColor(0);
            this.f3518b.m7914a(new Canvas(this.f3522f), i, i2);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f3517a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0850j(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0850j(this);
        }
    }

    /* renamed from: androidx.f.a.a.j$h */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/j$h.class */
    private static final class C0858h extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f3529a;

        public C0858h(Drawable.ConstantState constantState) {
            this.f3529a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f3529a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f3529a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C0850j jVar = new C0850j();
            jVar.f3460c = (VectorDrawable) this.f3529a.newDrawable();
            return jVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C0850j jVar = new C0850j();
            jVar.f3460c = (VectorDrawable) this.f3529a.newDrawable(resources);
            return jVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0850j jVar = new C0850j();
            jVar.f3460c = (VectorDrawable) this.f3529a.newDrawable(resources, theme);
            return jVar;
        }
    }

    C0850j() {
        this.f3466g = true;
        this.f3468i = new float[9];
        this.f3469j = new Matrix();
        this.f3470k = new Rect();
        this.f3462b = new C0857g();
    }

    C0850j(C0857g gVar) {
        this.f3466g = true;
        this.f3468i = new float[9];
        this.f3469j = new Matrix();
        this.f3470k = new Rect();
        this.f3462b = gVar;
        this.f3463d = m7928a(gVar.f3519c, gVar.f3520d);
    }

    /* renamed from: a */
    static int m7929a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m7928a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public static C0850j m7927a(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C0850j jVar = new C0850j();
            jVar.f3460c = C0641f.m8640a(resources, i, theme);
            jVar.f3467h = new C0858h(jVar.f3460c.getConstantState());
            return jVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return m7926a(resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        }
    }

    /* renamed from: a */
    public static C0850j m7926a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0850j jVar = new C0850j();
        jVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return jVar;
    }

    /* renamed from: b */
    private void m7924b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int i;
        int i2;
        C0857g gVar = this.f3462b;
        C0856f fVar = gVar.f3518b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(fVar.f3503c);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                C0853c cVar = (C0853c) arrayDeque.peek();
                if ("path".equals(name)) {
                    C0852b bVar = new C0852b();
                    bVar.m7922a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f3484b.add(bVar);
                    if (bVar.getPathName() != null) {
                        fVar.f3511k.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    i = gVar.f3517a;
                    i2 = bVar.f3499o;
                } else if ("clip-path".equals(name)) {
                    C0851a aVar = new C0851a();
                    aVar.m7923a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f3484b.add(aVar);
                    if (aVar.getPathName() != null) {
                        fVar.f3511k.put(aVar.getPathName(), aVar);
                    }
                    i = gVar.f3517a;
                    i2 = aVar.f3499o;
                } else {
                    z = z;
                    if ("group".equals(name)) {
                        C0853c cVar2 = new C0853c();
                        cVar2.m7920a(resources, attributeSet, theme, xmlPullParser);
                        cVar.f3484b.add(cVar2);
                        arrayDeque.push(cVar2);
                        if (cVar2.getGroupName() != null) {
                            fVar.f3511k.put(cVar2.getGroupName(), cVar2);
                        }
                        i = gVar.f3517a;
                        i2 = cVar2.f3487e;
                    }
                }
                gVar.f3517a = i2 | i;
            } else {
                z = z;
                if (eventType == 3) {
                    z = z;
                    if ("group".equals(xmlPullParser.getName())) {
                        arrayDeque.pop();
                        z = z;
                    }
                }
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Object m7925a(String str) {
        return this.f3462b.f3518b.f3511k.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7930a() {
        this.f3466g = false;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        if (this.f3460c == null) {
            return false;
        }
        C0758a.m8244c(this.f3460c);
        return false;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0161, code lost:
        if ((r0 == r0.f3522f.getWidth() && r0 == r0.f3522f.getHeight()) == false) goto L_0x0164;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p046f.p047a.p048a.C0850j.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f3460c != null ? C0758a.m8246b(this.f3460c) : this.f3462b.f3518b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        if (this.f3460c != null) {
            return this.f3460c.getChangingConfigurations();
        }
        return this.f3462b.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f3460c != null ? C0758a.m8243d(this.f3460c) : this.f3464e;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f3460c != null && Build.VERSION.SDK_INT >= 24) {
            return new C0858h(this.f3460c.getConstantState());
        }
        this.f3462b.f3517a = getChangingConfigurations();
        return this.f3462b;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f3460c != null ? this.f3460c.getIntrinsicHeight() : (int) this.f3462b.f3518b.f3505e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f3460c != null ? this.f3460c.getIntrinsicWidth() : (int) this.f3462b.f3518b.f3504d;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (this.f3460c != null) {
            return this.f3460c.getOpacity();
        }
        return -3;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (this.f3460c != null) {
            this.f3460c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        ColorStateList colorStateList;
        if (this.f3460c != null) {
            C0758a.m8249a(this.f3460c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0857g gVar = this.f3462b;
        gVar.f3518b = new C0856f();
        TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3431a);
        C0857g gVar2 = this.f3462b;
        C0856f fVar = gVar2.f3518b;
        int a2 = C0645i.m8628a(a, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (a2 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (a2 == 5) {
            mode = PorterDuff.Mode.SRC_IN;
        } else if (a2 != 9) {
            switch (a2) {
                case 14:
                    mode = PorterDuff.Mode.MULTIPLY;
                    break;
                case 15:
                    mode = PorterDuff.Mode.SCREEN;
                    break;
                case 16:
                    mode = PorterDuff.Mode.ADD;
                    break;
            }
        } else {
            mode = PorterDuff.Mode.SRC_ATOP;
        }
        gVar2.f3520d = mode;
        if (C0645i.m8626a(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            a.getValue(1, typedValue);
            if (typedValue.type != 2) {
                colorStateList = (typedValue.type < 28 || typedValue.type > 31) ? C0631a.m8680a(a.getResources(), a.getResourceId(1, 0), theme) : ColorStateList.valueOf(typedValue.data);
            } else {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: ".concat(String.valueOf(typedValue)));
            }
        } else {
            colorStateList = null;
        }
        if (colorStateList != null) {
            gVar2.f3519c = colorStateList;
        }
        gVar2.f3521e = C0645i.m8627a(a, xmlPullParser, "autoMirrored", 5, gVar2.f3521e);
        fVar.f3506f = C0645i.m8629a(a, xmlPullParser, "viewportWidth", 7, fVar.f3506f);
        fVar.f3507g = C0645i.m8629a(a, xmlPullParser, "viewportHeight", 8, fVar.f3507g);
        if (fVar.f3506f <= 0.0f) {
            throw new XmlPullParserException(a.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (fVar.f3507g > 0.0f) {
            fVar.f3504d = a.getDimension(3, fVar.f3504d);
            fVar.f3505e = a.getDimension(2, fVar.f3505e);
            if (fVar.f3504d <= 0.0f) {
                throw new XmlPullParserException(a.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (fVar.f3505e > 0.0f) {
                fVar.setAlpha(C0645i.m8629a(a, xmlPullParser, "alpha", 4, fVar.getAlpha()));
                String string = a.getString(0);
                if (string != null) {
                    fVar.f3509i = string;
                    fVar.f3511k.put(string, fVar);
                }
                a.recycle();
                gVar.f3517a = getChangingConfigurations();
                gVar.f3527k = true;
                m7924b(resources, xmlPullParser, attributeSet, theme);
                this.f3463d = m7928a(gVar.f3519c, gVar.f3520d);
            } else {
                throw new XmlPullParserException(a.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(a.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.f3460c != null) {
            this.f3460c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f3460c != null ? C0758a.m8255a(this.f3460c) : this.f3462b.f3521e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (this.f3460c != null) {
            return this.f3460c.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        C0857g gVar = this.f3462b;
        if (gVar == null) {
            return false;
        }
        if (!gVar.f3518b.m7915a()) {
            return this.f3462b.f3519c != null && this.f3462b.f3519c.isStateful();
        }
        return true;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f3460c != null) {
            this.f3460c.mutate();
            return this;
        }
        if (!this.f3465f && super.mutate() == this) {
            this.f3462b = new C0857g(this.f3462b);
            this.f3465f = true;
        }
        return this;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        if (this.f3460c != null) {
            this.f3460c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        if (this.f3460c != null) {
            return this.f3460c.setState(iArr);
        }
        C0857g gVar = this.f3462b;
        boolean z = false;
        if (gVar.f3519c != null) {
            z = false;
            if (gVar.f3520d != null) {
                this.f3463d = m7928a(gVar.f3519c, gVar.f3520d);
                invalidateSelf();
                z = true;
            }
        }
        boolean z2 = z;
        if (gVar.f3518b.m7915a()) {
            boolean a = gVar.f3518b.f3503c.mo7919a(iArr);
            gVar.f3527k |= a;
            z2 = z;
            if (a) {
                invalidateSelf();
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        if (this.f3460c != null) {
            this.f3460c.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f3460c != null) {
            this.f3460c.setAlpha(i);
        } else if (this.f3462b.f3518b.getRootAlpha() != i) {
            this.f3462b.f3518b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        if (this.f3460c != null) {
            C0758a.m8247a(this.f3460c, z);
        } else {
            this.f3462b.f3521e = z;
        }
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f3460c != null) {
            this.f3460c.setColorFilter(colorFilter);
            return;
        }
        this.f3464e = colorFilter;
        invalidateSelf();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTint(int i) {
        if (this.f3460c != null) {
            C0758a.m8253a(this.f3460c, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f3460c != null) {
            C0758a.m8251a(this.f3460c, colorStateList);
            return;
        }
        C0857g gVar = this.f3462b;
        if (gVar.f3519c != colorStateList) {
            gVar.f3519c = colorStateList;
            this.f3463d = m7928a(colorStateList, gVar.f3520d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f3460c != null) {
            C0758a.m8248a(this.f3460c, mode);
            return;
        }
        C0857g gVar = this.f3462b;
        if (gVar.f3520d != mode) {
            gVar.f3520d = mode;
            this.f3463d = m7928a(gVar.f3519c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return this.f3460c != null ? this.f3460c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        if (this.f3460c != null) {
            this.f3460c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
