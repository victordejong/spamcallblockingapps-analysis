package p012b.p042i.p046j.p047m;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: b.i.j.m.e */
/* loaded from: classes-dex2jar.jar:b/i/j/m/e.class */
public class C0911e extends C0910d {

    /* renamed from: h */
    public static Method f4123h;

    public C0911e(Drawable drawable) {
        super(drawable);
        m35507d();
    }

    public C0911e(C0912f fVar, Resources resources) {
        super(fVar, resources);
        m35507d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if ((r0 instanceof android.graphics.drawable.RippleDrawable) != false) goto L_0x0036;
     */
    @Override // p012b.p042i.p046j.p047m.C0910d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo35508b() {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 21
            if (r0 != r1) goto L_0x0038
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f4122f
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.GradientDrawable
            if (r0 != 0) goto L_0x0036
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.DrawableContainer
            if (r0 != 0) goto L_0x0036
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.InsetDrawable
            if (r0 != 0) goto L_0x0036
            r0 = r5
            r6 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.RippleDrawable
            if (r0 == 0) goto L_0x0038
        L_0x0036:
            r0 = 1
            r6 = r0
        L_0x0038:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p046j.p047m.C0911e.mo35508b():boolean");
    }

    /* renamed from: d */
    public final void m35507d() {
        if (f4123h == null) {
            try {
                f4123h = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.f4122f.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f4122f.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f4122f;
        if (drawable == null || (method = f4123h) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
        } catch (Exception e) {
            Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f4122f.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f4122f.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p012b.p042i.p046j.p047m.C0910d, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // p012b.p042i.p046j.p047m.C0910d, android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTint(int i) {
        if (mo35508b()) {
            super.setTint(i);
        } else {
            this.f4122f.setTint(i);
        }
    }

    @Override // p012b.p042i.p046j.p047m.C0910d, android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintList(ColorStateList colorStateList) {
        if (mo35508b()) {
            super.setTintList(colorStateList);
        } else {
            this.f4122f.setTintList(colorStateList);
        }
    }

    @Override // p012b.p042i.p046j.p047m.C0910d, android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintMode(PorterDuff.Mode mode) {
        if (mo35508b()) {
            super.setTintMode(mode);
        } else {
            this.f4122f.setTintMode(mode);
        }
    }
}
