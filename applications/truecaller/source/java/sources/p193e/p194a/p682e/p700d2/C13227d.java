package p193e.p194a.p682e.p700d2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p387t.C8334a;
/* renamed from: e.a.e.d2.d */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/d.class */
public class C13227d extends Drawable {

    /* renamed from: a */
    public final C8334a f38431a;

    /* renamed from: b */
    public final int f38432b;

    /* renamed from: c */
    public final int f38433c;

    /* renamed from: d */
    public final int f38434d;

    public C13227d(Context context, int i, int i2) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(C2752R.dimen.badge_normal_two_plus_chars_width);
        int m13612L = C19291g.m13612L(context, i);
        this.f38434d = m13612L;
        Object obj = C26467a.f74235a;
        C26467a.C26471d.m1787a(context, C2752R.color.warning_all_themes);
        this.f38431a = new C8334a(resources.getDimensionPixelSize(C2752R.dimen.badge_normal_height), resources.getDimensionPixelSize(C2752R.dimen.badge_normal_one_char_width), dimensionPixelSize, m13612L, C19291g.m13612L(context, i2), resources.getDimension(C2752R.dimen.badge_text_size_normal), 0, 0, 0);
        this.f38432b = resources.getDimensionPixelSize(C2752R.dimen.badge_normal_height);
        this.f38433c = dimensionPixelSize + 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f38431a.m28664a(canvas, getBounds());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f38432b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f38433c;
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
