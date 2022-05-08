package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.rastermill.FrameSequenceDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$styleable;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11646d;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11669o;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11672r;
import p459j.p460a.p474c0.p475c.p479z.C11665l;
import p459j.p460a.p474c0.p475c.p479z.C11675t;
import p459j.p460a.p474c0.p491g.C12101q;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12204q0;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.AsyncImageView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AsyncImageView.class */
public class AsyncImageView extends ImageView implements C11675t.AbstractC11679d<AbstractC11669o> {

    /* renamed from: b */
    public boolean f11380b;

    /* renamed from: c */
    public final boolean f11381c;

    /* renamed from: d */
    public int f11382d;

    /* renamed from: f */
    public int f11384f;

    /* renamed from: g */
    public int f11385g;

    /* renamed from: i */
    public final Drawable f11387i;

    /* renamed from: j */
    public AbstractC11669o f11388j;

    /* renamed from: l */
    public C4678b f11390l;

    /* renamed from: m */
    public AbstractC11667n f11391m;

    /* renamed from: k */
    public final Runnable f11389k = new RunnableC4677a();

    /* renamed from: a */
    public final C11589c<AbstractC11646d<AbstractC11669o>> f11379a = AbstractC11590d.m9040a(this);

    /* renamed from: e */
    public final Path f11383e = new Path();

    /* renamed from: h */
    public final RectF f11386h = new RectF();

    /* renamed from: gogolook.callgogolook2.messaging.ui.AsyncImageView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AsyncImageView$a.class */
    public class RunnableC4677a implements Runnable {
        public RunnableC4677a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncImageView.this.f11379a.mo9031c()) {
                AsyncImageView asyncImageView = AsyncImageView.this;
                asyncImageView.f11391m = (AbstractC11667n) asyncImageView.f11379a.mo9033b().mo8659c();
            }
            AsyncImageView.this.m27438c();
            AsyncImageView.this.m27451a();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.AsyncImageView$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AsyncImageView$b.class */
    public static class C4678b {
        /* renamed from: a */
        public final void m27435a(AsyncImageView asyncImageView) {
            throw null;
        }

        /* renamed from: a */
        public boolean m27437a() {
            throw null;
        }
    }

    public AsyncImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AsyncImageView, 0, 0);
        this.f11380b = obtainStyledAttributes.getBoolean(1, true);
        this.f11381c = obtainStyledAttributes.getBoolean(3, false);
        this.f11387i = obtainStyledAttributes.getDrawable(2);
        this.f11382d = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public static int m27450a(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(Math.min(i, size), i2);
        }
        if (mode == 0) {
            return Math.min(i, i2);
        }
        C12151d.m7005a("Unreachable");
        return size;
    }

    /* renamed from: a */
    public final void m27451a() {
        Drawable drawable = getDrawable();
        if (drawable instanceof FrameSequenceDrawable) {
            FrameSequenceDrawable frameSequenceDrawable = (FrameSequenceDrawable) drawable;
            frameSequenceDrawable.stop();
            frameSequenceDrawable.destroy();
        }
        AbstractC11669o oVar = this.f11388j;
        if (oVar != null) {
            oVar.m8606l();
            this.f11388j = null;
        }
        setImageDrawable(null);
        setBackground(null);
    }

    /* renamed from: a */
    public void m27449a(C4678b bVar) {
        C12151d.m6999b(this.f11390l == null);
        this.f11390l = bVar;
    }

    /* renamed from: a */
    public final void m27446a(AbstractC11646d<AbstractC11669o> dVar) {
        this.f11379a.mo9038b((C11589c<AbstractC11646d<AbstractC11669o>>) dVar);
        C4678b bVar = this.f11390l;
        if (bVar == null) {
            C11675t.m8650b().m8648c(dVar);
        } else {
            bVar.m27437a();
            throw null;
        }
    }

    /* renamed from: a */
    public final void m27445a(AbstractC11667n nVar) {
        if (!TextUtils.isEmpty(nVar.mo8684a()) && this.f11387i != null) {
            if (!(nVar.f26186c == -1 || nVar.f26187d == -1)) {
                setImageDrawable(C12101q.m7168a(new ColorDrawable(0), nVar.f26186c, nVar.f26187d));
            }
            setBackground(this.f11387i);
        }
    }

    /* renamed from: a */
    public void m27444a(AbstractC11669o oVar) {
        m27443a(oVar, false);
    }

    /* renamed from: a */
    public void m27443a(AbstractC11669o oVar, boolean z) {
        m27451a();
        C12204q0.m6814a().removeCallbacks(this.f11389k);
        Drawable a = oVar != null ? oVar.mo8677a(getResources()) : null;
        if (a != null) {
            this.f11388j = oVar;
            this.f11388j.m8617b();
            setImageDrawable(a);
            if (a instanceof FrameSequenceDrawable) {
                ((FrameSequenceDrawable) a).start();
            }
            if (getVisibility() == 0) {
                if (this.f11381c) {
                    setVisibility(4);
                    C12212s0.m6791a(this, 0, null);
                } else if (this.f11380b && !z) {
                    setAlpha(0.0f);
                    animate().alpha(1.0f).start();
                }
            }
            if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
                if (this.f11388j instanceof C11665l) {
                    C12153d0.m6983d("MessagingAppDataModel", "setImage size unknown -- it's a GIF");
                } else {
                    C12153d0.m6983d("MessagingAppDataModel", "setImage size: " + this.f11388j.mo8610h() + " width: " + this.f11388j.mo8676n().getWidth() + " heigh: " + this.f11388j.mo8676n().getHeight());
                }
            }
        }
        invalidate();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo7924a(AbstractC11672r<AbstractC11669o> rVar, AbstractC11669o oVar, boolean z) {
        if (this.f11388j != oVar) {
            m27443a(oVar, z);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11675t.AbstractC11679d
    /* renamed from: a */
    public void mo7923a(AbstractC11672r<AbstractC11669o> rVar, Exception exc) {
        m27438c();
        m27444a((AbstractC11669o) null);
    }

    /* renamed from: b */
    public final void m27441b() {
        clearAnimation();
        setAlpha(1.0f);
    }

    /* renamed from: b */
    public void m27439b(@Nullable AbstractC11667n nVar) {
        String a = nVar == null ? null : nVar.mo8684a();
        if (this.f11379a.mo9031c()) {
            if (!TextUtils.equals(this.f11379a.mo9033b().getKey(), a)) {
                m27438c();
            } else {
                return;
            }
        }
        m27444a((AbstractC11669o) null);
        m27441b();
        if (!TextUtils.isEmpty(a)) {
            m27445a(nVar);
            m27446a(nVar.m8658a(getContext(), this));
        }
    }

    /* renamed from: c */
    public final void m27438c() {
        if (this.f11379a.mo9031c()) {
            this.f11379a.m9042e();
            C4678b bVar = this.f11390l;
            if (bVar != null) {
                bVar.m27435a(this);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        AbstractC11667n nVar;
        super.onAttachedToWindow();
        C12204q0.m6814a().removeCallbacks(this.f11389k);
        if (this.f11380b) {
            setAlpha(1.0f);
        }
        if (!this.f11379a.mo9031c() && (nVar = this.f11391m) != null) {
            m27439b(nVar);
        }
        this.f11391m = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C12204q0.m6814a().postDelayed(this.f11389k, 100L);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if ((getDrawable() instanceof BitmapDrawable) && ((BitmapDrawable) getDrawable()).getBitmap().isRecycled()) {
            return;
        }
        if (this.f11382d > 0) {
            int width = getWidth();
            int height = getHeight();
            if (!(this.f11384f == width && this.f11385g == height)) {
                this.f11386h.set(0.0f, 0.0f, width, height);
                this.f11383e.reset();
                Path path = this.f11383e;
                RectF rectF = this.f11386h;
                int i = this.f11382d;
                path.addRoundRect(rectF, i, i, Path.Direction.CW);
                this.f11384f = width;
                this.f11385g = height;
            }
            int saveCount = canvas.getSaveCount();
            canvas.save();
            canvas.clipPath(this.f11383e);
            super.onDraw(canvas);
            canvas.restoreToCount(saveCount);
            return;
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0093, code lost:
        if (r0 > getMaxWidth()) goto L_0x0096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c0, code lost:
        if (r8 > getMaxHeight()) goto L_0x00c3;
     */
    @Override // android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.AsyncImageView.onMeasure(int, int):void");
    }
}
