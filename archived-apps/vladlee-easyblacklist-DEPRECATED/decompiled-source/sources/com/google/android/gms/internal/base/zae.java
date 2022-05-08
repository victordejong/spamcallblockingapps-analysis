package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zae.class */
public final class zae extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    private int f15791a;

    /* renamed from: b */
    private long f15792b;

    /* renamed from: c */
    private int f15793c;

    /* renamed from: d */
    private int f15794d;

    /* renamed from: e */
    private int f15795e;

    /* renamed from: f */
    private int f15796f;

    /* renamed from: g */
    private int f15797g;

    /* renamed from: h */
    private boolean f15798h;

    /* renamed from: i */
    private boolean f15799i;

    /* renamed from: j */
    private C2454b f15800j;

    /* renamed from: k */
    private Drawable f15801k;

    /* renamed from: l */
    private Drawable f15802l;

    /* renamed from: m */
    private boolean f15803m;

    /* renamed from: n */
    private boolean f15804n;

    /* renamed from: o */
    private boolean f15805o;

    /* renamed from: p */
    private int f15806p;

    public zae(Drawable drawable, Drawable drawable2) {
        this(null);
        Drawable drawable3 = drawable == null ? C2453a.f15783a : drawable;
        this.f15801k = drawable3;
        drawable3.setCallback(this);
        C2454b bVar = this.f15800j;
        bVar.f15786b = drawable3.getChangingConfigurations() | bVar.f15786b;
        Drawable drawable4 = drawable2 == null ? C2453a.f15783a : drawable2;
        this.f15802l = drawable4;
        drawable4.setCallback(this);
        this.f15800j.f15786b |= drawable4.getChangingConfigurations();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zae(C2454b bVar) {
        this.f15791a = 0;
        this.f15795e = 255;
        this.f15797g = 0;
        this.f15798h = true;
        this.f15800j = new C2454b(bVar);
    }

    /* renamed from: a */
    private final boolean m2932a() {
        if (!this.f15803m) {
            this.f15804n = (this.f15801k.getConstantState() == null || this.f15802l.getConstantState() == null) ? false : true;
            this.f15803m = true;
        }
        return this.f15804n;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i = this.f15791a;
        boolean z = true;
        z = true;
        if (i == 1) {
            this.f15792b = SystemClock.uptimeMillis();
            this.f15791a = 2;
            z = false;
        } else if (i == 2 && this.f15792b >= 0) {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f15792b)) / this.f15796f;
            if (uptimeMillis < 1.0f) {
                z = false;
            }
            if (z) {
                this.f15791a = 0;
            }
            this.f15797g = (int) ((this.f15794d * Math.min(uptimeMillis, 1.0f)) + 0.0f);
        }
        int i2 = this.f15797g;
        boolean z2 = this.f15798h;
        Drawable drawable = this.f15801k;
        Drawable drawable2 = this.f15802l;
        if (z) {
            if (!z2 || i2 == 0) {
                drawable.draw(canvas);
            }
            int i3 = this.f15795e;
            if (i2 == i3) {
                drawable2.setAlpha(i3);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.f15795e - i2);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.f15795e);
        }
        if (i2 > 0) {
            drawable2.setAlpha(i2);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.f15795e);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.f15800j.f15786b | super.getChangingConfigurations() | this.f15800j.f15785a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!m2932a()) {
            return null;
        }
        this.f15800j.f15785a = getChangingConfigurations();
        return this.f15800j;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f15801k.getIntrinsicHeight(), this.f15802l.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f15801k.getIntrinsicWidth(), this.f15802l.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.f15805o) {
            this.f15806p = Drawable.resolveOpacity(this.f15801k.getOpacity(), this.f15802l.getOpacity());
            this.f15805o = true;
        }
        return this.f15806p;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f15799i && super.mutate() == this) {
            if (m2932a()) {
                this.f15801k.mutate();
                this.f15802l.mutate();
                this.f15799i = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.f15801k.setBounds(rect);
        this.f15802l.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f15797g == this.f15795e) {
            this.f15797g = i;
        }
        this.f15795e = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f15801k.setColorFilter(colorFilter);
        this.f15802l.setColorFilter(colorFilter);
    }

    public final void startTransition(int i) {
        this.f15793c = 0;
        this.f15794d = this.f15795e;
        this.f15797g = 0;
        this.f15796f = 250;
        this.f15791a = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zacd() {
        return this.f15802l;
    }
}
