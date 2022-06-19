package p193e.p194a.p682e;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: e.a.e.m0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/m0.class */
public class C13279m0 extends Drawable {

    /* renamed from: a */
    public final Paint f38586a;

    /* renamed from: b */
    public final Paint f38587b;

    /* renamed from: c */
    public final int f38588c;

    /* renamed from: d */
    public final int f38589d;

    /* renamed from: e */
    public final int f38590e;

    /* renamed from: f */
    public final int f38591f;

    /* renamed from: e.a.e.m0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/m0$b.class */
    public static class C13281b {

        /* renamed from: a */
        public final Context f38592a;

        /* renamed from: b */
        public boolean f38593b;

        /* renamed from: c */
        public boolean f38594c;

        /* renamed from: d */
        public boolean f38595d;

        /* renamed from: e */
        public int f38596e = 10;

        /* renamed from: f */
        public int f38597f = -1;

        public C13281b(Context context) {
            this.f38592a = context;
        }

        /* renamed from: a */
        public C13279m0 m21961a() {
            return new C13279m0(this.f38592a, this, null);
        }
    }

    public C13279m0(Context context, C13281b c13281b, C13280a c13280a) {
        int m13612L = C19291g.m13612L(context, c13281b.f38593b ? 2130968662 : 2130968663);
        Paint paint = new Paint(1);
        this.f38586a = paint;
        paint.setColor(m13612L);
        Paint paint2 = new Paint(1);
        this.f38587b = paint2;
        int i = -1;
        paint2.setColor(-1);
        this.f38588c = C8605o.m28238b(context, c13281b.f38596e);
        if (c13281b.f38595d) {
            this.f38589d = C8605o.m28238b(context, c13281b.f38596e + 1);
        } else {
            this.f38589d = 0;
        }
        int i2 = c13281b.f38597f;
        this.f38590e = i2 > 0 ? C8605o.m28238b(context, i2) : i;
        if (c13281b.f38594c) {
            this.f38591f = C8605o.m28238b(context, 6);
        } else {
            this.f38591f = 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int centerY = bounds.centerY() - this.f38591f;
        int i = this.f38588c / 2;
        if (this.f38589d > 0) {
            canvas.drawCircle(bounds.centerX(), centerY, this.f38589d / 2, this.f38587b);
        }
        canvas.drawCircle(bounds.centerX(), centerY, i, this.f38586a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i = this.f38590e;
        if (i > 0) {
            return i;
        }
        return (this.f38591f * 2) + this.f38588c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i = this.f38590e;
        return i > 0 ? i : this.f38588c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f38586a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f38586a.setColorFilter(colorFilter);
    }
}
