package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.ShapePath;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/MaterialShapeDrawable.class */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, Shapeable {

    /* renamed from: B */
    private static final String f11058B = MaterialShapeDrawable.class.getSimpleName();

    /* renamed from: C */
    private static final Paint f11059C = new Paint(1);

    /* renamed from: A */
    private boolean f11060A;

    /* renamed from: f */
    private MaterialShapeDrawableState f11061f;

    /* renamed from: g */
    private final ShapePath.ShadowCompatOperation[] f11062g;

    /* renamed from: h */
    private final ShapePath.ShadowCompatOperation[] f11063h;

    /* renamed from: i */
    private final BitSet f11064i;

    /* renamed from: j */
    private boolean f11065j;

    /* renamed from: k */
    private final Matrix f11066k;

    /* renamed from: l */
    private final Path f11067l;

    /* renamed from: m */
    private final Path f11068m;

    /* renamed from: n */
    private final RectF f11069n;

    /* renamed from: o */
    private final RectF f11070o;

    /* renamed from: p */
    private final Region f11071p;

    /* renamed from: q */
    private final Region f11072q;

    /* renamed from: r */
    private ShapeAppearanceModel f11073r;

    /* renamed from: s */
    private final Paint f11074s;

    /* renamed from: t */
    private final Paint f11075t;

    /* renamed from: u */
    private final ShadowRenderer f11076u;
    @NonNull

    /* renamed from: v */
    private final ShapeAppearancePathProvider.PathListener f11077v;

    /* renamed from: w */
    private final ShapeAppearancePathProvider f11078w;
    @Nullable

    /* renamed from: x */
    private PorterDuffColorFilter f11079x;
    @Nullable

    /* renamed from: y */
    private PorterDuffColorFilter f11080y;
    @NonNull

    /* renamed from: z */
    private final RectF f11081z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/MaterialShapeDrawable$CompatibilityShadowMode.class */
    public @interface CompatibilityShadowMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState.class */
    public static final class MaterialShapeDrawableState extends Drawable.ConstantState {
        @NonNull

        /* renamed from: a */
        public ShapeAppearanceModel f11084a;
        @Nullable

        /* renamed from: b */
        public ElevationOverlayProvider f11085b;
        @Nullable

        /* renamed from: c */
        public ColorFilter f11086c;
        @Nullable

        /* renamed from: d */
        public ColorStateList f11087d;
        @Nullable

        /* renamed from: e */
        public ColorStateList f11088e;
        @Nullable

        /* renamed from: f */
        public ColorStateList f11089f;
        @Nullable

        /* renamed from: g */
        public ColorStateList f11090g;
        @Nullable

        /* renamed from: h */
        public PorterDuff.Mode f11091h;
        @Nullable

        /* renamed from: i */
        public Rect f11092i;

        /* renamed from: j */
        public float f11093j;

        /* renamed from: k */
        public float f11094k;

        /* renamed from: l */
        public float f11095l;

        /* renamed from: m */
        public int f11096m;

        /* renamed from: n */
        public float f11097n;

        /* renamed from: o */
        public float f11098o;

        /* renamed from: p */
        public float f11099p;

        /* renamed from: q */
        public int f11100q;

        /* renamed from: r */
        public int f11101r;

        /* renamed from: s */
        public int f11102s;

        /* renamed from: t */
        public int f11103t;

        /* renamed from: u */
        public boolean f11104u;

        /* renamed from: v */
        public Paint.Style f11105v;

        public MaterialShapeDrawableState(@NonNull MaterialShapeDrawableState materialShapeDrawableState) {
            this.f11087d = null;
            this.f11088e = null;
            this.f11089f = null;
            this.f11090g = null;
            this.f11091h = PorterDuff.Mode.SRC_IN;
            this.f11092i = null;
            this.f11093j = 1.0f;
            this.f11094k = 1.0f;
            this.f11096m = 255;
            this.f11097n = 0.0f;
            this.f11098o = 0.0f;
            this.f11099p = 0.0f;
            this.f11100q = 0;
            this.f11101r = 0;
            this.f11102s = 0;
            this.f11103t = 0;
            this.f11104u = false;
            this.f11105v = Paint.Style.FILL_AND_STROKE;
            this.f11084a = materialShapeDrawableState.f11084a;
            this.f11085b = materialShapeDrawableState.f11085b;
            this.f11095l = materialShapeDrawableState.f11095l;
            this.f11086c = materialShapeDrawableState.f11086c;
            this.f11087d = materialShapeDrawableState.f11087d;
            this.f11088e = materialShapeDrawableState.f11088e;
            this.f11091h = materialShapeDrawableState.f11091h;
            this.f11090g = materialShapeDrawableState.f11090g;
            this.f11096m = materialShapeDrawableState.f11096m;
            this.f11093j = materialShapeDrawableState.f11093j;
            this.f11102s = materialShapeDrawableState.f11102s;
            this.f11100q = materialShapeDrawableState.f11100q;
            this.f11104u = materialShapeDrawableState.f11104u;
            this.f11094k = materialShapeDrawableState.f11094k;
            this.f11097n = materialShapeDrawableState.f11097n;
            this.f11098o = materialShapeDrawableState.f11098o;
            this.f11099p = materialShapeDrawableState.f11099p;
            this.f11101r = materialShapeDrawableState.f11101r;
            this.f11103t = materialShapeDrawableState.f11103t;
            this.f11089f = materialShapeDrawableState.f11089f;
            this.f11105v = materialShapeDrawableState.f11105v;
            if (materialShapeDrawableState.f11092i != null) {
                this.f11092i = new Rect(materialShapeDrawableState.f11092i);
            }
        }

        public MaterialShapeDrawableState(ShapeAppearanceModel shapeAppearanceModel, ElevationOverlayProvider elevationOverlayProvider) {
            this.f11087d = null;
            this.f11088e = null;
            this.f11089f = null;
            this.f11090g = null;
            this.f11091h = PorterDuff.Mode.SRC_IN;
            this.f11092i = null;
            this.f11093j = 1.0f;
            this.f11094k = 1.0f;
            this.f11096m = 255;
            this.f11097n = 0.0f;
            this.f11098o = 0.0f;
            this.f11099p = 0.0f;
            this.f11100q = 0;
            this.f11101r = 0;
            this.f11102s = 0;
            this.f11103t = 0;
            this.f11104u = false;
            this.f11105v = Paint.Style.FILL_AND_STROKE;
            this.f11084a = shapeAppearanceModel;
            this.f11085b = elevationOverlayProvider;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.f11065j = true;
            return materialShapeDrawable;
        }
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this(ShapeAppearanceModel.m9273e(context, attributeSet, i, i2).m9232m());
    }

    private MaterialShapeDrawable(@NonNull MaterialShapeDrawableState materialShapeDrawableState) {
        this.f11062g = new ShapePath.ShadowCompatOperation[4];
        this.f11063h = new ShapePath.ShadowCompatOperation[4];
        this.f11064i = new BitSet(8);
        this.f11066k = new Matrix();
        this.f11067l = new Path();
        this.f11068m = new Path();
        this.f11069n = new RectF();
        this.f11070o = new RectF();
        this.f11071p = new Region();
        this.f11072q = new Region();
        this.f11074s = new Paint(1);
        this.f11075t = new Paint(1);
        this.f11076u = new ShadowRenderer();
        this.f11078w = new ShapeAppearancePathProvider();
        this.f11081z = new RectF();
        this.f11060A = true;
        this.f11061f = materialShapeDrawableState;
        this.f11075t.setStyle(Paint.Style.STROKE);
        this.f11074s.setStyle(Paint.Style.FILL);
        f11059C.setColor(-1);
        f11059C.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        m9302l0();
        m9304k0(getState());
        this.f11077v = new ShapeAppearancePathProvider.PathListener() { // from class: com.google.android.material.shape.MaterialShapeDrawable.1
            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            /* renamed from: a */
            public void mo9205a(@NonNull ShapePath shapePath, Matrix matrix, int i) {
                MaterialShapeDrawable.this.f11064i.set(i, shapePath.m9199e());
                MaterialShapeDrawable.this.f11062g[i] = shapePath.m9198f(matrix);
            }

            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            /* renamed from: b */
            public void mo9204b(@NonNull ShapePath shapePath, Matrix matrix, int i) {
                MaterialShapeDrawable.this.f11064i.set(i + 4, shapePath.m9199e());
                MaterialShapeDrawable.this.f11063h[i] = shapePath.m9198f(matrix);
            }
        };
    }

    public MaterialShapeDrawable(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this(new MaterialShapeDrawableState(shapeAppearanceModel, null));
    }

    /* renamed from: D */
    private float m9347D() {
        if (m9339L()) {
            return this.f11075t.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: J */
    private boolean m9341J() {
        boolean z;
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        int i = materialShapeDrawableState.f11100q;
        if (i != 1 && materialShapeDrawableState.f11101r > 0) {
            z = true;
            if (i != 2) {
                if (m9331T()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: K */
    private boolean m9340K() {
        Paint.Style style = this.f11061f.f11105v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    /* renamed from: L */
    private boolean m9339L() {
        Paint.Style style = this.f11061f.f11105v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f11075t.getStrokeWidth() > 0.0f;
    }

    /* renamed from: N */
    private void m9337N() {
        super.invalidateSelf();
    }

    /* renamed from: Q */
    private void m9334Q(@NonNull Canvas canvas) {
        if (m9341J()) {
            canvas.save();
            m9332S(canvas);
            if (!this.f11060A) {
                m9299n(canvas);
                canvas.restore();
                return;
            }
            int width = (int) (this.f11081z.width() - getBounds().width());
            int height = (int) (this.f11081z.height() - getBounds().height());
            if (width < 0 || height < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap createBitmap = Bitmap.createBitmap(((int) this.f11081z.width()) + (this.f11061f.f11101r * 2) + width, ((int) this.f11081z.height()) + (this.f11061f.f11101r * 2) + height, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap);
            float f = (getBounds().left - this.f11061f.f11101r) - width;
            float f2 = (getBounds().top - this.f11061f.f11101r) - height;
            canvas2.translate(-f, -f2);
            m9299n(canvas2);
            canvas.drawBitmap(createBitmap, f, f2, (Paint) null);
            createBitmap.recycle();
            canvas.restore();
        }
    }

    /* renamed from: R */
    private static int m9333R(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    /* renamed from: S */
    private void m9332S(@NonNull Canvas canvas) {
        int A = m9350A();
        int B = m9349B();
        if (Build.VERSION.SDK_INT < 21 && this.f11060A) {
            Rect clipBounds = canvas.getClipBounds();
            int i = this.f11061f.f11101r;
            clipBounds.inset(-i, -i);
            clipBounds.offset(A, B);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(A, B);
    }

    @Nullable
    /* renamed from: f */
    private PorterDuffColorFilter m9315f(@NonNull Paint paint, boolean z) {
        int color;
        int l;
        if (!z || (l = m9303l((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(l, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: g */
    private void m9313g(@NonNull RectF rectF, @NonNull Path path) {
        m9311h(rectF, path);
        if (this.f11061f.f11093j != 1.0f) {
            this.f11066k.reset();
            Matrix matrix = this.f11066k;
            float f = this.f11061f.f11093j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f11066k);
        }
        path.computeBounds(this.f11081z, true);
    }

    /* renamed from: i */
    private void m9309i() {
        final float f = -m9347D();
        ShapeAppearanceModel x = getShapeAppearanceModel().m9254x(new ShapeAppearanceModel.CornerSizeUnaryOperator(this) { // from class: com.google.android.material.shape.MaterialShapeDrawable.2
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            @NonNull
            /* renamed from: a */
            public CornerSize mo8457a(@NonNull CornerSize cornerSize) {
                if (!(cornerSize instanceof RelativeCornerSize)) {
                    cornerSize = new AdjustedCornerSize(f, cornerSize);
                }
                return cornerSize;
            }
        });
        this.f11073r = x;
        this.f11078w.m9215d(x, this.f11061f.f11094k, m9291v(), this.f11068m);
    }

    @NonNull
    /* renamed from: j */
    private PorterDuffColorFilter m9307j(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        int i = colorForState;
        if (z) {
            i = m9303l(colorForState);
        }
        return new PorterDuffColorFilter(i, mode);
    }

    @NonNull
    /* renamed from: k */
    private PorterDuffColorFilter m9305k(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m9315f(paint, z) : m9307j(colorStateList, mode, z);
    }

    /* renamed from: k0 */
    private boolean m9304k0(int[] iArr) {
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        boolean z = true;
        if (this.f11061f.f11087d == null || color2 == (colorForState2 = this.f11061f.f11087d.getColorForState(iArr, (color2 = this.f11074s.getColor())))) {
            z = false;
        } else {
            this.f11074s.setColor(colorForState2);
            z = true;
        }
        if (!(this.f11061f.f11088e == null || color == (colorForState = this.f11061f.f11088e.getColorForState(iArr, (color = this.f11075t.getColor()))))) {
            this.f11075t.setColor(colorForState);
        }
        return z;
    }

    @ColorInt
    /* renamed from: l */
    private int m9303l(@ColorInt int i) {
        float I = m9342I();
        float z = m9287z();
        ElevationOverlayProvider elevationOverlayProvider = this.f11061f.f11085b;
        int i2 = i;
        if (elevationOverlayProvider != null) {
            i2 = elevationOverlayProvider.m9793c(i, I + z);
        }
        return i2;
    }

    /* renamed from: l0 */
    private boolean m9302l0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f11079x;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f11080y;
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        this.f11079x = m9305k(materialShapeDrawableState.f11090g, materialShapeDrawableState.f11091h, this.f11074s, true);
        MaterialShapeDrawableState materialShapeDrawableState2 = this.f11061f;
        this.f11080y = m9305k(materialShapeDrawableState2.f11089f, materialShapeDrawableState2.f11091h, this.f11075t, false);
        MaterialShapeDrawableState materialShapeDrawableState3 = this.f11061f;
        if (materialShapeDrawableState3.f11104u) {
            this.f11076u.m9357d(materialShapeDrawableState3.f11090g.getColorForState(getState(), 0));
        }
        boolean z = true;
        if (ObjectsCompat.m19346a(porterDuffColorFilter, this.f11079x)) {
            z = !ObjectsCompat.m19346a(porterDuffColorFilter2, this.f11080y);
        }
        return z;
    }

    @NonNull
    /* renamed from: m */
    public static MaterialShapeDrawable m9301m(Context context, float f) {
        int b = MaterialColors.m10015b(context, C1027R.attr.colorSurface, MaterialShapeDrawable.class.getSimpleName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.m9338M(context);
        materialShapeDrawable.m9328W(ColorStateList.valueOf(b));
        materialShapeDrawable.m9329V(f);
        return materialShapeDrawable;
    }

    /* renamed from: m0 */
    private void m9300m0() {
        float I = m9342I();
        this.f11061f.f11101r = (int) Math.ceil(0.75f * I);
        this.f11061f.f11102s = (int) Math.ceil(I * 0.25f);
        m9302l0();
        m9337N();
    }

    /* renamed from: n */
    private void m9299n(@NonNull Canvas canvas) {
        if (this.f11064i.cardinality() > 0) {
            Log.w(f11058B, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f11061f.f11102s != 0) {
            canvas.drawPath(this.f11067l, this.f11076u.m9358c());
        }
        for (int i = 0; i < 4; i++) {
            this.f11062g[i].m9151b(this.f11076u, this.f11061f.f11101r, canvas);
            this.f11063h[i].m9151b(this.f11076u, this.f11061f.f11101r, canvas);
        }
        if (this.f11060A) {
            int A = m9350A();
            int B = m9349B();
            canvas.translate(-A, -B);
            canvas.drawPath(this.f11067l, f11059C);
            canvas.translate(A, B);
        }
    }

    /* renamed from: o */
    private void m9298o(@NonNull Canvas canvas) {
        m9296q(canvas, this.f11074s, this.f11067l, this.f11061f.f11084a, m9292u());
    }

    /* renamed from: q */
    private void m9296q(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull ShapeAppearanceModel shapeAppearanceModel, @NonNull RectF rectF) {
        if (shapeAppearanceModel.m9257u(rectF)) {
            float a = shapeAppearanceModel.m9258t().mo9279a(rectF) * this.f11061f.f11094k;
            canvas.drawRoundRect(rectF, a, a, paint);
            return;
        }
        canvas.drawPath(path, paint);
    }

    /* renamed from: r */
    private void m9295r(@NonNull Canvas canvas) {
        m9296q(canvas, this.f11075t, this.f11068m, this.f11073r, m9291v());
    }

    @NonNull
    /* renamed from: v */
    private RectF m9291v() {
        this.f11070o.set(m9292u());
        float D = m9347D();
        this.f11070o.inset(D, D);
        return this.f11070o;
    }

    /* renamed from: A */
    public int m9350A() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        return (int) (materialShapeDrawableState.f11102s * Math.sin(Math.toRadians(materialShapeDrawableState.f11103t)));
    }

    /* renamed from: B */
    public int m9349B() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        return (int) (materialShapeDrawableState.f11102s * Math.cos(Math.toRadians(materialShapeDrawableState.f11103t)));
    }

    /* renamed from: C */
    public int m9348C() {
        return this.f11061f.f11101r;
    }

    @Nullable
    /* renamed from: E */
    public ColorStateList m9346E() {
        return this.f11061f.f11090g;
    }

    /* renamed from: F */
    public float m9345F() {
        return this.f11061f.f11084a.m9260r().mo9279a(m9292u());
    }

    /* renamed from: G */
    public float m9344G() {
        return this.f11061f.f11084a.m9258t().mo9279a(m9292u());
    }

    /* renamed from: H */
    public float m9343H() {
        return this.f11061f.f11099p;
    }

    /* renamed from: I */
    public float m9342I() {
        return m9290w() + m9343H();
    }

    /* renamed from: M */
    public void m9338M(Context context) {
        this.f11061f.f11085b = new ElevationOverlayProvider(context);
        m9300m0();
    }

    /* renamed from: O */
    public boolean m9336O() {
        ElevationOverlayProvider elevationOverlayProvider = this.f11061f.f11085b;
        return elevationOverlayProvider != null && elevationOverlayProvider.m9792d();
    }

    @RestrictTo
    /* renamed from: P */
    public boolean m9335P() {
        return this.f11061f.f11084a.m9257u(m9292u());
    }

    /* renamed from: T */
    public boolean m9331T() {
        return Build.VERSION.SDK_INT < 21 || (!m9335P() && !this.f11067l.isConvex() && Build.VERSION.SDK_INT < 29);
    }

    /* renamed from: U */
    public void m9330U(float f) {
        setShapeAppearanceModel(this.f11061f.f11084a.m9255w(f));
    }

    /* renamed from: V */
    public void m9329V(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11098o != f) {
            materialShapeDrawableState.f11098o = f;
            m9300m0();
        }
    }

    /* renamed from: W */
    public void m9328W(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11087d != colorStateList) {
            materialShapeDrawableState.f11087d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: X */
    public void m9327X(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11094k != f) {
            materialShapeDrawableState.f11094k = f;
            this.f11065j = true;
            invalidateSelf();
        }
    }

    /* renamed from: Y */
    public void m9326Y(int i, int i2, int i3, int i4) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11092i == null) {
            materialShapeDrawableState.f11092i = new Rect();
        }
        this.f11061f.f11092i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    /* renamed from: Z */
    public void m9325Z(Paint.Style style) {
        this.f11061f.f11105v = style;
        m9337N();
    }

    /* renamed from: a0 */
    public void m9324a0(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11097n != f) {
            materialShapeDrawableState.f11097n = f;
            m9300m0();
        }
    }

    @RestrictTo
    /* renamed from: b0 */
    public void m9322b0(boolean z) {
        this.f11060A = z;
    }

    /* renamed from: c0 */
    public void m9320c0(int i) {
        this.f11076u.m9357d(i);
        this.f11061f.f11104u = false;
        m9337N();
    }

    /* renamed from: d0 */
    public void m9318d0(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11103t != i) {
            materialShapeDrawableState.f11103t = i;
            m9337N();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f11074s.setColorFilter(this.f11079x);
        int alpha = this.f11074s.getAlpha();
        this.f11074s.setAlpha(m9333R(alpha, this.f11061f.f11096m));
        this.f11075t.setColorFilter(this.f11080y);
        this.f11075t.setStrokeWidth(this.f11061f.f11095l);
        int alpha2 = this.f11075t.getAlpha();
        this.f11075t.setAlpha(m9333R(alpha2, this.f11061f.f11096m));
        if (this.f11065j) {
            m9309i();
            m9313g(m9292u(), this.f11067l);
            this.f11065j = false;
        }
        m9334Q(canvas);
        if (m9340K()) {
            m9298o(canvas);
        }
        if (m9339L()) {
            m9295r(canvas);
        }
        this.f11074s.setAlpha(alpha);
        this.f11075t.setAlpha(alpha2);
    }

    /* renamed from: e0 */
    public void m9316e0(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11100q != i) {
            materialShapeDrawableState.f11100q = i;
            m9337N();
        }
    }

    @RestrictTo
    /* renamed from: f0 */
    public void m9314f0(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11102s != i) {
            materialShapeDrawableState.f11102s = i;
            m9337N();
        }
    }

    /* renamed from: g0 */
    public void m9312g0(float f, @ColorInt int i) {
        m9306j0(f);
        m9308i0(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f11061f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f11061f.f11100q != 2) {
            if (m9335P()) {
                outline.setRoundRect(getBounds(), m9345F() * this.f11061f.f11094k);
                return;
            }
            m9313g(m9292u(), this.f11067l);
            if (this.f11067l.isConvex() || Build.VERSION.SDK_INT >= 29) {
                try {
                    outline.setConvexPath(this.f11067l);
                } catch (IllegalArgumentException e) {
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f11061f.f11092i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f11061f.f11084a;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f11071p.set(getBounds());
        m9313g(m9292u(), this.f11067l);
        this.f11072q.setPath(this.f11067l, this.f11071p);
        this.f11071p.op(this.f11072q, Region.Op.DIFFERENCE);
        return this.f11071p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: h */
    public final void m9311h(@NonNull RectF rectF, @NonNull Path path) {
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.f11078w;
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        shapeAppearancePathProvider.m9214e(materialShapeDrawableState.f11084a, materialShapeDrawableState.f11094k, rectF, this.f11077v, path);
    }

    /* renamed from: h0 */
    public void m9310h0(float f, @Nullable ColorStateList colorStateList) {
        m9306j0(f);
        m9308i0(colorStateList);
    }

    /* renamed from: i0 */
    public void m9308i0(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11088e != colorStateList) {
            materialShapeDrawableState.f11088e = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f11065j = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f11061f.f11090g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f11061f.f11089f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f11061f.f11088e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f11061f.f11087d) != null && colorStateList4.isStateful())));
    }

    /* renamed from: j0 */
    public void m9306j0(float f) {
        this.f11061f.f11095l = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f11061f = new MaterialShapeDrawableState(this.f11061f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f11065j = true;
        super.onBoundsChange(rect);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        boolean z = m9304k0(iArr) || m9302l0();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: p */
    public void m9297p(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        m9296q(canvas, paint, path, this.f11061f.f11084a, rectF);
    }

    /* renamed from: s */
    public float m9294s() {
        return this.f11061f.f11084a.m9268j().mo9279a(m9292u());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11096m != i) {
            materialShapeDrawableState.f11096m = i;
            m9337N();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f11061f.f11086c = colorFilter;
        m9337N();
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11061f.f11084a = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f11061f.f11090g = colorStateList;
        m9302l0();
        m9337N();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f11061f;
        if (materialShapeDrawableState.f11091h != mode) {
            materialShapeDrawableState.f11091h = mode;
            m9302l0();
            m9337N();
        }
    }

    /* renamed from: t */
    public float m9293t() {
        return this.f11061f.f11084a.m9266l().mo9279a(m9292u());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    /* renamed from: u */
    public RectF m9292u() {
        this.f11069n.set(getBounds());
        return this.f11069n;
    }

    /* renamed from: w */
    public float m9290w() {
        return this.f11061f.f11098o;
    }

    @Nullable
    /* renamed from: x */
    public ColorStateList m9289x() {
        return this.f11061f.f11087d;
    }

    /* renamed from: y */
    public float m9288y() {
        return this.f11061f.f11094k;
    }

    /* renamed from: z */
    public float m9287z() {
        return this.f11061f.f11097n;
    }
}
