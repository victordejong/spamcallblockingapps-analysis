package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.drawable.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/f.class */
public final class C0763f extends Drawable.ConstantState {

    /* renamed from: a */
    int f3159a;

    /* renamed from: b */
    Drawable.ConstantState f3160b;

    /* renamed from: c */
    ColorStateList f3161c;

    /* renamed from: d */
    PorterDuff.Mode f3162d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0763f(C0763f fVar) {
        this.f3161c = null;
        this.f3162d = C0761d.f3151a;
        if (fVar != null) {
            this.f3159a = fVar.f3159a;
            this.f3160b = fVar.f3160b;
            this.f3161c = fVar.f3161c;
            this.f3162d = fVar.f3162d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i = this.f3159a;
        Drawable.ConstantState constantState = this.f3160b;
        return (constantState != null ? constantState.getChangingConfigurations() : 0) | i;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0762e(this, resources) : new C0761d(this, resources);
    }
}
