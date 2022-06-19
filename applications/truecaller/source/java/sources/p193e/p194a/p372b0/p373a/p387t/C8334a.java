package p193e.p194a.p372b0.p373a.p387t;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
/* renamed from: e.a.b0.a.t.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/t/a.class */
public class C8334a {

    /* renamed from: a */
    public boolean f25645a;

    /* renamed from: b */
    public boolean f25646b;

    /* renamed from: c */
    public final Paint f25647c;

    /* renamed from: d */
    public final int f25648d;

    /* renamed from: e */
    public final int f25649e;

    /* renamed from: f */
    public final int f25650f;

    /* renamed from: g */
    public Paint f25651g;

    /* renamed from: h */
    public final Paint f25652h;

    /* renamed from: i */
    public final Rect f25653i = new Rect();

    /* renamed from: j */
    public int f25654j = 0;

    /* renamed from: k */
    public final RectF f25655k;

    /* renamed from: l */
    public final RectF f25656l;

    /* renamed from: m */
    public final int f25657m;

    public C8334a(int i, int i2, int i3, int i4, int i5, float f, int i6, int i7, int i8) {
        Paint paint = new Paint();
        this.f25647c = paint;
        paint.setColor(i4);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        if (i6 > 0) {
            Paint paint2 = new Paint();
            this.f25651g = paint2;
            paint2.setColor(i7);
            this.f25651g.setAntiAlias(true);
            this.f25651g.setStyle(Paint.Style.STROKE);
            this.f25651g.setStrokeWidth(i6);
        }
        Paint paint3 = new Paint();
        this.f25652h = paint3;
        paint3.setColor(i5);
        paint3.setTypeface(Typeface.DEFAULT_BOLD);
        paint3.setTextSize(f);
        paint3.setAntiAlias(true);
        paint3.setTextAlign(Paint.Align.CENTER);
        this.f25648d = i;
        this.f25649e = i2;
        this.f25650f = i3;
        this.f25655k = new RectF();
        this.f25656l = new RectF();
        this.f25657m = i8;
    }

    /* renamed from: a */
    public void m28664a(Canvas canvas, Rect rect) {
        String str;
        this.f25656l.set(rect);
        RectF rectF = this.f25656l;
        boolean z = this.f25645a;
        if (z || this.f25654j > 0 || this.f25646b) {
            if (z) {
                str = "!";
            } else {
                int i = this.f25654j;
                str = i <= 99 ? String.valueOf(i) : "99+";
            }
            int i2 = (!this.f25645a && this.f25654j >= 10) ? this.f25650f : this.f25649e;
            float width = rectF.width();
            float height = rectF.height();
            int i3 = this.f25657m;
            if (i3 == 0) {
                RectF rectF2 = this.f25655k;
                float f = rectF.left;
                float f2 = (width - i2) / 2.0f;
                float f3 = rectF.top;
                float f4 = (height - this.f25648d) / 2.0f;
                rectF2.set(f + f2, f3 + f4, rectF.right - f2, rectF.bottom - f4);
            } else if (i3 != 1) {
                return;
            } else {
                this.f25655k.set(((rectF.left + width) - i2) + 10.0f, rectF.top - 10.0f, rectF.right + 10.0f, ((rectF.bottom - height) + this.f25648d) - 10.0f);
            }
            float min = Math.min(this.f25655k.width(), this.f25655k.height());
            canvas.drawRoundRect(this.f25655k, min, min, this.f25647c);
            Paint paint = this.f25651g;
            if (paint != null) {
                float strokeWidth = (paint.getStrokeWidth() / 2.0f) * (-1.0f);
                this.f25655k.inset(strokeWidth, strokeWidth);
                float f5 = min - strokeWidth;
                canvas.drawRoundRect(this.f25655k, f5, f5, this.f25651g);
            }
            if (this.f25646b) {
                return;
            }
            this.f25652h.getTextBounds(str, 0, str.length(), this.f25653i);
            RectF rectF3 = this.f25655k;
            canvas.drawText(str, (rectF3.left + rectF3.right) / 2.0f, ((rectF3.top + rectF3.bottom) / 2.0f) + (this.f25653i.height() / 2), this.f25652h);
        }
    }
}
