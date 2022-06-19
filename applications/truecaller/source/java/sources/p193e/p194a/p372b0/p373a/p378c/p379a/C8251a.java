package p193e.p194a.p372b0.p373a.p378c.p379a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.a.c.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/a/a.class */
public final class C8251a extends Drawable {

    /* renamed from: a */
    public float f25461a;

    /* renamed from: b */
    public float f25462b;

    /* renamed from: c */
    public final g f25463c = C25225a.m3978P1(new C8252a(0, this));

    /* renamed from: d */
    public final g f25464d = C25225a.m3978P1(new C8252a(1, this));

    /* renamed from: e */
    public final float f25465e;

    /* renamed from: f */
    public RectF f25466f;

    /* renamed from: g */
    public final int f25467g;

    /* renamed from: h */
    public final int f25468h;

    /* renamed from: i */
    public final String f25469i;

    /* renamed from: e.a.b0.a.c.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/b0/a/c/a/a$a.class */
    public static final class C8252a extends m implements a<Paint> {

        /* renamed from: b */
        public final /* synthetic */ int f25470b;

        /* renamed from: c */
        public final /* synthetic */ Object f25471c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8252a(int i, Object obj) {
            super(0);
            this.f25470b = i;
            this.f25471c = obj;
        }

        public final Object invoke() {
            int i = this.f25470b;
            if (i == 0) {
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setStyle(Paint.Style.FILL);
                paint.setColor(((C8251a) this.f25471c).f25467g);
                return paint;
            } else if (i != 1) {
                throw null;
            } else {
                Paint paint2 = new Paint();
                paint2.setAntiAlias(true);
                paint2.setTextAlign(Paint.Align.CENTER);
                paint2.setColor(((C8251a) this.f25471c).f25468h);
                paint2.setTypeface(Typeface.create("sans-serif-medium", 0));
                return paint2;
            }
        }
    }

    public C8251a(float f, RectF rectF, int i, int i2, String str) {
        l.e(rectF, "margin");
        l.e(str, "letter");
        this.f25465e = f;
        this.f25466f = rectF;
        this.f25467g = i;
        this.f25468h = i2;
        this.f25469i = str;
    }

    /* renamed from: a */
    public final Paint m28714a() {
        return (Paint) this.f25464d.getValue();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        canvas.drawRect(getBounds(), (Paint) this.f25463c.getValue());
        canvas.drawText(this.f25469i, this.f25461a, this.f25462b, m28714a());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (rect == null) {
            return;
        }
        m28714a().setTextSize(this.f25465e * rect.width() * 22);
        float f = rect.left;
        RectF rectF = this.f25466f;
        this.f25461a = (((rect.width() / 2.0f) + f) + rectF.left) - rectF.right;
        float f2 = rect.top;
        float ascent = (m28714a().ascent() + m28714a().descent()) / 2.0f;
        RectF rectF2 = this.f25466f;
        this.f25462b = ((((rect.height() / 2.0f) + f2) - ascent) + rectF2.top) - rectF2.bottom;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
