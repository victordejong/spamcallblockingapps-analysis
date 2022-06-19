package p193e.p194a.p682e.p700d2;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.e.d2.e */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/e.class */
public final class C13228e extends Drawable {

    /* renamed from: a */
    public final int f38435a;

    /* renamed from: b */
    public final String f38436b;

    /* renamed from: c */
    public final Drawable f38437c;

    /* renamed from: d */
    public final int f38438d;

    /* renamed from: e */
    public final int f38439e;

    /* renamed from: f */
    public final int f38440f;

    /* renamed from: g */
    public final int f38441g;

    /* renamed from: h */
    public final Paint f38442h;

    /* renamed from: i */
    public final float f38443i;

    /* renamed from: j */
    public final float f38444j;

    /* renamed from: k */
    public final RectF f38445k;

    /* renamed from: l */
    public final float f38446l;

    /* renamed from: m */
    public final Paint f38447m;

    /* renamed from: n */
    public final boolean f38448n;

    /* renamed from: o */
    public final Context f38449o;

    /* renamed from: p */
    public final int f38450p;

    /* renamed from: q */
    public final int f38451q;

    public C13228e(Context context, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f38449o = context;
        this.f38450p = i;
        this.f38451q = i2;
        int m13612L = C19291g.m13612L(context, 2130970256);
        this.f38435a = m13612L;
        String string = context.getString(i);
        l.d(string, "context.getString(textId)");
        this.f38436b = string;
        Drawable m13535l0 = C19291g.m13535l0(context, i2, 2130970256);
        l.d(m13535l0, "ThemeUtils.getTintedDraw… R.attr.tcx_textTertiary)");
        this.f38437c = m13535l0;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131166432);
        this.f38438d = dimensionPixelSize;
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(2131166403);
        this.f38439e = dimensionPixelSize2;
        boolean z = true;
        Paint paint = new Paint(1);
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        paint.setTextSize(TypedValue.applyDimension(2, 12.0f, resources.getDisplayMetrics()));
        paint.setColor(m13612L);
        paint.setTextAlign(Paint.Align.LEFT);
        paint.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.f38442h = paint;
        RectF rectF = new RectF();
        this.f38445k = rectF;
        Resources resources2 = context.getResources();
        l.d(resources2, "context.resources");
        float applyDimension = TypedValue.applyDimension(1, 1.0f, resources2.getDisplayMetrics());
        this.f38446l = applyDimension;
        Paint paint2 = new Paint(1);
        paint2.setColor(m13612L);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(applyDimension);
        this.f38447m = paint2;
        Resources resources3 = context.getResources();
        l.d(resources3, "context.resources");
        Configuration configuration = resources3.getConfiguration();
        l.d(configuration, "context.resources.configuration");
        this.f38448n = configuration.getLayoutDirection() != 1 ? false : z;
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        l.d(fontMetrics, "textPaint.fontMetrics");
        int ceil = (int) Math.ceil(fontMetrics.descent - paint.ascent());
        float measureText = paint.measureText(string);
        float intrinsicWidth = m13535l0.getIntrinsicWidth();
        float f = dimensionPixelSize * 2;
        float f2 = dimensionPixelSize2;
        int i3 = (int) (measureText + intrinsicWidth + f + f2);
        this.f38440f = i3;
        int max = (dimensionPixelSize2 * 2) + Math.max(ceil, m13535l0.getIntrinsicHeight());
        this.f38441g = max;
        this.f38443i = m13535l0.getIntrinsicWidth() + dimensionPixelSize + dimensionPixelSize2;
        this.f38444j = (ceil - fontMetrics.descent) + f2;
        int abs = Math.abs(max - m13535l0.getIntrinsicHeight()) / 2;
        m13535l0.setBounds(dimensionPixelSize, abs, m13535l0.getIntrinsicWidth() + dimensionPixelSize, m13535l0.getIntrinsicHeight() + abs);
        float f3 = 0 + applyDimension;
        rectF.left = f3;
        rectF.top = f3;
        rectF.bottom = max - applyDimension;
        rectF.right = i3 - applyDimension;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        if (this.f38448n) {
            canvas.drawText(this.f38436b, this.f38438d - this.f38440f, this.f38444j, this.f38442h);
            canvas.scale(-1.0f, 1.0f);
            canvas.translate(-getBounds().width(), 0.0f);
        } else {
            canvas.drawText(this.f38436b, this.f38443i, this.f38444j, this.f38442h);
        }
        RectF rectF = this.f38445k;
        int i = this.f38441g;
        canvas.drawRoundRect(rectF, i / 2.0f, i / 2.0f, this.f38447m);
        this.f38437c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
