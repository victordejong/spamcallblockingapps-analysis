package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import com.bumptech.glide.load.resource.a.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/j.class */
public class j extends b {

    /* renamed from: a  reason: collision with root package name */
    a f3610a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f3611b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/j$a.class */
    static final class a extends Drawable.ConstantState {
        private static final Paint d = new Paint(6);

        /* renamed from: a  reason: collision with root package name */
        final Bitmap f3612a;

        /* renamed from: b  reason: collision with root package name */
        int f3613b;
        Paint c;

        public a(Bitmap bitmap) {
            this.c = d;
            this.f3612a = bitmap;
        }

        a(a aVar) {
            this(aVar.f3612a);
            this.f3613b = aVar.f3613b;
        }

        final void a() {
            if (d == this.c) {
                this.c = new Paint(6);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new j((Resources) null, this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new j(resources, this);
        }
    }

    public j(Resources resources, Bitmap bitmap) {
        this(resources, new a(bitmap));
    }

    j(Resources resources, a aVar) {
        int i;
        this.f3611b = new Rect();
        if (aVar == null) {
            throw new NullPointerException("BitmapState must not be null");
        }
        this.f3610a = aVar;
        if (resources != null) {
            int i2 = resources.getDisplayMetrics().densityDpi;
            i = i2 == 0 ? 160 : i2;
            aVar.f3613b = i;
        } else {
            i = aVar.f3613b;
        }
        this.c = aVar.f3612a.getScaledWidth(i);
        this.d = aVar.f3612a.getScaledHeight(i);
    }

    @Override // com.bumptech.glide.load.resource.a.b
    public final void a(int i) {
    }

    @Override // com.bumptech.glide.load.resource.a.b
    public final boolean a() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.e) {
            Gravity.apply(119, this.c, this.d, getBounds(), this.f3611b);
            this.e = false;
        }
        canvas.drawBitmap(this.f3610a.f3612a, (Rect) null, this.f3611b, this.f3610a.c);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f3610a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap = this.f3610a.f3612a;
        return (bitmap == null || bitmap.hasAlpha() || this.f3610a.c.getAlpha() < 255) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f && super.mutate() == this) {
            this.f3610a = new a(this.f3610a);
            this.f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.e = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f3610a.c.getAlpha() != i) {
            a aVar = this.f3610a;
            aVar.a();
            aVar.c.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        a aVar = this.f3610a;
        aVar.a();
        aVar.c.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }
}
