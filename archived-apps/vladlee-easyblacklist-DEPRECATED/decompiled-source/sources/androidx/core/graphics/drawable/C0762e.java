package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.drawable.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/e.class */
public final class C0762e extends C0761d {

    /* renamed from: d */
    private static Method f3158d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0762e(Drawable drawable) {
        super(drawable);
        m8233c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0762e(C0763f fVar, Resources resources) {
        super(fVar, resources);
        m8233c();
    }

    /* renamed from: c */
    private static void m8233c() {
        if (f3158d == null) {
            try {
                f3158d = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // androidx.core.graphics.drawable.C0761d
    /* renamed from: b */
    protected final boolean mo8234b() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f3153c;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f3153c.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f3153c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        if (this.f3153c == null || (method = f3158d) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(this.f3153c, new Object[0])).booleanValue();
        } catch (Exception e) {
            Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        this.f3153c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f3153c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.core.graphics.drawable.C0761d, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // androidx.core.graphics.drawable.C0761d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTint(int i) {
        if (mo8234b()) {
            super.setTint(i);
        } else {
            this.f3153c.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.C0761d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintList(ColorStateList colorStateList) {
        if (mo8234b()) {
            super.setTintList(colorStateList);
        } else {
            this.f3153c.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.C0761d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (mo8234b()) {
            super.setTintMode(mode);
        } else {
            this.f3153c.setTintMode(mode);
        }
    }
}
