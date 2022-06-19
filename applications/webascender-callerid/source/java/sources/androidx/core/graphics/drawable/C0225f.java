package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
final class C0225f extends Drawable.ConstantState {

    /* renamed from: a */
    int f1335a;

    /* renamed from: b */
    Drawable.ConstantState f1336b;

    /* renamed from: c */
    ColorStateList f1337c;

    /* renamed from: d */
    PorterDuff.Mode f1338d;

    C0225f(C0225f c0225f) {
        this.f1337c = null;
        this.f1338d = d.l;
        if (c0225f != null) {
            this.f1335a = c0225f.f1335a;
            this.f1336b = c0225f.f1336b;
            this.f1337c = c0225f.f1337c;
            this.f1338d = c0225f.f1338d;
        }
    }

    /* renamed from: a */
    boolean m5951a() {
        return this.f1336b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f1335a;
        Drawable.ConstantState constantState = this.f1336b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, resources) : new d(this, resources);
    }
}
