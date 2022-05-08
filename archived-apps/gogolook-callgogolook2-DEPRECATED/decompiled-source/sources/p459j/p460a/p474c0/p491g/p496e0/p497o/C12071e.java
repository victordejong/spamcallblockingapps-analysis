package p459j.p460a.p474c0.p491g.p496e0.p497o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.core.internal.view.SupportMenu;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import gogolook.callgogolook2.R$dimen;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: j.a.c0.g.e0.o.e */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e.class */
public class C12071e extends AbstractC12068c implements AbstractC12064a {

    /* renamed from: A */
    public int f27076A;

    /* renamed from: B */
    public int f27077B;

    /* renamed from: C */
    public RectF f27078C;

    /* renamed from: D */
    public RectF f27079D;

    /* renamed from: E */
    public Point f27080E;

    /* renamed from: F */
    public Point f27081F;

    /* renamed from: G */
    public int f27082G;

    /* renamed from: H */
    public boolean f27083H;

    /* renamed from: I */
    public int f27084I;

    /* renamed from: J */
    public int f27085J;

    /* renamed from: K */
    public int f27086K;

    /* renamed from: L */
    public boolean f27087L;

    /* renamed from: M */
    public boolean f27088M;

    /* renamed from: N */
    public int f27089N;

    /* renamed from: O */
    public Point f27090O;

    /* renamed from: P */
    public boolean f27091P;

    /* renamed from: Q */
    public C12078g f27092Q;

    /* renamed from: R */
    public C12078g f27093R;

    /* renamed from: S */
    public volatile boolean f27094S;

    /* renamed from: U */
    public AbstractC12079h f27096U;

    /* renamed from: g */
    public volatile int f27097g;

    /* renamed from: k */
    public Point f27101k;

    /* renamed from: l */
    public int f27102l;

    /* renamed from: m */
    public int f27103m;

    /* renamed from: n */
    public int f27104n;

    /* renamed from: o */
    public List<C12069d> f27105o;

    /* renamed from: p */
    public C12069d f27106p;

    /* renamed from: q */
    public Paint f27107q;

    /* renamed from: r */
    public Paint f27108r;

    /* renamed from: s */
    public C12069d f27109s;

    /* renamed from: t */
    public Paint f27110t;

    /* renamed from: u */
    public int f27111u;

    /* renamed from: v */
    public int f27112v;

    /* renamed from: w */
    public int f27113w;

    /* renamed from: x */
    public int f27114x;

    /* renamed from: y */
    public int f27115y;

    /* renamed from: z */
    public int f27116z;

    /* renamed from: h */
    public C12080i f27098h = new C12080i();

    /* renamed from: i */
    public Runnable f27099i = new RunnableC12076e(this, null);

    /* renamed from: j */
    public Animation.AnimationListener f27100j = new animationAnimation$AnimationListenerC12077f(this, null);

    /* renamed from: T */
    public Handler f27095T = new HandlerC12072a();

    /* renamed from: j.a.c0.g.e0.o.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$a.class */
    public class HandlerC12072a extends Handler {
        public HandlerC12072a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i == 1 && C12071e.this.f27096U != null) {
                    C12071e.this.f27096U.m7222a();
                }
            } else if (C12071e.this.f27096U != null) {
                C12071e.this.f27096U.m7221a(C12071e.this.f27101k.x, C12071e.this.f27101k.y);
            }
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$b  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$b.class */
    public class animationAnimation$AnimationListenerC12073b implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC12073b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C12071e.this.f27093R = null;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$c.class */
    public class C12074c extends AnimatorListenerAdapter {
        public C12074c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C12071e.this.m7233h();
            C12071e.this.m7238d(false);
            C12071e.this.f27058a.setAlpha(1.0f);
            super.onAnimationEnd(animator);
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$d  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$d.class */
    public class animationAnimation$AnimationListenerC12075d implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC12075d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C12071e.this.f27092Q = null;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$e.class */
    public class RunnableC12076e implements Runnable {
        public RunnableC12076e() {
        }

        public /* synthetic */ RunnableC12076e(C12071e eVar, HandlerC12072a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C12071e.this.f27097g != 8) {
                C12071e.this.m7300c(false);
                C12071e eVar = C12071e.this;
                eVar.f27114x = eVar.f27116z;
                C12071e eVar2 = C12071e.this;
                eVar2.f27115y = eVar2.f27076A;
                C12071e.this.f27097g = 0;
                C12071e eVar3 = C12071e.this;
                eVar3.m7244c(eVar3.f27114x, C12071e.this.f27115y);
                C12071e.this.f27083H = false;
            }
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$f  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$f.class */
    public class animationAnimation$AnimationListenerC12077f implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC12077f() {
        }

        public /* synthetic */ animationAnimation$AnimationListenerC12077f(C12071e eVar, HandlerC12072a aVar) {
            this();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (!C12071e.this.f27094S) {
                C12071e eVar = C12071e.this;
                eVar.f27058a.postDelayed(eVar.f27099i, 200L);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$g */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$g.class */
    public class C12078g extends Animation {

        /* renamed from: a */
        public float f27123a;

        /* renamed from: b */
        public float f27124b;

        /* renamed from: c */
        public float f27125c;

        public C12078g(C12071e eVar, float f, float f2) {
            setFillAfter(true);
            setInterpolator(new LinearInterpolator());
            this.f27123a = f;
            this.f27124b = f2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            float f2 = this.f27123a;
            this.f27125c = f2 + ((this.f27124b - f2) * f);
        }

        /* renamed from: d */
        public float m7223d() {
            return this.f27125c;
        }
    }

    /* renamed from: j.a.c0.g.e0.o.e$h */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$h.class */
    public interface AbstractC12079h {
        /* renamed from: a */
        void m7222a();

        /* renamed from: a */
        void m7221a(int i, int i2);
    }

    /* renamed from: j.a.c0.g.e0.o.e$i */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/e$i.class */
    public class C12080i extends Animation {

        /* renamed from: a */
        public float f27126a = 1.0f;

        /* renamed from: b */
        public float f27127b = 1.0f;

        public C12080i() {
            setFillAfter(true);
        }

        /* renamed from: a */
        public void m7220a(float f, float f2) {
            this.f27126a = f;
            this.f27127b = f2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            C12071e eVar = C12071e.this;
            float f2 = this.f27126a;
            eVar.f27077B = (int) (f2 + ((this.f27127b - f2) * f));
        }
    }

    public C12071e(Context context) {
        m7267a(context);
    }

    /* renamed from: a */
    public static void m7270a(int i, int i2, Point point) {
        double d = ((i % 360) * 6.283185307179586d) / 360.0d;
        double d2 = i2;
        point.x = (int) ((Math.cos(d) * d2) + 0.5d);
        point.y = (int) ((d2 * Math.sin(d)) + 0.5d);
    }

    /* renamed from: a */
    public final float m7275a(double d) {
        return (float) (360.0d - ((d * 180.0d) / 3.141592653589793d));
    }

    /* renamed from: a */
    public final Path m7274a(float f, float f2, int i, int i2, Point point) {
        int i3;
        int i4;
        float f3 = point.x - i;
        int i5 = point.y;
        RectF rectF = new RectF(f3, i5 - i, i3 + i, i5 + i);
        float f4 = point.x - i2;
        int i6 = point.y;
        RectF rectF2 = new RectF(f4, i6 - i2, i4 + i2, i6 + i2);
        Path path = new Path();
        path.arcTo(rectF, f, f2 - f, true);
        path.arcTo(rectF2, f2, f - f2);
        path.close();
        return path;
    }

    /* renamed from: a */
    public final PointF m7273a(float f, float f2, boolean z) {
        PointF pointF = new PointF();
        pointF.x = 1.5707964f;
        Point point = this.f27101k;
        float f3 = f - point.x;
        float f4 = point.y - f2;
        pointF.y = (float) Math.sqrt((f3 * f3) + (f4 * f4));
        if (f3 != 0.0f) {
            pointF.x = (float) Math.atan2(f4, f3);
            float f5 = pointF.x;
            if (f5 < 0.0f) {
                pointF.x = (float) (f5 + 6.283185307179586d);
            }
        }
        pointF.y += z ? this.f27104n : 0;
        return pointF;
    }

    /* renamed from: a */
    public final C12069d m7263a(PointF pointF) {
        C12069d dVar = this.f27106p;
        for (C12069d dVar2 : dVar != null ? dVar.m7286e() : this.f27105o) {
            if (m7262a(pointF, dVar2)) {
                return dVar2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m7272a(int i, int i2) {
        this.f27058a.removeCallbacks(this.f27099i);
        this.f27098h.cancel();
        this.f27098h.reset();
        this.f27114x = i;
        this.f27115y = i2;
        this.f27077B = 157;
        m7244c(i, i2);
        this.f27083H = false;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12068c, gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    /* renamed from: a */
    public void mo7271a(int i, int i2, int i3, int i4) {
        super.mo7271a(i, i2, i3, i4);
        this.f27116z = (i3 - i) / 2;
        this.f27076A = (i4 - i2) / 2;
        this.f27114x = this.f27116z;
        this.f27115y = this.f27076A;
        m7244c(this.f27114x, this.f27115y);
        if (m7298e() && this.f27097g == 8) {
            m7251b(this.f27116z, this.f27076A);
            m7226l();
        }
    }

    /* renamed from: a */
    public final void m7269a(long j, boolean z, float f) {
        m7268a(j, z, this.f27077B, f);
    }

    /* renamed from: a */
    public final void m7268a(long j, boolean z, float f, float f2) {
        m7300c(true);
        this.f27098h.reset();
        this.f27098h.setDuration(j);
        this.f27098h.m7220a(f, f2);
        this.f27098h.setAnimationListener(z ? this.f27100j : null);
        this.f27058a.startAnimation(this.f27098h);
        m7297f();
    }

    /* renamed from: a */
    public final void m7267a(Context context) {
        m7300c(false);
        this.f27105o = new ArrayList();
        Resources resources = context.getResources();
        this.f27102l = resources.getDimensionPixelSize(R$dimen.pie_radius_start);
        this.f27113w = this.f27102l - resources.getDimensionPixelSize(R$dimen.focus_radius_offset);
        this.f27103m = resources.getDimensionPixelSize(R$dimen.pie_radius_increment);
        this.f27104n = resources.getDimensionPixelSize(R$dimen.pie_touch_offset);
        this.f27101k = new Point(0, 0);
        this.f27107q = new Paint();
        this.f27107q.setColor(Color.argb(255, 51, 181, 229));
        this.f27107q.setAntiAlias(true);
        this.f27108r = new Paint();
        this.f27108r.setAntiAlias(true);
        this.f27108r.setColor(Color.argb(200, 250, 230, 128));
        this.f27110t = new Paint();
        this.f27110t.setAntiAlias(true);
        this.f27110t.setColor(-1);
        this.f27110t.setStyle(Paint.Style.STROKE);
        this.f27111u = -16711936;
        this.f27112v = SupportMenu.CATEGORY_MASK;
        this.f27078C = new RectF();
        this.f27079D = new RectF();
        this.f27080E = new Point();
        this.f27081F = new Point();
        this.f27084I = resources.getDimensionPixelSize(R$dimen.focus_inner_offset);
        this.f27085J = resources.getDimensionPixelSize(R$dimen.focus_outer_stroke);
        this.f27086K = resources.getDimensionPixelSize(R$dimen.focus_inner_stroke);
        this.f27097g = 0;
        this.f27088M = false;
        this.f27089N = ViewConfiguration.get(context).getScaledTouchSlop();
        int i = this.f27089N;
        this.f27089N = i * i;
        this.f27090O = new Point();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12068c
    /* renamed from: a */
    public void mo7266a(Canvas canvas) {
        float f;
        C12078g gVar = this.f27092Q;
        if (gVar != null) {
            f = gVar.m7223d();
        } else {
            C12078g gVar2 = this.f27093R;
            f = gVar2 != null ? gVar2.m7223d() : 1.0f;
        }
        int save = canvas.save();
        if (this.f27093R != null) {
            float f2 = (0.1f * f) + 0.9f;
            Point point = this.f27101k;
            canvas.scale(f2, f2, point.x, point.y);
        }
        m7250b(canvas);
        if (this.f27097g == 2) {
            canvas.restoreToCount(save);
            return;
        }
        if (this.f27106p == null || this.f27092Q != null) {
            for (C12069d dVar : this.f27105o) {
                m7264a(canvas, dVar, f);
            }
        }
        C12069d dVar2 = this.f27106p;
        if (dVar2 != null) {
            for (C12069d dVar3 : dVar2.m7286e()) {
                m7264a(canvas, dVar3, this.f27092Q != null ? 1.0f - (0.5f * f) : 1.0f);
            }
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    public final void m7265a(Canvas canvas, int i, Paint paint) {
        int i2;
        int i3;
        m7270a(i, this.f27113w - this.f27084I, this.f27080E);
        int i4 = this.f27113w;
        int i5 = this.f27084I;
        m7270a(i, (i4 - i5) + (i5 / 3), this.f27081F);
        Point point = this.f27080E;
        float f = point.x + this.f27114x;
        float f2 = point.y + this.f27115y;
        Point point2 = this.f27081F;
        canvas.drawLine(f, f2, point2.x + i2, point2.y + i3, paint);
    }

    /* renamed from: a */
    public final void m7264a(Canvas canvas, C12069d dVar, float f) {
        if (this.f27097g == 8 && dVar.m7284g() != null) {
            if (dVar.m7279l()) {
                Paint paint = this.f27107q;
                int save = canvas.save();
                float a = m7275a(dVar.m7283h());
                Point point = this.f27101k;
                canvas.rotate(a, point.x, point.y);
                canvas.drawPath(dVar.m7284g(), paint);
                canvas.restoreToCount(save);
            }
            dVar.m7295a(f * (dVar.m7280k() ? 1.0f : 0.3f));
            dVar.m7292a(canvas);
        }
    }

    /* renamed from: a */
    public final void m7260a(C12069d dVar) {
        C12069d dVar2 = this.f27109s;
        if (dVar2 != null) {
            dVar2.m7290a(false);
        }
        if (dVar == null || !dVar.m7280k()) {
            this.f27109s = null;
            return;
        }
        dVar.m7290a(true);
        this.f27109s = dVar;
        C12069d dVar3 = this.f27109s;
        if (dVar3 != this.f27106p && dVar3.m7281j()) {
            m7225m();
        }
    }

    /* renamed from: a */
    public final void m7254a(List<C12069d> list, float f, int i, int i2, int i3) {
        float f2;
        float size = 1.8325958f / list.size();
        float f3 = (f - 1.0471976f) + 0.1308997f + (size / 2.0f);
        Iterator<C12069d> it = list.iterator();
        while (true) {
            f2 = size;
            if (!it.hasNext()) {
                break;
            }
            C12069d next = it.next();
            if (next.m7296a() >= 0.0f) {
                f2 = next.m7282i();
                break;
            }
        }
        float f4 = i3;
        Path a = m7274a(m7275a(0.0d) - f4, m7275a(f2) + f4, i2, i, this.f27101k);
        for (C12069d dVar : list) {
            dVar.m7291a(a);
            if (dVar.m7296a() >= 0.0f) {
                f3 = dVar.m7296a();
            }
            int d = dVar.m7287d();
            int c = dVar.m7288c();
            double d2 = (((i2 - i) * 2) / 3) + i;
            double d3 = f3;
            int cos = (int) (d2 * Math.cos(d3));
            int sin = (this.f27101k.y - ((int) (d2 * Math.sin(d3)))) - (c / 2);
            int i4 = (this.f27101k.x + cos) - (d / 2);
            dVar.m7293a(i4, sin, d + i4, c + sin);
            dVar.m7294a(f3 - (f2 / 2.0f), f2, i, i2);
            if (dVar.m7281j()) {
                m7254a(dVar.m7286e(), f3, i, i2 + (this.f27103m / 2), i3);
            }
            f3 += f2;
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12064a
    /* renamed from: a */
    public void mo7253a(boolean z) {
        if (this.f27097g == 1) {
            m7269a(100L, z, this.f27082G);
            this.f27097g = 2;
            this.f27083H = false;
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12068c, gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    /* renamed from: a */
    public boolean mo7276a() {
        return true;
    }

    /* renamed from: a */
    public final boolean m7262a(PointF pointF, C12069d dVar) {
        return ((float) dVar.m7289b()) < pointF.y && dVar.m7283h() < pointF.x && dVar.m7283h() + dVar.m7282i() > pointF.x && (!this.f27087L || ((float) dVar.m7285f()) > pointF.y);
    }

    /* renamed from: a */
    public final boolean m7261a(MotionEvent motionEvent) {
        return ((float) this.f27089N) < ((motionEvent.getX() - ((float) this.f27090O.x)) * (motionEvent.getX() - ((float) this.f27090O.x))) + ((motionEvent.getY() - ((float) this.f27090O.y)) * (motionEvent.getY() - ((float) this.f27090O.y)));
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12064a
    /* renamed from: b */
    public void mo7252b() {
        if (this.f27097g != 8) {
            m7235g();
            this.f27082G = 67;
            int j = m7229j();
            int i = this.f27082G;
            m7268a(600L, false, i, i + j);
            this.f27097g = 1;
        }
    }

    /* renamed from: b */
    public void m7251b(int i, int i2) {
        Point point = this.f27101k;
        point.x = i;
        point.y = i2;
        m7272a(i, i2);
    }

    /* renamed from: b */
    public void m7250b(Canvas canvas) {
        if (!this.f27088M) {
            this.f27110t.setStrokeWidth(this.f27085J);
            canvas.drawCircle(this.f27114x, this.f27115y, this.f27113w, this.f27110t);
            if (this.f27097g != 8) {
                int color = this.f27110t.getColor();
                if (this.f27097g == 2) {
                    this.f27110t.setColor(this.f27083H ? this.f27111u : this.f27112v);
                }
                this.f27110t.setStrokeWidth(this.f27086K);
                m7265a(canvas, this.f27077B, this.f27110t);
                m7265a(canvas, this.f27077B + 45, this.f27110t);
                m7265a(canvas, this.f27077B + 180, this.f27110t);
                m7265a(canvas, this.f27077B + MatroskaExtractor.ID_AUDIO, this.f27110t);
                canvas.save();
                canvas.rotate(this.f27077B, this.f27114x, this.f27115y);
                canvas.drawArc(this.f27079D, 0.0f, 45.0f, false, this.f27110t);
                canvas.drawArc(this.f27079D, 180.0f, 45.0f, false, this.f27110t);
                canvas.restore();
                this.f27110t.setColor(color);
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12064a
    /* renamed from: b */
    public void mo7245b(boolean z) {
        if (this.f27097g == 1) {
            m7269a(100L, z, this.f27082G);
            this.f27097g = 2;
            this.f27083H = true;
        }
    }

    /* renamed from: c */
    public final void m7244c(int i, int i2) {
        RectF rectF = this.f27078C;
        int i3 = this.f27113w;
        rectF.set(i - i3, i2 - i3, i + i3, i3 + i2);
        RectF rectF2 = this.f27079D;
        int i4 = this.f27113w;
        int i5 = this.f27084I;
        rectF2.set((i - i4) + i5, (i2 - i4) + i5, (i + i4) - i5, (i2 + i4) - i5);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12064a
    public void clear() {
        if (this.f27097g != 8) {
            m7235g();
            this.f27058a.post(this.f27099i);
        }
    }

    /* renamed from: d */
    public void m7241d(int i, int i2) {
        this.f27114x = i;
        this.f27115y = i2;
        m7244c(this.f27114x, this.f27115y);
    }

    /* renamed from: d */
    public final void m7238d(boolean z) {
        if (z) {
            this.f27097g = 8;
            this.f27109s = null;
            this.f27106p = null;
            for (C12069d dVar : this.f27105o) {
                dVar.m7290a(false);
            }
            m7226l();
            m7231i();
        } else {
            this.f27097g = 0;
            this.f27087L = false;
            C12078g gVar = this.f27092Q;
            if (gVar != null) {
                gVar.cancel();
            }
        }
        m7300c(z);
        this.f27095T.sendEmptyMessage(!z ? 1 : 0);
    }

    /* renamed from: g */
    public final void m7235g() {
        this.f27094S = true;
        this.f27058a.removeCallbacks(this.f27099i);
        C12080i iVar = this.f27098h;
        if (iVar != null) {
            iVar.cancel();
        }
        this.f27094S = false;
        this.f27083H = false;
        this.f27097g = 0;
    }

    /* renamed from: h */
    public final void m7233h() {
        C12069d dVar = this.f27109s;
        if (dVar != null) {
            dVar.m7290a(false);
        }
        if (this.f27106p != null) {
            this.f27106p = null;
        }
        this.f27109s = null;
    }

    /* renamed from: i */
    public final void m7231i() {
        this.f27093R = new C12078g(this, 0.0f, 1.0f);
        this.f27093R.setDuration(200L);
        this.f27093R.setAnimationListener(new animationAnimation$AnimationListenerC12073b());
        this.f27093R.startNow();
        this.f27058a.startAnimation(this.f27093R);
    }

    /* renamed from: j */
    public final int m7229j() {
        return (int) ((Math.random() * 120.0d) - 60.0d);
    }

    /* renamed from: k */
    public int m7227k() {
        return this.f27113w * 2;
    }

    /* renamed from: l */
    public final void m7226l() {
        int i = this.f27102l;
        m7254a(this.f27105o, 1.5707964f, i + 2, (i + this.f27103m) - 2, 1);
    }

    /* renamed from: m */
    public final void m7225m() {
        C12069d dVar = this.f27109s;
        if (dVar != null && dVar.m7281j()) {
            this.f27109s.m7290a(false);
            this.f27106p = this.f27109s;
            this.f27091P = true;
            this.f27092Q = new C12078g(this, 1.0f, 0.0f);
            this.f27092Q.setDuration(200L);
            this.f27092Q.setAnimationListener(new animationAnimation$AnimationListenerC12075d());
            this.f27092Q.startNow();
            this.f27058a.startAnimation(this.f27092Q);
        }
    }

    /* renamed from: n */
    public final void m7224n() {
        this.f27058a.animate().alpha(0.0f).setListener(new C12074c()).setDuration(300L);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12068c, gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay.AbstractC4840b
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        PointF a = m7273a(x, y, !this.f27087L);
        if (actionMasked == 0) {
            this.f27090O.x = (int) motionEvent.getX();
            this.f27090O.y = (int) motionEvent.getY();
            this.f27091P = false;
            if (this.f27087L) {
                C12069d a2 = m7263a(a);
                if (a2 == null || this.f27109s == a2) {
                    return true;
                }
                this.f27097g = 8;
                m7260a(a2);
                return true;
            }
            m7251b((int) x, (int) y);
            m7238d(true);
            return true;
        } else if (1 == actionMasked) {
            if (!m7298e()) {
                return false;
            }
            C12069d dVar = this.f27109s;
            if (this.f27087L) {
                C12069d a3 = m7263a(a);
                dVar = a3;
                if (a3 != null) {
                    dVar = a3;
                    if (this.f27091P) {
                        this.f27091P = false;
                        return true;
                    }
                }
            }
            if (dVar == null) {
                this.f27087L = false;
                m7238d(false);
                return true;
            } else if (this.f27091P || dVar.m7281j()) {
                return true;
            } else {
                dVar.m7278m();
                m7224n();
                this.f27087L = false;
                return true;
            }
        } else if (3 == actionMasked) {
            if (m7298e() || this.f27087L) {
                m7238d(false);
            }
            m7233h();
            return false;
        } else if (2 != actionMasked) {
            return false;
        } else {
            if (a.y >= this.f27102l) {
                C12069d a4 = m7263a(a);
                boolean a5 = m7261a(motionEvent);
                if (a4 == null || this.f27109s == a4) {
                    return false;
                }
                if (this.f27091P && !a5) {
                    return false;
                }
                this.f27091P = false;
                if (a5) {
                    this.f27087L = false;
                }
                m7260a(a4);
                return false;
            } else if (this.f27106p != null) {
                this.f27106p = null;
                return false;
            } else {
                m7233h();
                return false;
            }
        }
    }
}
