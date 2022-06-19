package p193e.p194a.p372b0.p373a.p387t;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.b0.a.t.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/t/b.class */
public final class C8335b extends Drawable {

    /* renamed from: a */
    public final int f25658a;

    /* renamed from: b */
    public final int f25659b;

    /* renamed from: c */
    public final C8334a f25660c;

    /* renamed from: d */
    public final int f25661d;

    /* renamed from: e */
    public final int f25662e;

    /* JADX WARN: Multi-variable type inference failed */
    public C8335b(Context context, boolean z, boolean z2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        boolean z3 = (i11 & 2) != 0 ? true : z;
        z2 = (i11 & 4) != 0 ? true : z2;
        int i12 = (i11 & 8) != 0 ? C3700R.attr.tcx_brandBackgroundBlue : i;
        int i13 = (i11 & 16) != 0 ? z3 ? C3700R.dimen.badge_tcx_small_height : C3700R.dimen.badge_tcx_normal_height : i2;
        int i14 = (i11 & 32) != 0 ? z3 ? C3700R.dimen.badge_tcx_small_one_char_width : C3700R.dimen.badge_tcx_normal_one_char_width : i3;
        int i15 = (i11 & 64) != 0 ? z3 ? C3700R.dimen.badge_tcx_small_two_plus_chars_width : C3700R.dimen.badge_tcx_normal_two_plus_chars_width : i4;
        int i16 = (i11 & 128) != 0 ? z3 ? C3700R.dimen.badge_tcx_text_small : C3700R.dimen.badge_tcx_text_normal : i5;
        i6 = (i11 & 256) != 0 ? -1 : i6;
        int i17 = (i11 & 512) != 0 ? z2 ? C3700R.dimen.badge_tcx_border_size : 0 : i7;
        int i18 = (i11 & 1024) != 0 ? z2 ? C3700R.attr.tcx_backgroundPrimary : 0 : i8;
        z3 = (i11 & 2048) == 0 ? i9 : z3;
        int i19 = (i11 & 4096) != 0 ? C3700R.attr.tcx_alertBackgroundRed : i10;
        l.e(context, AnalyticsConstants.CONTEXT);
        int m13612L = C19291g.m13612L(context, i12);
        this.f25658a = m13612L;
        this.f25659b = C19291g.m13612L(context, i19);
        Resources resources = context.getResources();
        Object[] objArr = (i17 == 0 || i18 == 0) ? null : 1;
        int dimensionPixelSize = resources.getDimensionPixelSize(i15);
        int dimensionPixelSize2 = objArr != null ? resources.getDimensionPixelSize(i17) : 0;
        this.f25660c = new C8334a(resources.getDimensionPixelSize(i13), resources.getDimensionPixelSize(i14), dimensionPixelSize, m13612L, i6, resources.getDimension(i16), dimensionPixelSize2, objArr != null ? C19291g.m13612L(context, i18) : 0, z3 ? 1 : 0);
        this.f25661d = resources.getDimensionPixelSize(i13);
        this.f25662e = (dimensionPixelSize2 * 2) + dimensionPixelSize;
    }

    /* renamed from: a */
    public final void m28663a(int i) {
        C8334a c8334a = this.f25660c;
        if (c8334a.f25654j != i) {
            c8334a.f25654j = i;
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public final void m28662b(boolean z) {
        this.f25660c.f25646b = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        this.f25660c.m28664a(canvas, getBounds());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f25661d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f25662e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
