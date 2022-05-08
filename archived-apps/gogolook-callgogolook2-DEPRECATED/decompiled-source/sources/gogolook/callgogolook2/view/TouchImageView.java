package gogolook.callgogolook2.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView.class */
public class TouchImageView extends ImageView {

    /* renamed from: a */
    public float f13142a;

    /* renamed from: b */
    public Matrix f13143b;

    /* renamed from: c */
    public Matrix f13144c;

    /* renamed from: d */
    public EnumC5304i f13145d;

    /* renamed from: e */
    public float f13146e;

    /* renamed from: f */
    public float f13147f;

    /* renamed from: g */
    public float f13148g;

    /* renamed from: h */
    public float f13149h;

    /* renamed from: i */
    public float[] f13150i;

    /* renamed from: j */
    public Context f13151j;

    /* renamed from: k */
    public RunnableC5299d f13152k;

    /* renamed from: l */
    public ImageView.ScaleType f13153l;

    /* renamed from: m */
    public boolean f13154m;

    /* renamed from: n */
    public boolean f13155n;

    /* renamed from: o */
    public C5305j f13156o;

    /* renamed from: p */
    public int f13157p;

    /* renamed from: q */
    public int f13158q;

    /* renamed from: r */
    public int f13159r;

    /* renamed from: s */
    public int f13160s;

    /* renamed from: t */
    public float f13161t;

    /* renamed from: u */
    public float f13162u;

    /* renamed from: v */
    public float f13163v;

    /* renamed from: w */
    public float f13164w;

    /* renamed from: x */
    public ScaleGestureDetector f13165x;

    /* renamed from: y */
    public GestureDetector f13166y;

    /* renamed from: z */
    public GestureDetector.OnDoubleTapListener f13167z = null;

    /* renamed from: A */
    public View.OnTouchListener f13136A = null;

    /* renamed from: B */
    public AbstractC5301f f13137B = null;

    /* renamed from: C */
    public boolean f13138C = false;

    /* renamed from: D */
    public boolean f13139D = false;

    /* renamed from: E */
    public float f13140E = -1.0f;

    /* renamed from: F */
    public float f13141F = -1.0f;

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$a.class */
    public static /* synthetic */ class C5296a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13168a = new int[ImageView.ScaleType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f13168a[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13168a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13168a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13168a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13168a[ImageView.ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @TargetApi(9)
    /* renamed from: gogolook.callgogolook2.view.TouchImageView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$b.class */
    public class C5297b {

        /* renamed from: a */
        public OverScroller f13169a;

        public C5297b(TouchImageView touchImageView, Context context) {
            this.f13169a = new OverScroller(context);
        }

        /* renamed from: a */
        public void m25774a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.f13169a.fling(i, i2, i3, i4, i5, i6, i7, i8);
        }

        /* renamed from: a */
        public void m25773a(boolean z) {
            this.f13169a.forceFinished(z);
        }

        /* renamed from: a */
        public boolean m25775a() {
            this.f13169a.computeScrollOffset();
            return this.f13169a.computeScrollOffset();
        }

        /* renamed from: b */
        public int m25772b() {
            return this.f13169a.getCurrX();
        }

        /* renamed from: c */
        public int m25771c() {
            return this.f13169a.getCurrY();
        }

        /* renamed from: d */
        public boolean m25770d() {
            return this.f13169a.isFinished();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$c.class */
    public class RunnableC5298c implements Runnable {

        /* renamed from: b */
        public float f13171b;

        /* renamed from: c */
        public float f13172c;

        /* renamed from: d */
        public float f13173d;

        /* renamed from: e */
        public float f13174e;

        /* renamed from: f */
        public boolean f13175f;

        /* renamed from: h */
        public PointF f13177h;

        /* renamed from: i */
        public PointF f13178i;

        /* renamed from: g */
        public AccelerateDecelerateInterpolator f13176g = new AccelerateDecelerateInterpolator();

        /* renamed from: a */
        public long f13170a = System.currentTimeMillis();

        public RunnableC5298c(float f, float f2, float f3, boolean z) {
            TouchImageView.this.m25818a(EnumC5304i.ANIMATE_ZOOM);
            this.f13171b = TouchImageView.this.f13142a;
            this.f13172c = f;
            this.f13175f = z;
            PointF a = TouchImageView.this.m25822a(f2, f3, false);
            this.f13173d = a.x;
            this.f13174e = a.y;
            this.f13177h = TouchImageView.this.m25825a(this.f13173d, this.f13174e);
            this.f13178i = new PointF(TouchImageView.this.f13157p / 2, TouchImageView.this.f13158q / 2);
        }

        /* renamed from: a */
        public final double m25768a(float f) {
            float f2 = this.f13171b;
            return (f2 + (f * (this.f13172c - f2))) / TouchImageView.this.f13142a;
        }

        /* renamed from: a */
        public final float m25769a() {
            return this.f13176g.getInterpolation(Math.min(1.0f, ((float) (System.currentTimeMillis() - this.f13170a)) / 500.0f));
        }

        /* renamed from: b */
        public final void m25767b(float f) {
            PointF pointF = this.f13177h;
            float f2 = pointF.x;
            PointF pointF2 = this.f13178i;
            float f3 = pointF2.x;
            float f4 = pointF.y;
            float f5 = pointF2.y;
            PointF a = TouchImageView.this.m25825a(this.f13173d, this.f13174e);
            TouchImageView.this.f13143b.postTranslate((f2 + ((f3 - f2) * f)) - a.x, (f4 + (f * (f5 - f4))) - a.y);
        }

        @Override // java.lang.Runnable
        public void run() {
            float a = m25769a();
            TouchImageView.this.m25826a(m25768a(a), this.f13173d, this.f13174e, this.f13175f);
            m25767b(a);
            TouchImageView.this.m25807b();
            TouchImageView touchImageView = TouchImageView.this;
            touchImageView.setImageMatrix(touchImageView.f13143b);
            if (TouchImageView.this.f13137B != null) {
                TouchImageView.this.f13137B.m25765a();
            }
            if (a < 1.0f) {
                TouchImageView.this.m25809a(this);
            } else {
                TouchImageView.this.m25818a(EnumC5304i.NONE);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$d.class */
    public class RunnableC5299d implements Runnable {

        /* renamed from: a */
        public C5297b f13180a;

        /* renamed from: b */
        public int f13181b;

        /* renamed from: c */
        public int f13182c;

        public RunnableC5299d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            TouchImageView.this.m25818a(EnumC5304i.FLING);
            this.f13180a = new C5297b(TouchImageView.this, TouchImageView.this.f13151j);
            TouchImageView.this.f13143b.getValues(TouchImageView.this.f13150i);
            int i7 = (int) TouchImageView.this.f13150i[2];
            int i8 = (int) TouchImageView.this.f13150i[5];
            if (TouchImageView.this.m25797f() > TouchImageView.this.f13157p) {
                i4 = TouchImageView.this.f13157p - ((int) TouchImageView.this.m25797f());
                i3 = 0;
            } else {
                i3 = i7;
                i4 = i7;
            }
            if (TouchImageView.this.m25799e() > TouchImageView.this.f13158q) {
                i6 = TouchImageView.this.f13158q - ((int) TouchImageView.this.m25799e());
                i5 = 0;
            } else {
                i6 = i8;
                i5 = i6;
            }
            this.f13180a.m25774a(i7, i8, i, i2, i4, i3, i6, i5);
            this.f13181b = i7;
            this.f13182c = i8;
        }

        /* renamed from: a */
        public void m25766a() {
            if (this.f13180a != null) {
                TouchImageView.this.m25818a(EnumC5304i.NONE);
                this.f13180a.m25773a(true);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TouchImageView.this.f13137B != null) {
                TouchImageView.this.f13137B.m25765a();
            }
            if (this.f13180a.m25770d()) {
                this.f13180a = null;
            } else if (this.f13180a.m25775a()) {
                int b = this.f13180a.m25772b();
                int c = this.f13180a.m25771c();
                int i = this.f13181b;
                int i2 = this.f13182c;
                this.f13181b = b;
                this.f13182c = c;
                TouchImageView.this.f13143b.postTranslate(b - i, c - i2);
                TouchImageView.this.m25803c();
                TouchImageView touchImageView = TouchImageView.this;
                touchImageView.setImageMatrix(touchImageView.f13143b);
                TouchImageView.this.m25809a(this);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$e.class */
    public class C5300e extends GestureDetector.SimpleOnGestureListener {
        public C5300e() {
        }

        public /* synthetic */ C5300e(TouchImageView touchImageView, C5296a aVar) {
            this();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean z = false;
            if (!TouchImageView.this.f13138C) {
                return false;
            }
            if (TouchImageView.this.f13167z != null) {
                z = TouchImageView.this.f13167z.onDoubleTap(motionEvent);
            }
            if (TouchImageView.this.f13145d == EnumC5304i.NONE) {
                TouchImageView.this.m25809a(new RunnableC5298c(TouchImageView.this.f13142a == TouchImageView.this.f13146e ? TouchImageView.this.f13147f : TouchImageView.this.f13146e, motionEvent.getX(), motionEvent.getY(), false));
                z = true;
            }
            return z;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (TouchImageView.this.f13167z != null) {
                return TouchImageView.this.f13167z.onDoubleTapEvent(motionEvent);
            }
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (TouchImageView.this.f13152k != null) {
                TouchImageView.this.f13152k.m25766a();
            }
            TouchImageView touchImageView = TouchImageView.this;
            touchImageView.f13152k = new RunnableC5299d((int) f, (int) f2);
            TouchImageView touchImageView2 = TouchImageView.this;
            touchImageView2.m25809a(touchImageView2.f13152k);
            return super.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            TouchImageView.this.performLongClick();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return TouchImageView.this.f13167z != null ? TouchImageView.this.f13167z.onSingleTapConfirmed(motionEvent) : TouchImageView.this.performClick();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$f.class */
    public interface AbstractC5301f {
        /* renamed from: a */
        void m25765a();
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$g.class */
    public class View$OnTouchListenerC5302g implements View.OnTouchListener {

        /* renamed from: a */
        public PointF f13185a;

        public View$OnTouchListenerC5302g() {
            this.f13185a = new PointF();
        }

        public /* synthetic */ View$OnTouchListenerC5302g(TouchImageView touchImageView, C5296a aVar) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
            if (r0 != 6) goto L_0x0142;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
            /*
                Method dump skipped, instructions count: 384
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.view.TouchImageView.View$OnTouchListenerC5302g.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$h.class */
    public class C5303h extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public C5303h() {
        }

        public /* synthetic */ C5303h(TouchImageView touchImageView, C5296a aVar) {
            this();
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            TouchImageView.this.m25826a(scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), true);
            if (TouchImageView.this.f13137B == null) {
                return true;
            }
            TouchImageView.this.f13137B.m25765a();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            TouchImageView.this.m25818a(EnumC5304i.ZOOM);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            super.onScaleEnd(scaleGestureDetector);
            TouchImageView.this.m25818a(EnumC5304i.NONE);
            float f = TouchImageView.this.f13142a;
            boolean z = true;
            if (TouchImageView.this.f13142a > TouchImageView.this.f13147f) {
                f = TouchImageView.this.f13147f;
            } else if (TouchImageView.this.f13142a < TouchImageView.this.f13146e) {
                f = TouchImageView.this.f13146e;
            } else {
                z = false;
            }
            if (z) {
                TouchImageView touchImageView = TouchImageView.this;
                TouchImageView.this.m25809a(new RunnableC5298c(f, touchImageView.f13157p / 2, TouchImageView.this.f13158q / 2, true));
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$i.class */
    public enum EnumC5304i {
        NONE,
        DRAG,
        ZOOM,
        FLING,
        ANIMATE_ZOOM
    }

    /* renamed from: gogolook.callgogolook2.view.TouchImageView$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TouchImageView$j.class */
    public class C5305j {

        /* renamed from: a */
        public float f13194a;

        /* renamed from: b */
        public float f13195b;

        /* renamed from: c */
        public float f13196c;

        /* renamed from: d */
        public ImageView.ScaleType f13197d;

        public C5305j(TouchImageView touchImageView, float f, float f2, float f3, ImageView.ScaleType scaleType) {
            this.f13194a = f;
            this.f13195b = f2;
            this.f13196c = f3;
            this.f13197d = scaleType;
        }
    }

    public TouchImageView(Context context) {
        super(context);
        m25819a(context);
    }

    public TouchImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25819a(context);
    }

    public TouchImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25819a(context);
    }

    /* renamed from: a */
    public final float m25824a(float f, float f2, float f3) {
        if (f3 <= f2) {
            f = 0.0f;
        }
        return f;
    }

    /* renamed from: a */
    public final int m25820a(int i, int i2, int i3) {
        if (i == Integer.MIN_VALUE) {
            i2 = Math.min(i3, i2);
        } else if (i == 0) {
            i2 = i3;
        }
        return i2;
    }

    /* renamed from: a */
    public final PointF m25825a(float f, float f2) {
        this.f13143b.getValues(this.f13150i);
        return new PointF(this.f13150i[2] + (m25797f() * (f / getDrawable().getIntrinsicWidth())), this.f13150i[5] + (m25799e() * (f2 / getDrawable().getIntrinsicHeight())));
    }

    /* renamed from: a */
    public final PointF m25822a(float f, float f2, boolean z) {
        this.f13143b.getValues(this.f13150i);
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float[] fArr = this.f13150i;
        float f3 = fArr[2];
        float f4 = fArr[5];
        float f5 = ((f - f3) * intrinsicWidth) / m25797f();
        float e = ((f2 - f4) * intrinsicHeight) / m25799e();
        float f6 = f5;
        float f7 = e;
        if (z) {
            f6 = Math.min(Math.max(f5, 0.0f), intrinsicWidth);
            f7 = Math.min(Math.max(e, 0.0f), intrinsicHeight);
        }
        return new PointF(f6, f7);
    }

    /* renamed from: a */
    public final void m25827a() {
        float f;
        float f2;
        float f3;
        Drawable drawable = getDrawable();
        if (drawable != null && drawable.getIntrinsicWidth() != 0 && drawable.getIntrinsicHeight() != 0 && this.f13143b != null && this.f13144c != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            float f4 = intrinsicWidth;
            float f5 = this.f13157p / f4;
            float f6 = intrinsicHeight;
            float f7 = this.f13158q / f6;
            int i = C5296a.f13168a[this.f13153l.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        f2 = f5;
                        f3 = f7;
                        if (i != 4) {
                            if (i == 5) {
                                f = f5;
                            } else {
                                throw new UnsupportedOperationException("TouchImageView does not support FIT_START or FIT_END");
                            }
                        }
                    } else {
                        f2 = Math.min(1.0f, Math.min(f5, f7));
                        f3 = f2;
                    }
                    f = Math.min(f2, f3);
                } else {
                    f = Math.max(f5, f7);
                }
                f7 = f;
            } else {
                f = 1.0f;
                f7 = 1.0f;
            }
            int i2 = this.f13157p;
            float f8 = i2 - (f * f4);
            int i3 = this.f13158q;
            float f9 = i3 - (f7 * f6);
            this.f13161t = i2 - f8;
            this.f13162u = i3 - f9;
            if (m25793h() || this.f13154m) {
                if (this.f13163v == 0.0f || this.f13164w == 0.0f) {
                    m25789j();
                }
                this.f13144c.getValues(this.f13150i);
                float[] fArr = this.f13150i;
                float f10 = this.f13161t / f4;
                float f11 = this.f13142a;
                fArr[0] = f10 * f11;
                fArr[4] = (this.f13162u / f6) * f11;
                float f12 = fArr[2];
                float f13 = fArr[5];
                m25821a(2, f12, this.f13163v * f11, m25797f(), this.f13159r, this.f13157p, intrinsicWidth);
                m25821a(5, f13, this.f13164w * this.f13142a, m25799e(), this.f13160s, this.f13158q, intrinsicHeight);
                this.f13143b.setValues(this.f13150i);
            } else {
                this.f13143b.setScale(f, f7);
                float f14 = this.f13140E;
                if (0.0f <= f14 && f14 <= 1.0f) {
                    float f15 = this.f13141F;
                    if (0.0f <= f15 && f15 <= 1.0f) {
                        this.f13143b.postTranslate(-((f14 * m25797f()) - (this.f13157p * 0.5f)), -((this.f13141F * m25799e()) - (this.f13158q * 0.5f)));
                        this.f13142a = 1.0f;
                    }
                }
                this.f13143b.postTranslate(f8 / 2.0f, f9 / 2.0f);
                this.f13142a = 1.0f;
            }
            m25803c();
            setImageMatrix(this.f13143b);
        }
    }

    /* renamed from: a */
    public final void m25826a(double d, float f, float f2, boolean z) {
        float f3;
        float f4;
        if (z) {
            f4 = this.f13148g;
            f3 = this.f13149h;
        } else {
            f4 = this.f13146e;
            f3 = this.f13147f;
        }
        float f5 = this.f13142a;
        this.f13142a = (float) (f5 * d);
        float f6 = this.f13142a;
        if (f6 > f3) {
            this.f13142a = f3;
            d = f3 / f5;
        } else if (f6 < f4) {
            this.f13142a = f4;
            d = f4 / f5;
        }
        float f7 = (float) d;
        this.f13143b.postScale(f7, f7, f, f2);
        m25807b();
    }

    /* renamed from: a */
    public void m25823a(float f, float f2, float f3, ImageView.ScaleType scaleType) {
        if (!this.f13155n) {
            this.f13156o = new C5305j(this, f, f2, f3, scaleType);
            return;
        }
        if (scaleType != this.f13153l) {
            setScaleType(scaleType);
        }
        m25791i();
        m25826a(f, this.f13157p / 2, this.f13158q / 2, true);
        this.f13143b.getValues(this.f13150i);
        this.f13150i[2] = -((f2 * m25797f()) - (this.f13157p * 0.5f));
        this.f13150i[5] = -((f3 * m25799e()) - (this.f13158q * 0.5f));
        this.f13143b.setValues(this.f13150i);
        m25803c();
        setImageMatrix(this.f13143b);
    }

    /* renamed from: a */
    public final void m25821a(int i, float f, float f2, float f3, int i2, int i3, int i4) {
        float f4 = i3;
        if (f3 < f4) {
            float[] fArr = this.f13150i;
            fArr[i] = (f4 - (i4 * fArr[0])) * 0.5f;
        } else if (f > 0.0f) {
            this.f13150i[i] = -((f3 - f4) * 0.5f);
        } else {
            this.f13150i[i] = -((((Math.abs(f) + (i2 * 0.5f)) / f2) * f3) - (f4 * 0.5f));
        }
    }

    /* renamed from: a */
    public final void m25819a(Context context) {
        super.setClickable(true);
        this.f13151j = context;
        this.f13165x = new ScaleGestureDetector(context, new C5303h(this, null));
        this.f13166y = new GestureDetector(context, new C5300e(this, null));
        this.f13143b = new Matrix();
        this.f13144c = new Matrix();
        this.f13150i = new float[9];
        this.f13142a = 1.0f;
        if (this.f13153l == null) {
            this.f13153l = ImageView.ScaleType.FIT_CENTER;
        }
        this.f13146e = 1.0f;
        this.f13147f = 3.0f;
        this.f13148g = this.f13146e * 0.75f;
        this.f13149h = this.f13147f * 1.25f;
        setImageMatrix(this.f13143b);
        setScaleType(ImageView.ScaleType.MATRIX);
        m25818a(EnumC5304i.NONE);
        this.f13155n = false;
        super.setOnTouchListener(new View$OnTouchListenerC5302g(this, null));
    }

    /* renamed from: a */
    public final void m25818a(EnumC5304i iVar) {
        this.f13145d = iVar;
    }

    /* renamed from: a */
    public void m25817a(TouchImageView touchImageView) {
        PointF g = touchImageView.m25795g();
        m25823a(touchImageView.m25801d(), g.x, g.y, touchImageView.getScaleType());
    }

    @TargetApi(16)
    /* renamed from: a */
    public final void m25809a(Runnable runnable) {
        postOnAnimation(runnable);
    }

    /* renamed from: a */
    public void m25808a(boolean z) {
        this.f13139D = z;
    }

    /* renamed from: b */
    public final float m25806b(float f, float f2, float f3) {
        float f4;
        float f5;
        if (f3 <= f2) {
            f4 = f2 - f3;
            f5 = 0.0f;
        } else {
            f5 = f2 - f3;
            f4 = 0.0f;
        }
        if (f < f5) {
            return (-f) + f5;
        }
        if (f > f4) {
            return (-f) + f4;
        }
        return 0.0f;
    }

    /* renamed from: b */
    public final void m25807b() {
        m25803c();
        this.f13143b.getValues(this.f13150i);
        float f = m25797f();
        int i = this.f13157p;
        if (f < i) {
            this.f13150i[2] = (i - m25797f()) / 2.0f;
        }
        float e = m25799e();
        int i2 = this.f13158q;
        if (e < i2) {
            this.f13150i[5] = (i2 - m25799e()) / 2.0f;
        }
        this.f13143b.setValues(this.f13150i);
    }

    /* renamed from: b */
    public void m25804b(boolean z) {
        this.f13138C = z;
    }

    /* renamed from: c */
    public final void m25803c() {
        this.f13143b.getValues(this.f13150i);
        float[] fArr = this.f13150i;
        float f = fArr[2];
        float f2 = fArr[5];
        float b = m25806b(f, this.f13157p, m25797f());
        float b2 = m25806b(f2, this.f13158q, m25799e());
        if (b != 0.0f || b2 != 0.0f) {
            this.f13143b.postTranslate(b, b2);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        this.f13143b.getValues(this.f13150i);
        float f = this.f13150i[2];
        if (m25797f() < this.f13157p) {
            return false;
        }
        if (f < -1.0f || i >= 0) {
            return (Math.abs(f) + ((float) this.f13157p)) + 1.0f < m25797f() || i <= 0;
        }
        return false;
    }

    /* renamed from: d */
    public float m25801d() {
        return this.f13142a;
    }

    /* renamed from: e */
    public final float m25799e() {
        return this.f13162u * this.f13142a;
    }

    /* renamed from: f */
    public final float m25797f() {
        return this.f13161t * this.f13142a;
    }

    /* renamed from: g */
    public PointF m25795g() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        PointF a = m25822a(this.f13157p / 2, this.f13158q / 2, true);
        a.x /= intrinsicWidth;
        a.y /= intrinsicHeight;
        return a;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f13153l;
    }

    /* renamed from: h */
    public boolean m25793h() {
        return this.f13142a != 1.0f;
    }

    /* renamed from: i */
    public void m25791i() {
        this.f13142a = 1.0f;
        m25827a();
    }

    /* renamed from: j */
    public final void m25789j() {
        Matrix matrix = this.f13143b;
        if (matrix != null && this.f13158q != 0 && this.f13157p != 0) {
            matrix.getValues(this.f13150i);
            this.f13144c.setValues(this.f13150i);
            this.f13164w = this.f13162u;
            this.f13163v = this.f13161t;
            this.f13160s = this.f13158q;
            this.f13159r = this.f13157p;
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m25789j();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        this.f13155n = true;
        this.f13154m = true;
        this.f13140E = -1.0f;
        this.f13141F = -1.0f;
        C5305j jVar = this.f13156o;
        if (jVar != null) {
            m25823a(jVar.f13194a, jVar.f13195b, jVar.f13196c, jVar.f13197d);
            this.f13156o = null;
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        Drawable drawable = getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() == 0 || drawable.getIntrinsicHeight() == 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.f13157p = m25820a(mode, size, intrinsicWidth);
        this.f13158q = m25820a(mode2, size2, intrinsicHeight);
        setMeasuredDimension(this.f13157p, this.f13158q);
        m25827a();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f13142a = bundle.getFloat("saveScale");
            this.f13150i = bundle.getFloatArray("matrix");
            this.f13144c.setValues(this.f13150i);
            this.f13164w = bundle.getFloat("matchViewHeight");
            this.f13163v = bundle.getFloat("matchViewWidth");
            this.f13160s = bundle.getInt("viewHeight");
            this.f13159r = bundle.getInt("viewWidth");
            this.f13154m = bundle.getBoolean("imageRendered");
            super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putFloat("saveScale", this.f13142a);
        bundle.putFloat("matchViewHeight", this.f13162u);
        bundle.putFloat("matchViewWidth", this.f13161t);
        bundle.putInt("viewWidth", this.f13157p);
        bundle.putInt("viewHeight", this.f13158q);
        this.f13143b.getValues(this.f13150i);
        bundle.putFloatArray("matrix", this.f13150i);
        bundle.putBoolean("imageRendered", this.f13154m);
        return bundle;
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m25789j();
        m25827a();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m25789j();
        m25827a();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        m25789j();
        m25827a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m25789j();
        m25827a();
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f13136A = onTouchListener;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.FIT_START || scaleType == ImageView.ScaleType.FIT_END) {
            throw new UnsupportedOperationException("TouchImageView does not support FIT_START or FIT_END");
        }
        ImageView.ScaleType scaleType2 = ImageView.ScaleType.MATRIX;
        if (scaleType == scaleType2) {
            super.setScaleType(scaleType2);
            return;
        }
        this.f13153l = scaleType;
        if (this.f13155n) {
            m25817a(this);
        }
    }
}
