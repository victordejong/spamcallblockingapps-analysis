package p081h.p119d.p120a.p124s.p134k.p139i;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Gravity;
import p081h.p119d.p120a.p122q.C5796a;
import p081h.p119d.p120a.p122q.C5799c;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p124s.p134k.p139i.C5993f;
/* renamed from: h.d.a.s.k.i.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/b.class */
public class C5988b extends AbstractC5979b implements C5993f.AbstractC5996c {

    /* renamed from: a */
    public final Paint f14928a;

    /* renamed from: b */
    public final Rect f14929b;

    /* renamed from: c */
    public final C5989a f14930c;

    /* renamed from: d */
    public final C5796a f14931d;

    /* renamed from: e */
    public final C5993f f14932e;

    /* renamed from: f */
    public boolean f14933f;

    /* renamed from: g */
    public boolean f14934g;

    /* renamed from: h */
    public boolean f14935h;

    /* renamed from: i */
    public boolean f14936i;

    /* renamed from: j */
    public int f14937j;

    /* renamed from: k */
    public int f14938k;

    /* renamed from: l */
    public boolean f14939l;

    /* renamed from: h.d.a.s.k.i.b$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/b$a.class */
    public static class C5989a extends Drawable.ConstantState {

        /* renamed from: a */
        public C5799c f14940a;

        /* renamed from: b */
        public byte[] f14941b;

        /* renamed from: c */
        public Context f14942c;

        /* renamed from: d */
        public AbstractC5810g<Bitmap> f14943d;

        /* renamed from: e */
        public int f14944e;

        /* renamed from: f */
        public int f14945f;

        /* renamed from: g */
        public C5796a.AbstractC5797a f14946g;

        /* renamed from: h */
        public AbstractC5856c f14947h;

        /* renamed from: i */
        public Bitmap f14948i;

        public C5989a(C5799c cVar, byte[] bArr, Context context, AbstractC5810g<Bitmap> gVar, int i, int i2, C5796a.AbstractC5797a aVar, AbstractC5856c cVar2, Bitmap bitmap) {
            if (bitmap != null) {
                this.f14940a = cVar;
                this.f14941b = bArr;
                this.f14947h = cVar2;
                this.f14948i = bitmap;
                this.f14942c = context.getApplicationContext();
                this.f14943d = gVar;
                this.f14944e = i;
                this.f14945f = i2;
                this.f14946g = aVar;
                return;
            }
            throw new NullPointerException("The first frame of the GIF must not be null");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C5988b(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public C5988b(Context context, C5796a.AbstractC5797a aVar, AbstractC5856c cVar, AbstractC5810g<Bitmap> gVar, int i, int i2, C5799c cVar2, byte[] bArr, Bitmap bitmap) {
        this(new C5989a(cVar2, bArr, context, gVar, i, i2, aVar, cVar, bitmap));
    }

    public C5988b(C5989a aVar) {
        this.f14929b = new Rect();
        this.f14936i = true;
        this.f14938k = -1;
        if (aVar != null) {
            this.f14930c = aVar;
            this.f14931d = new C5796a(aVar.f14946g);
            this.f14928a = new Paint();
            this.f14931d.m24372a(aVar.f14940a, aVar.f14941b);
            this.f14932e = new C5993f(aVar.f14942c, this, this.f14931d, aVar.f14944e, aVar.f14945f);
            this.f14932e.m24071a(aVar.f14943d);
            return;
        }
        throw new NullPointerException("GifState must not be null");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5988b(p081h.p119d.p120a.p124s.p134k.p139i.C5988b r14, android.graphics.Bitmap r15, p081h.p119d.p120a.p124s.AbstractC5810g<android.graphics.Bitmap> r16) {
        /*
            r13 = this;
            r0 = r14
            h.d.a.s.k.i.b$a r0 = r0.f14930c
            r14 = r0
            r0 = r13
            h.d.a.s.k.i.b$a r1 = new h.d.a.s.k.i.b$a
            r2 = r1
            r3 = r14
            h.d.a.q.c r3 = r3.f14940a
            r4 = r14
            byte[] r4 = r4.f14941b
            r5 = r14
            android.content.Context r5 = r5.f14942c
            r6 = r16
            r7 = r14
            int r7 = r7.f14944e
            r8 = r14
            int r8 = r8.f14945f
            r9 = r14
            h.d.a.q.a$a r9 = r9.f14946g
            r10 = r14
            h.d.a.s.i.n.c r10 = r10.f14947h
            r11 = r15
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p124s.p134k.p139i.C5988b.<init>(h.d.a.s.k.i.b, android.graphics.Bitmap, h.d.a.s.g):void");
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p139i.C5993f.AbstractC5996c
    @TargetApi(11)
    /* renamed from: a */
    public void mo24062a(int i) {
        if (Build.VERSION.SDK_INT < 11 || getCallback() != null) {
            invalidateSelf();
            if (i == this.f14931d.m24369d() - 1) {
                this.f14937j++;
            }
            int i2 = this.f14938k;
            if (i2 != -1 && this.f14937j >= i2) {
                stop();
                return;
            }
            return;
        }
        stop();
        m24077g();
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b
    /* renamed from: a */
    public boolean mo23912a() {
        return true;
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b
    /* renamed from: b */
    public void mo23911b(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        } else if (i == 0) {
            int h = this.f14931d.m24365h();
            int i2 = h;
            if (h == 0) {
                i2 = -1;
            }
            this.f14938k = i2;
        } else {
            this.f14938k = i;
        }
    }

    /* renamed from: b */
    public byte[] m24082b() {
        return this.f14930c.f14941b;
    }

    /* renamed from: c */
    public Bitmap m24081c() {
        return this.f14930c.f14948i;
    }

    /* renamed from: d */
    public int m24080d() {
        return this.f14931d.m24369d();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f14935h) {
            if (this.f14939l) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.f14929b);
                this.f14939l = false;
            }
            Bitmap b = this.f14932e.m24069b();
            if (b == null) {
                b = this.f14930c.f14948i;
            }
            canvas.drawBitmap(b, (Rect) null, this.f14929b, this.f14928a);
        }
    }

    /* renamed from: e */
    public AbstractC5810g<Bitmap> m24079e() {
        return this.f14930c.f14943d;
    }

    /* renamed from: f */
    public void m24078f() {
        this.f14935h = true;
        C5989a aVar = this.f14930c;
        aVar.f14947h.mo24220a(aVar.f14948i);
        this.f14932e.m24073a();
        this.f14932e.m24066e();
    }

    /* renamed from: g */
    public final void m24077g() {
        this.f14932e.m24073a();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f14930c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f14930c.f14948i.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f14930c.f14948i.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* renamed from: h */
    public final void m24076h() {
        this.f14937j = 0;
    }

    /* renamed from: i */
    public final void m24075i() {
        if (this.f14931d.m24369d() == 1) {
            invalidateSelf();
        } else if (!this.f14933f) {
            this.f14933f = true;
            this.f14932e.m24067d();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f14933f;
    }

    /* renamed from: j */
    public final void m24074j() {
        this.f14933f = false;
        this.f14932e.m24066e();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f14939l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f14928a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f14928a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        this.f14936i = z;
        if (!z) {
            m24074j();
        } else if (this.f14934g) {
            m24075i();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f14934g = true;
        m24076h();
        if (this.f14936i) {
            m24075i();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f14934g = false;
        m24074j();
        if (Build.VERSION.SDK_INT < 11) {
            m24077g();
        }
    }
}
