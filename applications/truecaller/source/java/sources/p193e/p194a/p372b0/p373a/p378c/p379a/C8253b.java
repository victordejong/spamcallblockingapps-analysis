package p193e.p194a.p372b0.p373a.p378c.p379a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.common.p156ui.C3700R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.a.c.a.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/a/b.class */
public final class C8253b extends Drawable {

    /* renamed from: a */
    public final g f25472a = C25225a.m3978P1(new C8256c());

    /* renamed from: b */
    public final g f25473b = C25225a.m3978P1(new C8254a());

    /* renamed from: c */
    public final g f25474c = C25225a.m3978P1(new C8255b());

    /* renamed from: d */
    public final float f25475d;

    /* renamed from: e */
    public RectF f25476e;

    /* renamed from: f */
    public final AbstractC19233h0 f25477f;

    /* renamed from: e.a.b0.a.c.a.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/a/b$a.class */
    public static final class C8254a extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8254a() {
            super(0);
            C8253b.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(C8253b.this.f25477f.mo13758l(C3700R.attr.tcx_avatarBackgroundBlue));
        }
    }

    /* renamed from: e.a.b0.a.c.a.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/a/b$b.class */
    public static final class C8255b extends m implements a<Paint> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8255b() {
            super(0);
            C8253b.this = r4;
        }

        public Object invoke() {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(((Number) C8253b.this.f25473b.getValue()).intValue());
            return paint;
        }
    }

    /* renamed from: e.a.b0.a.c.a.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/a/b$c.class */
    public static final class C8256c extends m implements a<Drawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8256c() {
            super(0);
            C8253b.this = r4;
        }

        public Object invoke() {
            return C8253b.this.f25477f.mo13764f(C3700R.C3701drawable.ic_tcx_person_24dp, C3700R.attr.tcx_avatarTextBlue);
        }
    }

    public C8253b(float f, RectF rectF, AbstractC19233h0 abstractC19233h0) {
        l.e(rectF, "margin");
        l.e(abstractC19233h0, "resourceProvider");
        this.f25475d = f;
        this.f25476e = rectF;
        this.f25477f = abstractC19233h0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        canvas.drawRect(getBounds(), (Paint) this.f25474c.getValue());
        ((Drawable) this.f25472a.getValue()).draw(canvas);
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
        int width = rect.width();
        int height = rect.height();
        float f = width;
        float f2 = this.f25475d * f * 22;
        int i = (int) ((f - f2) / 2.0f);
        int i2 = (int) ((height - f2) / 2.0f);
        Rect rect2 = new Rect(rect);
        rect2.inset(i, i2);
        RectF rectF = this.f25476e;
        Rect rect3 = new Rect();
        rectF.round(rect3);
        int i3 = rect2.left;
        int i4 = rect3.left;
        int i5 = rect3.right;
        rect2.left = (i4 - i5) + i3;
        int i6 = rect2.top;
        int i7 = rect3.top;
        int i8 = rect3.bottom;
        rect2.top = (i7 - i8) + i6;
        rect2.right -= i5 - rect3.left;
        rect2.bottom -= i8 - rect3.top;
        Drawable drawable = (Drawable) this.f25472a.getValue();
        l.d(drawable, RemoteMessageConst.Notification.ICON);
        drawable.setBounds(rect2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
