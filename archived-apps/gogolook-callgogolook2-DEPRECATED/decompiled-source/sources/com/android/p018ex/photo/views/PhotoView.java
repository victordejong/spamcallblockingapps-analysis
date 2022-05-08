package com.android.p018ex.photo.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ScaleGestureDetectorCompat;
import com.android.p018ex.photo.R$color;
import com.android.p018ex.photo.R$dimen;
import p081h.p093b.p099c.p103c.p105g.View$OnClickListenerC5644a;
/* renamed from: com.android.ex.photo.views.PhotoView */
/* loaded from: classes-dex2jar.jar:com/android/ex/photo/views/PhotoView.class */
public class PhotoView extends View implements GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, ScaleGestureDetector.OnScaleGestureListener, View$OnClickListenerC5644a.AbstractC5646b {

    /* renamed from: J */
    public static int f1060J;

    /* renamed from: K */
    public static boolean f1061K;

    /* renamed from: L */
    public static int f1062L;

    /* renamed from: N */
    public static Bitmap f1063N;

    /* renamed from: O */
    public static Bitmap f1064O;

    /* renamed from: P */
    public static Paint f1065P;

    /* renamed from: Q */
    public static Paint f1066Q;

    /* renamed from: A */
    public float f1067A;

    /* renamed from: B */
    public RectF f1068B;

    /* renamed from: C */
    public RectF f1069C;

    /* renamed from: D */
    public RectF f1070D;

    /* renamed from: E */
    public float[] f1071E;

    /* renamed from: F */
    public boolean f1072F;

    /* renamed from: G */
    public float f1073G;

    /* renamed from: H */
    public float f1074H;

    /* renamed from: I */
    public boolean f1075I;

    /* renamed from: a */
    public Drawable f1076a;

    /* renamed from: b */
    public Matrix f1077b;

    /* renamed from: c */
    public Matrix f1078c;

    /* renamed from: d */
    public Matrix f1079d;

    /* renamed from: e */
    public int f1080e;

    /* renamed from: f */
    public boolean f1081f;

    /* renamed from: g */
    public boolean f1082g;

    /* renamed from: h */
    public byte[] f1083h;

    /* renamed from: i */
    public boolean f1084i;

    /* renamed from: j */
    public boolean f1085j;

    /* renamed from: k */
    public Rect f1086k;

    /* renamed from: l */
    public int f1087l;

    /* renamed from: m */
    public float f1088m;

    /* renamed from: n */
    public GestureDetectorCompat f1089n;

    /* renamed from: o */
    public ScaleGestureDetector f1090o;

    /* renamed from: p */
    public View.OnClickListener f1091p;

    /* renamed from: q */
    public boolean f1092q;

    /* renamed from: r */
    public boolean f1093r;

    /* renamed from: s */
    public boolean f1094s;

    /* renamed from: t */
    public boolean f1095t;

    /* renamed from: u */
    public RunnableC1566b f1096u;

    /* renamed from: v */
    public float f1097v;

    /* renamed from: w */
    public float f1098w;

    /* renamed from: x */
    public RunnableC1568d f1099x;

    /* renamed from: y */
    public RunnableC1567c f1100y;

    /* renamed from: z */
    public RunnableC1565a f1101z;

    /* renamed from: com.android.ex.photo.views.PhotoView$a */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/views/PhotoView$a.class */
    public static class RunnableC1565a implements Runnable {

        /* renamed from: a */
        public final PhotoView f1102a;

        /* renamed from: b */
        public float f1103b;

        /* renamed from: c */
        public float f1104c;

        /* renamed from: d */
        public float f1105d;

        /* renamed from: e */
        public long f1106e;

        /* renamed from: f */
        public boolean f1107f;

        /* renamed from: g */
        public boolean f1108g;

        public RunnableC1565a(PhotoView photoView) {
            this.f1102a = photoView;
        }

        /* renamed from: a */
        public void m36643a() {
            this.f1107f = false;
            this.f1108g = true;
        }

        /* renamed from: a */
        public void m36642a(float f) {
            if (!this.f1107f) {
                this.f1103b = f;
                this.f1105d = this.f1103b / 500.0f;
                this.f1104c = 0.0f;
                this.f1106e = -1L;
                this.f1108g = false;
                this.f1107f = true;
                this.f1102a.post(this);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x007a, code lost:
            if ((r0 + r0) < r0) goto L_0x007d;
         */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00a9  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 196
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.photo.views.PhotoView.RunnableC1565a.run():void");
        }
    }

    /* renamed from: com.android.ex.photo.views.PhotoView$b */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/views/PhotoView$b.class */
    public static class RunnableC1566b implements Runnable {

        /* renamed from: a */
        public final PhotoView f1109a;

        /* renamed from: b */
        public float f1110b;

        /* renamed from: c */
        public float f1111c;

        /* renamed from: d */
        public boolean f1112d;

        /* renamed from: e */
        public float f1113e;

        /* renamed from: f */
        public float f1114f;

        /* renamed from: g */
        public float f1115g;

        /* renamed from: h */
        public long f1116h;

        /* renamed from: i */
        public boolean f1117i;

        /* renamed from: j */
        public boolean f1118j;

        public RunnableC1566b(PhotoView photoView) {
            this.f1109a = photoView;
        }

        /* renamed from: a */
        public void m36641a() {
            this.f1117i = false;
            this.f1118j = true;
        }

        /* renamed from: a */
        public boolean m36640a(float f, float f2, float f3, float f4) {
            if (this.f1117i) {
                return false;
            }
            this.f1110b = f3;
            this.f1111c = f4;
            this.f1113e = f2;
            this.f1116h = System.currentTimeMillis();
            this.f1114f = f;
            this.f1112d = this.f1113e > this.f1114f;
            this.f1115g = (this.f1113e - this.f1114f) / 200.0f;
            this.f1117i = true;
            this.f1118j = false;
            this.f1109a.post(this);
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x005b, code lost:
            if (r7.f1112d == (r0 > r0)) goto L_0x005e;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
                r0 = r7
                boolean r0 = r0.f1118j
                if (r0 == 0) goto L_0x0008
                return
            L_0x0008:
                long r0 = java.lang.System.currentTimeMillis()
                r8 = r0
                r0 = r7
                long r0 = r0.f1116h
                r10 = r0
                r0 = r7
                float r0 = r0.f1114f
                r1 = r7
                float r1 = r1.f1115g
                r2 = r8
                r3 = r10
                long r2 = r2 - r3
                float r2 = (float) r2
                float r1 = r1 * r2
                float r0 = r0 + r1
                r12 = r0
                r0 = r7
                com.android.ex.photo.views.PhotoView r0 = r0.f1109a
                r1 = r12
                r2 = r7
                float r2 = r2.f1110b
                r3 = r7
                float r3 = r3.f1111c
                com.android.p018ex.photo.views.PhotoView.m36658a(r0, r1, r2, r3)
                r0 = r7
                float r0 = r0.f1113e
                r13 = r0
                r0 = r12
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x005e
                r0 = r7
                boolean r0 = r0.f1112d
                r14 = r0
                r0 = r12
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0054
                r0 = 1
                r15 = r0
                goto L_0x0057
            L_0x0054:
                r0 = 0
                r15 = r0
            L_0x0057:
                r0 = r14
                r1 = r15
                if (r0 != r1) goto L_0x0075
            L_0x005e:
                r0 = r7
                com.android.ex.photo.views.PhotoView r0 = r0.f1109a
                r1 = r7
                float r1 = r1.f1113e
                r2 = r7
                float r2 = r2.f1110b
                r3 = r7
                float r3 = r3.f1111c
                com.android.p018ex.photo.views.PhotoView.m36658a(r0, r1, r2, r3)
                r0 = r7
                r0.m36641a()
            L_0x0075:
                r0 = r7
                boolean r0 = r0.f1118j
                if (r0 != 0) goto L_0x0085
                r0 = r7
                com.android.ex.photo.views.PhotoView r0 = r0.f1109a
                r1 = r7
                boolean r0 = r0.post(r1)
            L_0x0085:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.photo.views.PhotoView.RunnableC1566b.run():void");
        }
    }

    /* renamed from: com.android.ex.photo.views.PhotoView$c */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/views/PhotoView$c.class */
    public static class RunnableC1567c implements Runnable {

        /* renamed from: a */
        public final PhotoView f1119a;

        /* renamed from: b */
        public float f1120b;

        /* renamed from: c */
        public float f1121c;

        /* renamed from: d */
        public long f1122d = -1;

        /* renamed from: e */
        public boolean f1123e;

        /* renamed from: f */
        public boolean f1124f;

        public RunnableC1567c(PhotoView photoView) {
            this.f1119a = photoView;
        }

        /* renamed from: a */
        public void m36638a() {
            this.f1123e = false;
            this.f1124f = true;
        }

        /* renamed from: a */
        public boolean m36637a(float f, float f2) {
            if (this.f1123e) {
                return false;
            }
            this.f1122d = -1L;
            this.f1120b = f;
            this.f1121c = f2;
            this.f1124f = false;
            this.f1123e = true;
            this.f1119a.postDelayed(this, 250L);
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0088, code lost:
            if (java.lang.Float.isNaN(r0) != false) goto L_0x008b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00ae, code lost:
            if (java.lang.Float.isNaN(r0) != false) goto L_0x00b1;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 261
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.photo.views.PhotoView.RunnableC1567c.run():void");
        }
    }

    /* renamed from: com.android.ex.photo.views.PhotoView$d */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/views/PhotoView$d.class */
    public static class RunnableC1568d implements Runnable {

        /* renamed from: a */
        public final PhotoView f1125a;

        /* renamed from: b */
        public float f1126b;

        /* renamed from: c */
        public float f1127c;

        /* renamed from: d */
        public float f1128d;

        /* renamed from: e */
        public float f1129e;

        /* renamed from: f */
        public long f1130f = -1;

        /* renamed from: g */
        public boolean f1131g;

        /* renamed from: h */
        public boolean f1132h;

        public RunnableC1568d(PhotoView photoView) {
            this.f1125a = photoView;
        }

        /* renamed from: a */
        public void m36636a() {
            this.f1131g = false;
            this.f1132h = true;
        }

        /* renamed from: a */
        public boolean m36635a(float f, float f2) {
            if (this.f1131g) {
                return false;
            }
            this.f1130f = -1L;
            this.f1126b = f;
            this.f1127c = f2;
            double atan2 = (float) Math.atan2(this.f1127c, this.f1126b);
            this.f1128d = (float) (Math.cos(atan2) * 1000.0d);
            this.f1129e = (float) (Math.sin(atan2) * 1000.0d);
            this.f1132h = false;
            this.f1131g = true;
            this.f1125a.post(this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f1132h) {
                long currentTimeMillis = System.currentTimeMillis();
                long j = this.f1130f;
                float f = j != -1 ? ((float) (currentTimeMillis - j)) / 1000.0f : 0.0f;
                int c = this.f1125a.m36650c(this.f1126b * f, this.f1127c * f);
                this.f1130f = currentTimeMillis;
                float f2 = this.f1128d * f;
                if (Math.abs(this.f1126b) > Math.abs(f2)) {
                    this.f1126b -= f2;
                } else {
                    this.f1126b = 0.0f;
                }
                float f3 = this.f1129e * f;
                if (Math.abs(this.f1127c) > Math.abs(f3)) {
                    this.f1127c -= f3;
                } else {
                    this.f1127c = 0.0f;
                }
                if ((this.f1126b == 0.0f && this.f1127c == 0.0f) || c == 0) {
                    m36636a();
                    this.f1125a.m36644i();
                } else {
                    float f4 = -1000.0f;
                    if (c == 1) {
                        if (this.f1126b > 0.0f) {
                            f4 = 1000.0f;
                        }
                        this.f1128d = f4;
                        this.f1129e = 0.0f;
                        this.f1127c = 0.0f;
                    } else if (c == 2) {
                        this.f1128d = 0.0f;
                        if (this.f1127c > 0.0f) {
                            f4 = 1000.0f;
                        }
                        this.f1129e = f4;
                        this.f1126b = 0.0f;
                    }
                }
                if (!this.f1132h) {
                    this.f1125a.post(this);
                }
            }
        }
    }

    public PhotoView(Context context) {
        super(context);
        this.f1078c = new Matrix();
        this.f1079d = new Matrix();
        this.f1080e = -1;
        this.f1086k = new Rect();
        this.f1093r = true;
        this.f1068B = new RectF();
        this.f1069C = new RectF();
        this.f1070D = new RectF();
        this.f1071E = new float[9];
        m36647f();
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1078c = new Matrix();
        this.f1079d = new Matrix();
        this.f1080e = -1;
        this.f1086k = new Rect();
        this.f1093r = true;
        this.f1068B = new RectF();
        this.f1069C = new RectF();
        this.f1070D = new RectF();
        this.f1071E = new float[9];
        m36647f();
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1078c = new Matrix();
        this.f1079d = new Matrix();
        this.f1080e = -1;
        this.f1086k = new Rect();
        this.f1093r = true;
        this.f1068B = new RectF();
        this.f1069C = new RectF();
        this.f1070D = new RectF();
        this.f1071E = new float[9];
        m36647f();
    }

    /* renamed from: a */
    public void m36668a() {
        this.f1089n = null;
        this.f1090o = null;
        this.f1076a = null;
        this.f1096u.m36641a();
        this.f1096u = null;
        this.f1099x.m36636a();
        this.f1099x = null;
        this.f1100y.m36638a();
        this.f1100y = null;
        this.f1101z.m36643a();
        this.f1101z = null;
        setOnClickListener(null);
        this.f1091p = null;
        this.f1072F = false;
    }

    /* renamed from: a */
    public void m36667a(float f) {
        this.f1088m = f;
    }

    /* renamed from: a */
    public final void m36665a(float f, float f2, float f3) {
        this.f1078c.postRotate(-this.f1067A, getWidth() / 2, getHeight() / 2);
        float min = Math.min(Math.max(f, this.f1097v), this.f1098w * 1.5f) / m36648e();
        this.f1078c.postScale(min, min, f2, f3);
        this.f1078c.postRotate(this.f1067A, getWidth() / 2, getHeight() / 2);
        invalidate();
    }

    /* renamed from: a */
    public final void m36664a(float f, boolean z) {
        if (z) {
            this.f1101z.m36642a(f);
            return;
        }
        this.f1067A += f;
        this.f1078c.postRotate(f, getWidth() / 2, getHeight() / 2);
        invalidate();
    }

    /* renamed from: a */
    public void m36663a(Bitmap bitmap) {
        Drawable drawable = this.f1076a;
        boolean z = drawable instanceof BitmapDrawable;
        boolean z2 = !z;
        boolean z3 = z2;
        if (drawable != null) {
            z3 = z2;
            if (z) {
                if (bitmap != ((BitmapDrawable) drawable).getBitmap()) {
                    z3 = (bitmap == null || (this.f1076a.getIntrinsicWidth() == bitmap.getWidth() && this.f1076a.getIntrinsicHeight() == bitmap.getHeight())) ? false : true;
                    this.f1097v = 0.0f;
                    this.f1076a = null;
                } else {
                    return;
                }
            }
        }
        if (this.f1076a == null && bitmap != null) {
            this.f1076a = new BitmapDrawable(getResources(), bitmap);
        }
        m36656a(z3);
        invalidate();
    }

    /* renamed from: a */
    public void m36662a(Drawable drawable) {
        boolean z;
        Drawable drawable2;
        if (drawable == null || drawable == (drawable2 = this.f1076a)) {
            z = false;
        } else {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.f1076a = drawable;
            this.f1097v = 0.0f;
            this.f1076a.setCallback(this);
            z = true;
        }
        m36656a(z);
        invalidate();
    }

    /* renamed from: a */
    public final void m36656a(boolean z) {
        Drawable drawable = this.f1076a;
        if (drawable != null && this.f1081f) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = this.f1076a.getIntrinsicHeight();
            boolean z2 = (intrinsicWidth < 0 || getWidth() == intrinsicWidth) && (intrinsicHeight < 0 || getHeight() == intrinsicHeight);
            this.f1076a.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            if (z || (this.f1097v == 0.0f && this.f1076a != null && this.f1081f)) {
                m36654b();
                m36651c();
            }
            if (z2 || this.f1078c.isIdentity()) {
                this.f1077b = null;
            } else {
                this.f1077b = this.f1078c;
            }
        }
    }

    /* renamed from: a */
    public void m36655a(boolean z, boolean z2) {
        if (z != this.f1082g) {
            this.f1082g = z;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    public boolean m36666a(float f, float f2) {
        if (!this.f1092q) {
            return false;
        }
        if (this.f1099x.f1131g) {
            return true;
        }
        this.f1078c.getValues(this.f1071E);
        this.f1070D.set(this.f1068B);
        this.f1078c.mapRect(this.f1070D);
        float width = getWidth();
        float f3 = this.f1071E[2];
        RectF rectF = this.f1070D;
        float f4 = rectF.right - rectF.left;
        if (!this.f1092q || f4 <= width || f3 == 0.0f) {
            return false;
        }
        if (width >= f4 + f3) {
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m36661a(MotionEvent motionEvent) {
        boolean z;
        float f;
        float f2;
        if (!this.f1093r || !this.f1092q || !this.f1072F) {
            z = false;
        } else {
            if (!this.f1094s) {
                float e = m36648e();
                float f3 = this.f1097v;
                if (e > f3) {
                    float f4 = f3 / e;
                    float f5 = 1.0f - f4;
                    f2 = ((getWidth() / 2) - (this.f1070D.centerX() * f4)) / f5;
                    f = ((getHeight() / 2) - (f4 * this.f1070D.centerY())) / f5;
                } else {
                    f3 = Math.min(this.f1098w, Math.max(f3, e * 2.0f));
                    float f6 = f3 / e;
                    float width = (getWidth() - this.f1070D.width()) / f6;
                    float height = (getHeight() - this.f1070D.height()) / f6;
                    f2 = this.f1070D.width() <= width * 2.0f ? this.f1070D.centerX() : Math.min(Math.max(this.f1070D.left + width, motionEvent.getX()), this.f1070D.right - width);
                    f = this.f1070D.height() <= 2.0f * height ? this.f1070D.centerY() : Math.min(Math.max(this.f1070D.top + height, motionEvent.getY()), this.f1070D.bottom - height);
                }
                this.f1096u.m36640a(e, f3, f2, f);
                z = true;
            } else {
                z = false;
            }
            this.f1094s = false;
        }
        this.f1072F = false;
        return z;
    }

    /* renamed from: b */
    public final void m36654b() {
        int intrinsicWidth = this.f1076a.getIntrinsicWidth();
        int intrinsicHeight = this.f1076a.getIntrinsicHeight();
        int width = this.f1085j ? f1062L : getWidth();
        int height = this.f1085j ? f1062L : getHeight();
        if (!((intrinsicWidth < 0 || width == intrinsicWidth) && (intrinsicHeight < 0 || height == intrinsicHeight)) || this.f1085j) {
            float f = intrinsicWidth;
            float f2 = intrinsicHeight;
            this.f1068B.set(0.0f, 0.0f, f, f2);
            if (this.f1085j) {
                this.f1069C.set(this.f1086k);
            } else {
                this.f1069C.set(0.0f, 0.0f, width, height);
            }
            float f3 = width / 2;
            float f4 = this.f1088m;
            float f5 = (f * f4) / 2.0f;
            float f6 = height / 2;
            RectF rectF = new RectF(f3 - f5, f6 - ((f2 * f4) / 2.0f), f3 + ((f * f4) / 2.0f), f6 + ((f2 * f4) / 2.0f));
            if (this.f1069C.contains(rectF)) {
                this.f1078c.setRectToRect(this.f1068B, rectF, Matrix.ScaleToFit.CENTER);
            } else {
                this.f1078c.setRectToRect(this.f1068B, this.f1069C, Matrix.ScaleToFit.CENTER);
            }
        } else {
            this.f1078c.reset();
        }
        this.f1079d.set(this.f1078c);
    }

    /* renamed from: b */
    public void m36652b(boolean z) {
        this.f1092q = z;
        if (!this.f1092q) {
            m36645h();
        }
    }

    /* renamed from: b */
    public boolean m36653b(float f, float f2) {
        if (!this.f1092q) {
            return false;
        }
        if (this.f1099x.f1131g) {
            return true;
        }
        this.f1078c.getValues(this.f1071E);
        this.f1070D.set(this.f1068B);
        this.f1078c.mapRect(this.f1070D);
        float width = getWidth();
        float f3 = this.f1071E[2];
        RectF rectF = this.f1070D;
        float f4 = rectF.right - rectF.left;
        if (!this.f1092q || f4 <= width) {
            return false;
        }
        return f3 == 0.0f || width < f4 + f3;
    }

    /* renamed from: c */
    public final int m36650c(float f, float f2) {
        float f3;
        float f4;
        this.f1070D.set(this.f1068B);
        this.f1078c.mapRect(this.f1070D);
        float f5 = 0.0f;
        float f6 = this.f1085j ? this.f1086k.left : 0.0f;
        float width = this.f1085j ? this.f1086k.right : getWidth();
        RectF rectF = this.f1070D;
        float f7 = rectF.left;
        float f8 = rectF.right;
        if (this.f1085j) {
            f3 = Math.max(f6 - f8, Math.min(width - f7, f));
        } else {
            float f9 = width - f6;
            f3 = f8 - f7 < f9 ? f6 + ((f9 - (f8 + f7)) / 2.0f) : Math.max(width - f8, Math.min(f6 - f7, f));
        }
        if (this.f1085j) {
            f5 = this.f1086k.top;
        }
        float height = this.f1085j ? this.f1086k.bottom : getHeight();
        RectF rectF2 = this.f1070D;
        float f10 = rectF2.top;
        float f11 = rectF2.bottom;
        if (this.f1085j) {
            f4 = Math.max(f5 - f11, Math.min(height - f10, f2));
        } else {
            float f12 = height - f5;
            f4 = f11 - f10 < f12 ? f5 + ((f12 - (f11 + f10)) / 2.0f) : Math.max(height - f11, Math.min(f5 - f10, f2));
        }
        this.f1078c.postTranslate(f3, f4);
        invalidate();
        boolean z = f3 == f;
        boolean z2 = f4 == f2;
        if (z && z2) {
            return 3;
        }
        if (z) {
            return 1;
        }
        return z2 ? 2 : 0;
    }

    /* renamed from: c */
    public final void m36651c() {
        int intrinsicWidth = this.f1076a.getIntrinsicWidth();
        int intrinsicHeight = this.f1076a.getIntrinsicHeight();
        int d = this.f1085j ? m36649d() : getWidth();
        int d2 = this.f1085j ? m36649d() : getHeight();
        if (intrinsicWidth >= d || intrinsicHeight >= d2 || this.f1085j) {
            this.f1097v = m36648e();
        } else {
            this.f1097v = 1.0f;
        }
        this.f1098w = Math.max(this.f1097v * 4.0f, 4.0f);
    }

    /* renamed from: d */
    public final int m36649d() {
        int i = this.f1087l;
        if (i <= 0) {
            i = f1062L;
        }
        return i;
    }

    /* renamed from: e */
    public final float m36648e() {
        this.f1078c.getValues(this.f1071E);
        return this.f1071E[0];
    }

    /* renamed from: f */
    public final void m36647f() {
        Context context = getContext();
        if (!f1061K) {
            f1061K = true;
            Resources resources = context.getApplicationContext().getResources();
            f1062L = resources.getDimensionPixelSize(R$dimen.photo_crop_width);
            f1065P = new Paint();
            f1065P.setAntiAlias(true);
            f1065P.setColor(resources.getColor(R$color.photo_crop_dim_color));
            f1065P.setStyle(Paint.Style.FILL);
            f1066Q = new Paint();
            f1066Q.setAntiAlias(true);
            f1066Q.setColor(resources.getColor(R$color.photo_crop_highlight_color));
            f1066Q.setStyle(Paint.Style.STROKE);
            f1066Q.setStrokeWidth(resources.getDimension(R$dimen.photo_crop_stroke_width));
            int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            f1060J = scaledTouchSlop * scaledTouchSlop;
        }
        this.f1089n = new GestureDetectorCompat(context, this, null);
        this.f1090o = new ScaleGestureDetector(context, this);
        this.f1075I = ScaleGestureDetectorCompat.isQuickScaleEnabled(this.f1090o);
        this.f1096u = new RunnableC1566b(this);
        this.f1099x = new RunnableC1568d(this);
        this.f1100y = new RunnableC1567c(this);
        this.f1101z = new RunnableC1565a(this);
    }

    /* renamed from: g */
    public boolean m36646g() {
        return this.f1076a != null;
    }

    /* renamed from: h */
    public void m36645h() {
        this.f1078c.set(this.f1079d);
        invalidate();
    }

    /* renamed from: i */
    public final void m36644i() {
        this.f1070D.set(this.f1068B);
        this.f1078c.mapRect(this.f1070D);
        float f = 0.0f;
        float f2 = this.f1085j ? this.f1086k.left : 0.0f;
        float width = this.f1085j ? this.f1086k.right : getWidth();
        RectF rectF = this.f1070D;
        float f3 = rectF.left;
        float f4 = rectF.right;
        float f5 = width - f2;
        float f6 = f4 - f3 < f5 ? f2 + ((f5 - (f4 + f3)) / 2.0f) : f3 > f2 ? f2 - f3 : f4 < width ? width - f4 : 0.0f;
        float f7 = this.f1085j ? this.f1086k.top : 0.0f;
        float height = this.f1085j ? this.f1086k.bottom : getHeight();
        RectF rectF2 = this.f1070D;
        float f8 = rectF2.top;
        float f9 = rectF2.bottom;
        float f10 = height - f7;
        if (f9 - f8 < f10) {
            f = f7 + ((f10 - (f9 + f8)) / 2.0f);
        } else if (f8 > f7) {
            f = f7 - f8;
        } else if (f9 < height) {
            f = height - f9;
        }
        if (Math.abs(f6) > 20.0f || Math.abs(f) > 20.0f) {
            this.f1100y.m36637a(f6, f);
            return;
        }
        this.f1078c.postTranslate(f6, f);
        invalidate();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (this.f1076a == drawable) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.f1072F = true;
        if (!this.f1075I) {
            return m36661a(motionEvent);
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        boolean z;
        int action = motionEvent.getAction();
        if (action == 0) {
            z = false;
            if (this.f1075I) {
                this.f1073G = motionEvent.getX();
                this.f1074H = motionEvent.getY();
                z = false;
            }
        } else if (action == 1) {
            z = false;
            if (this.f1075I) {
                z = m36661a(motionEvent);
            }
        } else if (action != 2) {
            z = false;
        } else {
            z = false;
            if (this.f1075I) {
                z = false;
                if (this.f1072F) {
                    int x = (int) (motionEvent.getX() - this.f1073G);
                    int y = (int) (motionEvent.getY() - this.f1074H);
                    z = false;
                    if ((x * x) + (y * y) > f1060J) {
                        this.f1072F = false;
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (!this.f1092q) {
            return true;
        }
        this.f1099x.m36636a();
        this.f1100y.m36638a();
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1076a != null) {
            int saveCount = canvas.getSaveCount();
            canvas.save();
            Matrix matrix = this.f1077b;
            if (matrix != null) {
                canvas.concat(matrix);
            }
            this.f1076a.draw(canvas);
            canvas.restoreToCount(saveCount);
            if (this.f1083h != null) {
                Bitmap bitmap = this.f1084i ? f1063N : f1064O;
                canvas.drawBitmap(bitmap, (getWidth() - bitmap.getWidth()) / 2, (getHeight() - bitmap.getHeight()) / 2, (Paint) null);
            }
            this.f1070D.set(this.f1076a.getBounds());
            Matrix matrix2 = this.f1077b;
            if (matrix2 != null) {
                matrix2.mapRect(this.f1070D);
            }
            if (this.f1085j) {
                int saveCount2 = canvas.getSaveCount();
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), f1065P);
                canvas.save();
                canvas.clipRect(this.f1086k);
                Matrix matrix3 = this.f1077b;
                if (matrix3 != null) {
                    canvas.concat(matrix3);
                }
                this.f1076a.draw(canvas);
                canvas.restoreToCount(saveCount2);
                canvas.drawRect(this.f1086k, f1066Q);
            }
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!this.f1092q || this.f1096u.f1117i) {
            return true;
        }
        this.f1099x.m36635a(f, f2);
        return true;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f1081f = true;
        int width = getWidth();
        int height = getHeight();
        if (this.f1085j) {
            this.f1087l = Math.min(f1062L, Math.min(width, height));
            int i5 = this.f1087l;
            int i6 = (width - i5) / 2;
            int i7 = (height - i5) / 2;
            this.f1086k.set(i6, i7, i6 + i5, i5 + i7);
        }
        m36656a(z);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f1080e;
        if (i3 != -1) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE));
            setMeasuredDimension(getMeasuredWidth(), this.f1080e);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        if (!this.f1092q) {
            return true;
        }
        this.f1095t = false;
        m36665a(m36648e() * scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        if (!this.f1092q) {
            return true;
        }
        this.f1096u.m36641a();
        this.f1095t = true;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        float e = m36648e();
        float f = this.f1098w;
        if (e > f) {
            float f2 = 1.0f / (1.0f - (f / e));
            float f3 = 1.0f - f2;
            float width = getWidth() / 2;
            float height = getHeight() / 2;
            RectF rectF = this.f1070D;
            float f4 = rectF.left * f3;
            float f5 = rectF.top * f3;
            float width2 = (getWidth() * f2) + (this.f1070D.right * f3);
            float height2 = (getHeight() * f2) + (this.f1070D.bottom * f3);
            this.f1096u.m36640a(e, this.f1098w, width2 > f4 ? (width2 + f4) / 2.0f : Math.min(Math.max(width2, width), f4), height2 > f5 ? (height2 + f5) / 2.0f : Math.min(Math.max(height2, height), f5));
        }
        if (this.f1092q && this.f1095t) {
            this.f1094s = true;
            m36645h();
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!this.f1092q || this.f1096u.f1117i) {
            return true;
        }
        m36650c(-f, -f2);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        View.OnClickListener onClickListener = this.f1091p;
        if (onClickListener != null && !this.f1095t) {
            onClickListener.onClick(this);
        }
        this.f1095t = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ScaleGestureDetector scaleGestureDetector = this.f1090o;
        if (scaleGestureDetector == null || this.f1089n == null) {
            return true;
        }
        scaleGestureDetector.onTouchEvent(motionEvent);
        this.f1089n.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if ((action != 1 && action != 3) || this.f1099x.f1131g) {
            return true;
        }
        m36644i();
        return true;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f1091p = onClickListener;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.f1076a == drawable || super.verifyDrawable(drawable);
    }
}
