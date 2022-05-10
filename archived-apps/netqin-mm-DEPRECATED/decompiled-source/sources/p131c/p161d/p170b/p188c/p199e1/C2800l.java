package p131c.p161d.p170b.p188c.p199e1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p131c.p161d.p170b.p188c.p196c1.C2761a;
import p131c.p161d.p170b.p188c.p196c1.C2762b;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.e1.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e1/l.class */
public final class C2800l {

    /* renamed from: A */
    public float f10153A;

    /* renamed from: B */
    public int f10154B;

    /* renamed from: C */
    public int f10155C;

    /* renamed from: D */
    public int f10156D;

    /* renamed from: E */
    public int f10157E;

    /* renamed from: F */
    public StaticLayout f10158F;

    /* renamed from: G */
    public int f10159G;

    /* renamed from: H */
    public int f10160H;

    /* renamed from: I */
    public int f10161I;

    /* renamed from: J */
    public Rect f10162J;

    /* renamed from: a */
    public final float f10163a;

    /* renamed from: b */
    public final float f10164b;

    /* renamed from: c */
    public final float f10165c;

    /* renamed from: d */
    public final float f10166d;

    /* renamed from: e */
    public final float f10167e;

    /* renamed from: f */
    public final TextPaint f10168f;

    /* renamed from: g */
    public final Paint f10169g;

    /* renamed from: h */
    public CharSequence f10170h;

    /* renamed from: i */
    public Layout.Alignment f10171i;

    /* renamed from: j */
    public Bitmap f10172j;

    /* renamed from: k */
    public float f10173k;

    /* renamed from: l */
    public int f10174l;

    /* renamed from: m */
    public int f10175m;

    /* renamed from: n */
    public float f10176n;

    /* renamed from: o */
    public int f10177o;

    /* renamed from: p */
    public float f10178p;

    /* renamed from: q */
    public float f10179q;

    /* renamed from: r */
    public boolean f10180r;

    /* renamed from: s */
    public boolean f10181s;

    /* renamed from: t */
    public int f10182t;

    /* renamed from: u */
    public int f10183u;

    /* renamed from: v */
    public int f10184v;

    /* renamed from: w */
    public int f10185w;

    /* renamed from: x */
    public int f10186x;

    /* renamed from: y */
    public float f10187y;

    /* renamed from: z */
    public float f10188z;

    public C2800l(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f10167e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f10166d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f10163a = round;
        this.f10164b = round;
        this.f10165c = round;
        TextPaint textPaint = new TextPaint();
        this.f10168f = textPaint;
        textPaint.setAntiAlias(true);
        this.f10168f.setSubpixelText(true);
        Paint paint = new Paint();
        this.f10169g = paint;
        paint.setAntiAlias(true);
        this.f10169g.setStyle(Paint.Style.FILL);
    }

    /* renamed from: a */
    public static boolean m28996a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d0  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueBitmap"})
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29000a() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p199e1.C2800l.m29000a():void");
    }

    @RequiresNonNull({"cueBitmap", "bitmapRect"})
    /* renamed from: a */
    public final void m28999a(Canvas canvas) {
        canvas.drawBitmap(this.f10172j, (Rect) null, this.f10162J, (Paint) null);
    }

    /* renamed from: a */
    public final void m28998a(Canvas canvas, boolean z) {
        if (z) {
            m28994b(canvas);
            return;
        }
        C2877e.m28737a(this.f10162J);
        C2877e.m28737a(this.f10172j);
        m28999a(canvas);
    }

    /* renamed from: a */
    public void m28997a(C2762b bVar, boolean z, boolean z2, C2761a aVar, float f, float f2, float f3, Canvas canvas, int i, int i2, int i3, int i4) {
        boolean z3 = bVar.f10080c == null;
        int i5 = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        if (z3) {
            if (!TextUtils.isEmpty(bVar.f10078a)) {
                i5 = (!bVar.f10088k || !z) ? aVar.f10074c : bVar.f10089l;
            } else {
                return;
            }
        }
        if (m28996a(this.f10170h, bVar.f10078a) && C2885h0.m28669a(this.f10171i, bVar.f10079b) && this.f10172j == bVar.f10080c && this.f10173k == bVar.f10081d && this.f10174l == bVar.f10082e && C2885h0.m28669a(Integer.valueOf(this.f10175m), Integer.valueOf(bVar.f10083f)) && this.f10176n == bVar.f10084g && C2885h0.m28669a(Integer.valueOf(this.f10177o), Integer.valueOf(bVar.f10085h)) && this.f10178p == bVar.f10086i && this.f10179q == bVar.f10087j && this.f10180r == z && this.f10181s == z2 && this.f10182t == aVar.f10072a && this.f10183u == aVar.f10073b && this.f10184v == i5 && this.f10186x == aVar.f10075d && this.f10185w == aVar.f10076e && C2885h0.m28669a(this.f10168f.getTypeface(), aVar.f10077f) && this.f10187y == f && this.f10188z == f2 && this.f10153A == f3 && this.f10154B == i && this.f10155C == i2 && this.f10156D == i3 && this.f10157E == i4) {
            m28998a(canvas, z3);
            return;
        }
        this.f10170h = bVar.f10078a;
        this.f10171i = bVar.f10079b;
        this.f10172j = bVar.f10080c;
        this.f10173k = bVar.f10081d;
        this.f10174l = bVar.f10082e;
        this.f10175m = bVar.f10083f;
        this.f10176n = bVar.f10084g;
        this.f10177o = bVar.f10085h;
        this.f10178p = bVar.f10086i;
        this.f10179q = bVar.f10087j;
        this.f10180r = z;
        this.f10181s = z2;
        this.f10182t = aVar.f10072a;
        this.f10183u = aVar.f10073b;
        this.f10184v = i5;
        this.f10186x = aVar.f10075d;
        this.f10185w = aVar.f10076e;
        this.f10168f.setTypeface(aVar.f10077f);
        this.f10187y = f;
        this.f10188z = f2;
        this.f10153A = f3;
        this.f10154B = i;
        this.f10155C = i2;
        this.f10156D = i3;
        this.f10157E = i4;
        if (z3) {
            C2877e.m28737a(this.f10170h);
            m28995b();
        } else {
            C2877e.m28737a(this.f10172j);
            m29000a();
        }
        m28998a(canvas, z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7, types: [java.lang.String] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueText"})
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28995b() {
        /*
            Method dump skipped, instructions count: 888
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p199e1.C2800l.m28995b():void");
    }

    /* renamed from: b */
    public final void m28994b(Canvas canvas) {
        StaticLayout staticLayout = this.f10158F;
        if (staticLayout != null) {
            int save = canvas.save();
            canvas.translate(this.f10159G, this.f10160H);
            if (Color.alpha(this.f10184v) > 0) {
                this.f10169g.setColor(this.f10184v);
                canvas.drawRect(-this.f10161I, 0.0f, staticLayout.getWidth() + this.f10161I, staticLayout.getHeight(), this.f10169g);
            }
            int i = this.f10186x;
            boolean z = true;
            if (i == 1) {
                this.f10168f.setStrokeJoin(Paint.Join.ROUND);
                this.f10168f.setStrokeWidth(this.f10163a);
                this.f10168f.setColor(this.f10185w);
                this.f10168f.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (i == 2) {
                TextPaint textPaint = this.f10168f;
                float f = this.f10164b;
                float f2 = this.f10165c;
                textPaint.setShadowLayer(f, f2, f2, this.f10185w);
            } else if (i == 3 || i == 4) {
                if (this.f10186x != 3) {
                    z = false;
                }
                int i2 = -1;
                int i3 = z ? -1 : this.f10185w;
                if (z) {
                    i2 = this.f10185w;
                }
                float f3 = this.f10164b / 2.0f;
                this.f10168f.setColor(this.f10182t);
                this.f10168f.setStyle(Paint.Style.FILL);
                float f4 = -f3;
                this.f10168f.setShadowLayer(this.f10164b, f4, f4, i3);
                staticLayout.draw(canvas);
                this.f10168f.setShadowLayer(this.f10164b, f3, f3, i2);
            }
            this.f10168f.setColor(this.f10182t);
            this.f10168f.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            this.f10168f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
        }
    }
}
