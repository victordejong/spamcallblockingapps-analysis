package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.drawable.d */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/d.class */
public class C0761d extends Drawable implements Drawable.Callback, AbstractC0759b, AbstractC0760c {

    /* renamed from: a */
    static final PorterDuff.Mode f3151a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    C0763f f3152b;

    /* renamed from: c */
    Drawable f3153c;

    /* renamed from: d */
    private int f3154d;

    /* renamed from: e */
    private PorterDuff.Mode f3155e;

    /* renamed from: f */
    private boolean f3156f;

    /* renamed from: g */
    private boolean f3157g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0761d(Drawable drawable) {
        this.f3152b = m8235c();
        mo8237a(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0761d(C0763f fVar, Resources resources) {
        this.f3152b = fVar;
        C0763f fVar2 = this.f3152b;
        if (fVar2 != null && fVar2.f3160b != null) {
            mo8237a(this.f3152b.f3160b.newDrawable(resources));
        }
    }

    /* renamed from: a */
    private boolean m8236a(int[] iArr) {
        if (!mo8234b()) {
            return false;
        }
        ColorStateList colorStateList = this.f3152b.f3161c;
        PorterDuff.Mode mode = this.f3152b.f3162d;
        if (colorStateList == null || mode == null) {
            this.f3156f = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f3156f && colorForState == this.f3154d && mode == this.f3155e) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f3154d = colorForState;
        this.f3155e = mode;
        this.f3156f = true;
        return true;
    }

    /* renamed from: c */
    private C0763f m8235c() {
        return new C0763f(this.f3152b);
    }

    @Override // androidx.core.graphics.drawable.AbstractC0760c
    /* renamed from: a */
    public final Drawable mo8238a() {
        return this.f3153c;
    }

    @Override // androidx.core.graphics.drawable.AbstractC0760c
    /* renamed from: a */
    public final void mo8237a(Drawable drawable) {
        Drawable drawable2 = this.f3153c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3153c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0763f fVar = this.f3152b;
            if (fVar != null) {
                fVar.f3160b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: b */
    protected boolean mo8234b() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f3153c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0763f fVar = this.f3152b;
        return this.f3153c.getChangingConfigurations() | changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0763f fVar = this.f3152b;
        if (fVar == null) {
            return null;
        }
        if (!(fVar.f3160b != null)) {
            return null;
        }
        this.f3152b.f3159a = getChangingConfigurations();
        return this.f3152b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f3153c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3153c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3153c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f3153c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f3153c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f3153c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f3153c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f3153c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f3153c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f3153c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0763f fVar;
        ColorStateList colorStateList = (!mo8234b() || (fVar = this.f3152b) == null) ? null : fVar.f3161c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f3153c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f3153c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3157g && super.mutate() == this) {
            this.f3152b = m8235c();
            Drawable drawable = this.f3153c;
            if (drawable != null) {
                drawable.mutate();
            }
            C0763f fVar = this.f3152b;
            if (fVar != null) {
                Drawable drawable2 = this.f3153c;
                fVar.f3160b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f3157g = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3153c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f3153c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3153c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f3153c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f3153c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3153c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f3153c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f3153c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m8236a(iArr) || this.f3153c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public void setTintList(ColorStateList colorStateList) {
        this.f3152b.f3161c = colorStateList;
        m8236a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3152b.f3162d = mode;
        m8236a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f3153c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
