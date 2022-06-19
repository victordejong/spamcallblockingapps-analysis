package p193e.p194a.p372b0.p373a.p387t;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import p1727n3.p1734b.p1738c.p1739a.C25446d;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.b0.a.t.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/t/c.class */
public final class C8336c extends C25446d {

    /* renamed from: n */
    public final int f25663n;

    /* renamed from: o */
    public final int f25664o;

    /* renamed from: p */
    public final C8334a f25665p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8336c(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        int m13612L = C19291g.m13612L(context, C3700R.attr.tcx_brandBackgroundBlue);
        this.f25663n = m13612L;
        this.f25664o = C19291g.m13612L(context, C3700R.attr.tcx_alertBackgroundRed);
        int m13612L2 = C19291g.m13612L(context, C3700R.attr.tcx_textSecondary);
        if (m13612L2 != this.f71079a.getColor()) {
            this.f71079a.setColor(m13612L2);
            invalidateSelf();
        }
        Resources resources = context.getResources();
        this.f25665p = new C8334a(resources.getDimensionPixelSize(C3700R.dimen.badge_tcx_small_height), resources.getDimensionPixelSize(C3700R.dimen.badge_tcx_small_one_char_width), resources.getDimensionPixelSize(C3700R.dimen.badge_tcx_small_two_plus_chars_width), m13612L, -1, resources.getDimension(C3700R.dimen.badge_tcx_text_small), resources.getDimensionPixelSize(C3700R.dimen.badge_tcx_border_size), C19291g.m13612L(context, C3700R.attr.tcx_backgroundTertiary), 1);
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.C25446d, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        super.draw(canvas);
        this.f25665p.m28664a(canvas, getBounds());
    }
}
