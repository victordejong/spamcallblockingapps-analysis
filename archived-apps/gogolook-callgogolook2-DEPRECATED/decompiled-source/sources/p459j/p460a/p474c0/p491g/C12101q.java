package p459j.p460a.p474c0.p491g;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
/* renamed from: j.a.c0.g.q */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/q.class */
public class C12101q extends InsetDrawable {

    /* renamed from: a */
    public final int f27185a;

    /* renamed from: b */
    public final int f27186b;

    public C12101q(Drawable drawable, int i, int i2, int i3, int i4, int i5, int i6) {
        super(drawable, i, i2, i3, i4);
        this.f27185a = i5;
        this.f27186b = i6;
    }

    /* renamed from: a */
    public static C12101q m7168a(Drawable drawable, int i, int i2) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int i3 = (intrinsicWidth < 0 || intrinsicWidth > i) ? 0 : (i - intrinsicWidth) / 2;
        int i4 = (intrinsicHeight < 0 || intrinsicHeight > i2) ? 0 : (i2 - intrinsicHeight) / 2;
        return new C12101q(drawable, i3, i4, i3, i4, i, i2);
    }

    @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f27186b;
    }

    @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f27185a;
    }
}
