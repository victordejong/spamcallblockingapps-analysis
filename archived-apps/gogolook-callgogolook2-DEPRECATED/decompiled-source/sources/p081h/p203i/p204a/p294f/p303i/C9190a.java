package p081h.p203i.p204a.p294f.p303i;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.BidiFormatter;
import com.google.android.material.R$styleable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p081h.p203i.p204a.p294f.p295a.C9174h;
import p081h.p203i.p204a.p294f.p301g.C9188a;
import p081h.p203i.p204a.p294f.p305k.C9203a;
import p081h.p203i.p204a.p294f.p308n.C9245k;
import p081h.p203i.p204a.p294f.p310p.C9248a;
import p081h.p203i.p204a.p294f.p310p.C9249b;
import p081h.p203i.p204a.p294f.p311q.C9252a;
/* renamed from: h.i.a.f.i.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/i/a.class */
public class C9190a extends Drawable implements TintAwareDrawable, Drawable.Callback {

    /* renamed from: g0 */
    public static final int[] f20946g0 = {16842910};

    /* renamed from: A */
    public float f20947A;

    /* renamed from: B */
    public float f20948B;

    /* renamed from: C */
    public float f20949C;

    /* renamed from: D */
    public float f20950D;

    /* renamed from: E */
    public final Context f20951E;
    @ColorInt

    /* renamed from: L */
    public int f20958L;
    @ColorInt

    /* renamed from: N */
    public int f20959N;
    @ColorInt

    /* renamed from: O */
    public int f20960O;
    @ColorInt

    /* renamed from: P */
    public int f20961P;

    /* renamed from: Q */
    public boolean f20962Q;
    @ColorInt

    /* renamed from: R */
    public int f20963R;
    @Nullable

    /* renamed from: T */
    public ColorFilter f20965T;
    @Nullable

    /* renamed from: U */
    public PorterDuffColorFilter f20966U;
    @Nullable

    /* renamed from: V */
    public ColorStateList f20967V;

    /* renamed from: X */
    public int[] f20969X;

    /* renamed from: Y */
    public boolean f20970Y;
    @Nullable

    /* renamed from: Z */
    public ColorStateList f20971Z;
    @Nullable

    /* renamed from: a */
    public ColorStateList f20972a;

    /* renamed from: b */
    public float f20974b;

    /* renamed from: c */
    public float f20976c;

    /* renamed from: c0 */
    public float f20977c0;
    @Nullable

    /* renamed from: d */
    public ColorStateList f20978d;

    /* renamed from: d0 */
    public TextUtils.TruncateAt f20979d0;

    /* renamed from: e */
    public float f20980e;

    /* renamed from: e0 */
    public boolean f20981e0;
    @Nullable

    /* renamed from: f */
    public ColorStateList f20982f;

    /* renamed from: f0 */
    public int f20983f0;
    @Nullable

    /* renamed from: h */
    public CharSequence f20985h;
    @Nullable

    /* renamed from: i */
    public C9249b f20986i;

    /* renamed from: k */
    public boolean f20988k;
    @Nullable

    /* renamed from: l */
    public Drawable f20989l;
    @Nullable

    /* renamed from: m */
    public ColorStateList f20990m;

    /* renamed from: n */
    public float f20991n;

    /* renamed from: o */
    public boolean f20992o;
    @Nullable

    /* renamed from: p */
    public Drawable f20993p;
    @Nullable

    /* renamed from: q */
    public ColorStateList f20994q;

    /* renamed from: r */
    public float f20995r;
    @Nullable

    /* renamed from: s */
    public CharSequence f20996s;

    /* renamed from: t */
    public boolean f20997t;

    /* renamed from: u */
    public boolean f20998u;
    @Nullable

    /* renamed from: v */
    public Drawable f20999v;

    /* renamed from: w */
    public float f21000w;

    /* renamed from: x */
    public float f21001x;

    /* renamed from: y */
    public float f21002y;

    /* renamed from: z */
    public float f21003z;

    /* renamed from: j */
    public final ResourcesCompat.FontCallback f20987j = new C9191a();

    /* renamed from: F */
    public final TextPaint f20952F = new TextPaint(1);

    /* renamed from: G */
    public final Paint f20953G = new Paint(1);

    /* renamed from: I */
    public final Paint.FontMetrics f20955I = new Paint.FontMetrics();

    /* renamed from: J */
    public final RectF f20956J = new RectF();

    /* renamed from: K */
    public final PointF f20957K = new PointF();

    /* renamed from: S */
    public int f20964S = 255;
    @Nullable

    /* renamed from: W */
    public PorterDuff.Mode f20968W = PorterDuff.Mode.SRC_IN;

    /* renamed from: a0 */
    public WeakReference<AbstractC9192b> f20973a0 = new WeakReference<>(null);

    /* renamed from: b0 */
    public boolean f20975b0 = true;
    @Nullable

    /* renamed from: g */
    public CharSequence f20984g = "";
    @Nullable

    /* renamed from: H */
    public final Paint f20954H = null;

    /* renamed from: h.i.a.f.i.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/i/a$a.class */
    public class C9191a extends ResourcesCompat.FontCallback {
        public C9191a() {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            C9190a.this.f20975b0 = true;
            C9190a.this.m15906E();
            C9190a.this.invalidateSelf();
        }
    }

    /* renamed from: h.i.a.f.i.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/i/a$b.class */
    public interface AbstractC9192b {
        /* renamed from: a */
        void mo15812a();
    }

    public C9190a(Context context) {
        this.f20951E = context;
        this.f20952F.density = context.getResources().getDisplayMetrics().density;
        Paint paint = this.f20954H;
        if (paint != null) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(f20946g0);
        m15882a(f20946g0);
        this.f20981e0 = true;
    }

    /* renamed from: a */
    public static C9190a m15897a(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        C9190a aVar = new C9190a(context);
        aVar.m15889a(attributeSet, i, i2);
        return aVar;
    }

    /* renamed from: a */
    public static boolean m15881a(@Nullable int[] iArr, @AttrRes int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m15871b(@Nullable C9249b bVar) {
        ColorStateList colorStateList;
        return (bVar == null || (colorStateList = bVar.f21178b) == null || !colorStateList.isStateful()) ? false : true;
    }

    /* renamed from: f */
    public static boolean m15845f(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: f */
    public static boolean m15843f(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: A */
    public boolean m15910A() {
        return this.f20998u;
    }

    /* renamed from: B */
    public boolean m15909B() {
        return this.f20988k;
    }

    /* renamed from: C */
    public boolean m15908C() {
        return m15843f(this.f20993p);
    }

    /* renamed from: D */
    public boolean m15907D() {
        return this.f20992o;
    }

    /* renamed from: E */
    public void m15906E() {
        AbstractC9192b bVar = this.f20973a0.get();
        if (bVar != null) {
            bVar.mo15812a();
        }
    }

    /* renamed from: F */
    public boolean m15905F() {
        return this.f20981e0;
    }

    /* renamed from: G */
    public final boolean m15904G() {
        return this.f20998u && this.f20999v != null && this.f20962Q;
    }

    /* renamed from: H */
    public final boolean m15903H() {
        return this.f20988k && this.f20989l != null;
    }

    /* renamed from: I */
    public final boolean m15902I() {
        return this.f20992o && this.f20993p != null;
    }

    /* renamed from: J */
    public final void m15901J() {
        this.f20971Z = this.f20970Y ? C9252a.m15613a(this.f20982f) : null;
    }

    /* renamed from: a */
    public float m15900a() {
        if (m15903H() || m15904G()) {
            return this.f21001x + this.f20991n + this.f21002y;
        }
        return 0.0f;
    }

    /* renamed from: a */
    public final float m15884a(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f20952F.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: a */
    public Paint.Align m15894a(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f20985h != null) {
            float a = this.f21000w + m15900a() + this.f21003z;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + a;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - a;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - m15868c();
        }
        return align;
    }

    /* renamed from: a */
    public void m15899a(float f) {
        if (this.f20976c != f) {
            this.f20976c = f;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m15898a(@AbstractC0053Px int i) {
        this.f20983f0 = i;
    }

    /* renamed from: a */
    public void m15896a(@Nullable ColorStateList colorStateList) {
        if (this.f20972a != colorStateList) {
            this.f20972a = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: a */
    public final void m15895a(@NonNull Canvas canvas, Rect rect) {
        if (m15904G()) {
            m15893a(rect, this.f20956J);
            RectF rectF = this.f20956J;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f20999v.setBounds(0, 0, (int) this.f20956J.width(), (int) this.f20956J.height());
            this.f20999v.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: a */
    public final void m15893a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m15903H() || m15904G()) {
            float f = this.f21000w + this.f21001x;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + this.f20991n;
            } else {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f20991n;
            }
            float exactCenterY = rect.exactCenterY();
            float f2 = this.f20991n;
            rectF.top = exactCenterY - (f2 / 2.0f);
            rectF.bottom = rectF.top + f2;
        }
    }

    /* renamed from: a */
    public void m15892a(RectF rectF) {
        m15857d(getBounds(), rectF);
    }

    /* renamed from: a */
    public final void m15891a(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.f20993p) {
                if (drawable.isStateful()) {
                    drawable.setState(m15824o());
                }
                DrawableCompat.setTintList(drawable, this.f20994q);
            } else if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    /* renamed from: a */
    public void m15890a(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f20979d0 = truncateAt;
    }

    /* renamed from: a */
    public final void m15889a(AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray c = C9245k.m15637c(this.f20951E, attributeSet, R$styleable.Chip, i, i2, new int[0]);
        m15896a(C9248a.m15628a(this.f20951E, c, R$styleable.Chip_chipBackgroundColor));
        m15860d(c.getDimension(R$styleable.Chip_chipMinHeight, 0.0f));
        m15899a(c.getDimension(R$styleable.Chip_chipCornerRadius, 0.0f));
        m15866c(C9248a.m15628a(this.f20951E, c, R$styleable.Chip_chipStrokeColor));
        m15846f(c.getDimension(R$styleable.Chip_chipStrokeWidth, 0.0f));
        m15852e(C9248a.m15628a(this.f20951E, c, R$styleable.Chip_rippleColor));
        m15870b(c.getText(R$styleable.Chip_android_text));
        m15885a(C9248a.m15625c(this.f20951E, c, R$styleable.Chip_android_textAppearance));
        int i3 = c.getInt(R$styleable.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            m15890a(TextUtils.TruncateAt.START);
        } else if (i3 == 2) {
            m15890a(TextUtils.TruncateAt.MIDDLE);
        } else if (i3 == 3) {
            m15890a(TextUtils.TruncateAt.END);
        }
        m15862c(c.getBoolean(R$styleable.Chip_chipIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") != null)) {
            m15862c(c.getBoolean(R$styleable.Chip_chipIconEnabled, false));
        }
        m15863c(C9248a.m15626b(this.f20951E, c, R$styleable.Chip_chipIcon));
        m15876b(C9248a.m15628a(this.f20951E, c, R$styleable.Chip_chipIconTint));
        m15867c(c.getDimension(R$styleable.Chip_chipIconSize, 0.0f));
        m15855d(c.getBoolean(R$styleable.Chip_closeIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") != null)) {
            m15855d(c.getBoolean(R$styleable.Chip_closeIconEnabled, false));
        }
        m15856d(C9248a.m15626b(this.f20951E, c, R$styleable.Chip_closeIcon));
        m15859d(C9248a.m15628a(this.f20951E, c, R$styleable.Chip_closeIconTint));
        m15837h(c.getDimension(R$styleable.Chip_closeIconSize, 0.0f));
        m15883a(c.getBoolean(R$styleable.Chip_android_checkable, false));
        m15869b(c.getBoolean(R$styleable.Chip_checkedIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") != null)) {
            m15869b(c.getBoolean(R$styleable.Chip_checkedIconEnabled, false));
        }
        m15873b(C9248a.m15626b(this.f20951E, c, R$styleable.Chip_checkedIcon));
        m15872b(C9174h.m15960a(this.f20951E, c, R$styleable.Chip_showMotionSpec));
        m15888a(C9174h.m15960a(this.f20951E, c, R$styleable.Chip_hideMotionSpec));
        m15853e(c.getDimension(R$styleable.Chip_chipStartPadding, 0.0f));
        m15830k(c.getDimension(R$styleable.Chip_iconStartPadding, 0.0f));
        m15832j(c.getDimension(R$styleable.Chip_iconEndPadding, 0.0f));
        m15826m(c.getDimension(R$styleable.Chip_textStartPadding, 0.0f));
        m15828l(c.getDimension(R$styleable.Chip_textEndPadding, 0.0f));
        m15834i(c.getDimension(R$styleable.Chip_closeIconStartPadding, 0.0f));
        m15840g(c.getDimension(R$styleable.Chip_closeIconEndPadding, 0.0f));
        m15878b(c.getDimension(R$styleable.Chip_chipEndPadding, 0.0f));
        m15898a(c.getDimensionPixelSize(R$styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        c.recycle();
    }

    /* renamed from: a */
    public void m15888a(@Nullable C9174h hVar) {
    }

    /* renamed from: a */
    public void m15887a(@Nullable AbstractC9192b bVar) {
        this.f20973a0 = new WeakReference<>(bVar);
    }

    /* renamed from: a */
    public void m15885a(@Nullable C9249b bVar) {
        if (this.f20986i != bVar) {
            this.f20986i = bVar;
            if (bVar != null) {
                bVar.m15616c(this.f20951E, this.f20952F, this.f20987j);
                this.f20975b0 = true;
            }
            onStateChange(getState());
            m15906E();
        }
    }

    /* renamed from: a */
    public void m15883a(boolean z) {
        if (this.f20997t != z) {
            this.f20997t = z;
            float a = m15900a();
            if (!z && this.f20962Q) {
                this.f20962Q = false;
            }
            float a2 = m15900a();
            invalidateSelf();
            if (a != a2) {
                m15906E();
            }
        }
    }

    /* renamed from: a */
    public boolean m15882a(@NonNull int[] iArr) {
        if (Arrays.equals(this.f20969X, iArr)) {
            return false;
        }
        this.f20969X = iArr;
        if (m15902I()) {
            return m15880a(getState(), iArr);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m15880a(int[] r6, int[] r7) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p294f.p303i.C9190a.m15880a(int[], int[]):boolean");
    }

    /* renamed from: b */
    public final float m15879b() {
        if (m15902I()) {
            return this.f20948B + this.f20995r + this.f20949C;
        }
        return 0.0f;
    }

    /* renamed from: b */
    public void m15878b(float f) {
        if (this.f20950D != f) {
            this.f20950D = f;
            invalidateSelf();
            m15906E();
        }
    }

    /* renamed from: b */
    public void m15877b(@StyleRes int i) {
        m15885a(new C9249b(this.f20951E, i));
    }

    /* renamed from: b */
    public void m15876b(@Nullable ColorStateList colorStateList) {
        if (this.f20990m != colorStateList) {
            this.f20990m = colorStateList;
            if (m15903H()) {
                DrawableCompat.setTintList(this.f20989l, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: b */
    public final void m15875b(@NonNull Canvas canvas, Rect rect) {
        this.f20953G.setColor(this.f20958L);
        this.f20953G.setStyle(Paint.Style.FILL);
        this.f20953G.setColorFilter(m15814y());
        this.f20956J.set(rect);
        RectF rectF = this.f20956J;
        float f = this.f20976c;
        canvas.drawRoundRect(rectF, f, f, this.f20953G);
    }

    /* renamed from: b */
    public final void m15874b(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (m15902I()) {
            float f = this.f20950D + this.f20949C + this.f20995r + this.f20948B + this.f20947A;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    /* renamed from: b */
    public void m15873b(@Nullable Drawable drawable) {
        if (this.f20999v != drawable) {
            float a = m15900a();
            this.f20999v = drawable;
            float a2 = m15900a();
            m15849e(this.f20999v);
            m15891a(this.f20999v);
            invalidateSelf();
            if (a != a2) {
                m15906E();
            }
        }
    }

    /* renamed from: b */
    public void m15872b(@Nullable C9174h hVar) {
    }

    /* renamed from: b */
    public void m15870b(@Nullable CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (this.f20984g != charSequence2) {
            this.f20984g = charSequence2;
            this.f20985h = BidiFormatter.getInstance().unicodeWrap(charSequence2);
            this.f20975b0 = true;
            invalidateSelf();
            m15906E();
        }
    }

    /* renamed from: b */
    public void m15869b(boolean z) {
        if (this.f20998u != z) {
            boolean G = m15904G();
            this.f20998u = z;
            boolean G2 = m15904G();
            if (G != G2) {
                if (G2) {
                    m15891a(this.f20999v);
                } else {
                    m15849e(this.f20999v);
                }
                invalidateSelf();
                m15906E();
            }
        }
    }

    /* renamed from: c */
    public final float m15868c() {
        this.f20952F.getFontMetrics(this.f20955I);
        Paint.FontMetrics fontMetrics = this.f20955I;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* renamed from: c */
    public void m15867c(float f) {
        if (this.f20991n != f) {
            float a = m15900a();
            this.f20991n = f;
            float a2 = m15900a();
            invalidateSelf();
            if (a != a2) {
                m15906E();
            }
        }
    }

    /* renamed from: c */
    public void m15866c(@Nullable ColorStateList colorStateList) {
        if (this.f20978d != colorStateList) {
            this.f20978d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: c */
    public final void m15865c(@NonNull Canvas canvas, Rect rect) {
        if (m15903H()) {
            m15893a(rect, this.f20956J);
            RectF rectF = this.f20956J;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f20989l.setBounds(0, 0, (int) this.f20956J.width(), (int) this.f20956J.height());
            this.f20989l.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: c */
    public final void m15864c(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m15902I()) {
            float f = this.f20950D + this.f20949C;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f20995r;
            } else {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + this.f20995r;
            }
            float exactCenterY = rect.exactCenterY();
            float f2 = this.f20995r;
            rectF.top = exactCenterY - (f2 / 2.0f);
            rectF.bottom = rectF.top + f2;
        }
    }

    /* renamed from: c */
    public void m15863c(@Nullable Drawable drawable) {
        Drawable g = m15841g();
        if (g != drawable) {
            float a = m15900a();
            this.f20989l = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float a2 = m15900a();
            m15849e(g);
            if (m15903H()) {
                m15891a(this.f20989l);
            }
            invalidateSelf();
            if (a != a2) {
                m15906E();
            }
        }
    }

    /* renamed from: c */
    public void m15862c(boolean z) {
        if (this.f20988k != z) {
            boolean H = m15903H();
            this.f20988k = z;
            boolean H2 = m15903H();
            if (H != H2) {
                if (H2) {
                    m15891a(this.f20989l);
                } else {
                    m15849e(this.f20989l);
                }
                invalidateSelf();
                m15906E();
            }
        }
    }

    /* renamed from: d */
    public void m15860d(float f) {
        if (this.f20974b != f) {
            this.f20974b = f;
            invalidateSelf();
            m15906E();
        }
    }

    /* renamed from: d */
    public void m15859d(@Nullable ColorStateList colorStateList) {
        if (this.f20994q != colorStateList) {
            this.f20994q = colorStateList;
            if (m15902I()) {
                DrawableCompat.setTintList(this.f20993p, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: d */
    public final void m15858d(@NonNull Canvas canvas, Rect rect) {
        if (this.f20980e > 0.0f) {
            this.f20953G.setColor(this.f20959N);
            this.f20953G.setStyle(Paint.Style.STROKE);
            this.f20953G.setColorFilter(m15814y());
            RectF rectF = this.f20956J;
            float f = rect.left;
            float f2 = this.f20980e;
            rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
            float f3 = this.f20976c - (this.f20980e / 2.0f);
            canvas.drawRoundRect(this.f20956J, f3, f3, this.f20953G);
        }
    }

    /* renamed from: d */
    public final void m15857d(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m15902I()) {
            float f = this.f20950D + this.f20949C + this.f20995r + this.f20948B + this.f20947A;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: d */
    public void m15856d(@Nullable Drawable drawable) {
        Drawable j = m15833j();
        if (j != drawable) {
            float b = m15879b();
            this.f20993p = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float b2 = m15879b();
            m15849e(j);
            if (m15902I()) {
                m15891a(this.f20993p);
            }
            invalidateSelf();
            if (b != b2) {
                m15906E();
            }
        }
    }

    /* renamed from: d */
    public void m15855d(boolean z) {
        if (this.f20992o != z) {
            boolean I = m15902I();
            this.f20992o = z;
            boolean I2 = m15902I();
            if (I != I2) {
                if (I2) {
                    m15891a(this.f20993p);
                } else {
                    m15849e(this.f20993p);
                }
                invalidateSelf();
                m15906E();
            }
        }
    }

    /* renamed from: d */
    public final boolean m15861d() {
        return this.f20998u && this.f20999v != null && this.f20997t;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            int i = 0;
            int i2 = this.f20964S;
            if (i2 < 255) {
                i = C9188a.m15915a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i2);
            }
            m15875b(canvas, bounds);
            m15858d(canvas, bounds);
            m15844f(canvas, bounds);
            m15865c(canvas, bounds);
            m15895a(canvas, bounds);
            if (this.f20981e0) {
                m15836h(canvas, bounds);
            }
            m15851e(canvas, bounds);
            m15839g(canvas, bounds);
            if (this.f20964S < 255) {
                canvas.restoreToCount(i);
            }
        }
    }

    @Nullable
    /* renamed from: e */
    public Drawable m15854e() {
        return this.f20999v;
    }

    /* renamed from: e */
    public void m15853e(float f) {
        if (this.f21000w != f) {
            this.f21000w = f;
            invalidateSelf();
            m15906E();
        }
    }

    /* renamed from: e */
    public void m15852e(@Nullable ColorStateList colorStateList) {
        if (this.f20982f != colorStateList) {
            this.f20982f = colorStateList;
            m15901J();
            onStateChange(getState());
        }
    }

    /* renamed from: e */
    public final void m15851e(@NonNull Canvas canvas, Rect rect) {
        if (m15902I()) {
            m15864c(rect, this.f20956J);
            RectF rectF = this.f20956J;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f20993p.setBounds(0, 0, (int) this.f20956J.width(), (int) this.f20956J.height());
            this.f20993p.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: e */
    public final void m15850e(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.f20985h != null) {
            float a = this.f21000w + m15900a() + this.f21003z;
            float b = this.f20950D + m15879b() + this.f20947A;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + a;
                rectF.right = rect.right - b;
            } else {
                rectF.left = rect.left + b;
                rectF.right = rect.right - a;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: e */
    public final void m15849e(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: e */
    public void m15848e(boolean z) {
        this.f20981e0 = z;
    }

    /* renamed from: f */
    public float m15847f() {
        return this.f20950D;
    }

    /* renamed from: f */
    public void m15846f(float f) {
        if (this.f20980e != f) {
            this.f20980e = f;
            this.f20953G.setStrokeWidth(f);
            invalidateSelf();
        }
    }

    /* renamed from: f */
    public final void m15844f(@NonNull Canvas canvas, Rect rect) {
        this.f20953G.setColor(this.f20960O);
        this.f20953G.setStyle(Paint.Style.FILL);
        this.f20956J.set(rect);
        RectF rectF = this.f20956J;
        float f = this.f20976c;
        canvas.drawRoundRect(rectF, f, f, this.f20953G);
    }

    /* renamed from: f */
    public void m15842f(boolean z) {
        if (this.f20970Y != z) {
            this.f20970Y = z;
            m15901J();
            onStateChange(getState());
        }
    }

    @Nullable
    /* renamed from: g */
    public Drawable m15841g() {
        Drawable drawable = this.f20989l;
        return drawable != null ? DrawableCompat.unwrap(drawable) : null;
    }

    /* renamed from: g */
    public void m15840g(float f) {
        if (this.f20949C != f) {
            this.f20949C = f;
            invalidateSelf();
            if (m15902I()) {
                m15906E();
            }
        }
    }

    /* renamed from: g */
    public final void m15839g(@NonNull Canvas canvas, Rect rect) {
        Paint paint = this.f20954H;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.f20954H);
            if (m15903H() || m15904G()) {
                m15893a(rect, this.f20956J);
                canvas.drawRect(this.f20956J, this.f20954H);
            }
            if (this.f20985h != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f20954H);
            }
            if (m15902I()) {
                m15864c(rect, this.f20956J);
                canvas.drawRect(this.f20956J, this.f20954H);
            }
            this.f20954H.setColor(ColorUtils.setAlphaComponent(SupportMenu.CATEGORY_MASK, 127));
            m15874b(rect, this.f20956J);
            canvas.drawRect(this.f20956J, this.f20954H);
            this.f20954H.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            m15857d(rect, this.f20956J);
            canvas.drawRect(this.f20956J, this.f20954H);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f20964S;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f20965T;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f20974b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f21000w + m15900a() + this.f21003z + m15815x() + this.f20947A + m15879b() + this.f20950D), this.f20983f0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f20976c);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f20976c);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    /* renamed from: h */
    public float m15838h() {
        return this.f20991n;
    }

    /* renamed from: h */
    public void m15837h(float f) {
        if (this.f20995r != f) {
            this.f20995r = f;
            invalidateSelf();
            if (m15902I()) {
                m15906E();
            }
        }
    }

    /* renamed from: h */
    public final void m15836h(@NonNull Canvas canvas, Rect rect) {
        if (this.f20985h != null) {
            Paint.Align a = m15894a(rect, this.f20957K);
            m15850e(rect, this.f20956J);
            if (this.f20986i != null) {
                this.f20952F.drawableState = getState();
                this.f20986i.m15617b(this.f20951E, this.f20952F, this.f20987j);
            }
            this.f20952F.setTextAlign(a);
            int i = 0;
            boolean z = Math.round(m15815x()) > Math.round(this.f20956J.width());
            if (z) {
                i = canvas.save();
                canvas.clipRect(this.f20956J);
            }
            CharSequence charSequence = this.f20985h;
            CharSequence charSequence2 = charSequence;
            if (z) {
                charSequence2 = charSequence;
                if (this.f20979d0 != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence, this.f20952F, this.f20956J.width(), this.f20979d0);
                }
            }
            int length = charSequence2.length();
            PointF pointF = this.f20957K;
            canvas.drawText(charSequence2, 0, length, pointF.x, pointF.y, this.f20952F);
            if (z) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: i */
    public float m15835i() {
        return this.f21000w;
    }

    /* renamed from: i */
    public void m15834i(float f) {
        if (this.f20948B != f) {
            this.f20948B = f;
            invalidateSelf();
            if (m15902I()) {
                m15906E();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return m15845f(this.f20972a) || m15845f(this.f20978d) || (this.f20970Y && m15845f(this.f20971Z)) || m15871b(this.f20986i) || m15861d() || m15843f(this.f20989l) || m15843f(this.f20999v) || m15845f(this.f20967V);
    }

    @Nullable
    /* renamed from: j */
    public Drawable m15833j() {
        Drawable drawable = this.f20993p;
        return drawable != null ? DrawableCompat.unwrap(drawable) : null;
    }

    /* renamed from: j */
    public void m15832j(float f) {
        if (this.f21002y != f) {
            float a = m15900a();
            this.f21002y = f;
            float a2 = m15900a();
            invalidateSelf();
            if (a != a2) {
                m15906E();
            }
        }
    }

    @Nullable
    /* renamed from: k */
    public CharSequence m15831k() {
        return this.f20996s;
    }

    /* renamed from: k */
    public void m15830k(float f) {
        if (this.f21001x != f) {
            float a = m15900a();
            this.f21001x = f;
            float a2 = m15900a();
            invalidateSelf();
            if (a != a2) {
                m15906E();
            }
        }
    }

    /* renamed from: l */
    public float m15829l() {
        return this.f20949C;
    }

    /* renamed from: l */
    public void m15828l(float f) {
        if (this.f20947A != f) {
            this.f20947A = f;
            invalidateSelf();
            m15906E();
        }
    }

    /* renamed from: m */
    public float m15827m() {
        return this.f20995r;
    }

    /* renamed from: m */
    public void m15826m(float f) {
        if (this.f21003z != f) {
            this.f21003z = f;
            invalidateSelf();
            m15906E();
        }
    }

    /* renamed from: n */
    public float m15825n() {
        return this.f20948B;
    }

    @NonNull
    /* renamed from: o */
    public int[] m15824o() {
        return this.f20969X;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(23)
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m15903H()) {
            z = onLayoutDirectionChanged | this.f20989l.setLayoutDirection(i);
        }
        boolean z2 = z;
        if (m15904G()) {
            z2 = z | this.f20999v.setLayoutDirection(i);
        }
        boolean z3 = z2;
        if (m15902I()) {
            z3 = z2 | this.f20993p.setLayoutDirection(i);
        }
        if (!z3) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (m15903H()) {
            z = onLevelChange | this.f20989l.setLevel(i);
        }
        boolean z2 = z;
        if (m15904G()) {
            z2 = z | this.f20999v.setLevel(i);
        }
        boolean z3 = z2;
        if (m15902I()) {
            z3 = z2 | this.f20993p.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return m15880a(iArr, m15824o());
    }

    /* renamed from: p */
    public TextUtils.TruncateAt m15823p() {
        return this.f20979d0;
    }

    /* renamed from: q */
    public float m15822q() {
        return this.f21002y;
    }

    /* renamed from: r */
    public float m15821r() {
        return this.f21001x;
    }

    @Nullable
    /* renamed from: s */
    public ColorStateList m15820s() {
        return this.f20982f;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f20964S != i) {
            this.f20964S = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f20965T != colorFilter) {
            this.f20965T = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.f20967V != colorStateList) {
            this.f20967V = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f20968W != mode) {
            this.f20968W = mode;
            this.f20966U = C9203a.m15777a(this, this.f20967V, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m15903H()) {
            z3 = visible | this.f20989l.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m15904G()) {
            z4 = z3 | this.f20999v.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m15902I()) {
            z5 = z4 | this.f20993p.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    @NonNull
    /* renamed from: t */
    public CharSequence m15819t() {
        return this.f20984g;
    }

    @Nullable
    /* renamed from: u */
    public C9249b m15818u() {
        return this.f20986i;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: v */
    public float m15817v() {
        return this.f20947A;
    }

    /* renamed from: w */
    public float m15816w() {
        return this.f21003z;
    }

    /* renamed from: x */
    public final float m15815x() {
        if (!this.f20975b0) {
            return this.f20977c0;
        }
        this.f20977c0 = m15884a(this.f20985h);
        this.f20975b0 = false;
        return this.f20977c0;
    }

    @Nullable
    /* renamed from: y */
    public final ColorFilter m15814y() {
        ColorFilter colorFilter = this.f20965T;
        if (colorFilter == null) {
            colorFilter = this.f20966U;
        }
        return colorFilter;
    }

    /* renamed from: z */
    public boolean m15813z() {
        return this.f20997t;
    }
}
