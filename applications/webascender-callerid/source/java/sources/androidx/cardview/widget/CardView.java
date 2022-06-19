package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import f.d.a;
import f.d.b;
import f.d.d;
import f.d.e;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: m */
    private static final int[] f648m = {16842801};

    /* renamed from: n */
    private static final AbstractC0146e f649n;

    /* renamed from: f */
    private boolean f650f;

    /* renamed from: g */
    private boolean f651g;

    /* renamed from: h */
    int f652h;

    /* renamed from: i */
    int f653i;

    /* renamed from: j */
    final Rect f654j;

    /* renamed from: k */
    final Rect f655k;

    /* renamed from: l */
    private final AbstractC0145d f656l;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f649n = new b();
        } else if (i >= 17) {
            f649n = new a();
        } else {
            f649n = new c();
        }
        f649n.m6348i();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.a);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        Rect rect = new Rect();
        this.f654j = rect;
        this.f655k = new Rect();
        AbstractC0145d aVar = new a(this);
        this.f656l = aVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.a, i, d.a);
        int i2 = e.d;
        if (obtainStyledAttributes.hasValue(i2)) {
            colorStateList = obtainStyledAttributes.getColorStateList(i2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f648m);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(b.b) : getResources().getColor(b.a));
        }
        float dimension = obtainStyledAttributes.getDimension(e.e, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(e.f, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(e.g, 0.0f);
        this.f650f = obtainStyledAttributes.getBoolean(e.i, false);
        this.f651g = obtainStyledAttributes.getBoolean(e.h, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(e.j, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(e.l, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(e.n, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(e.m, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(e.k, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f652h = obtainStyledAttributes.getDimensionPixelSize(e.b, 0);
        this.f653i = obtainStyledAttributes.getDimensionPixelSize(e.c, 0);
        obtainStyledAttributes.recycle();
        f649n.m6356a(aVar, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f649n.m6349h(this.f656l);
    }

    public float getCardElevation() {
        return f649n.m6354c(this.f656l);
    }

    public int getContentPaddingBottom() {
        return this.f654j.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f654j.left;
    }

    public int getContentPaddingRight() {
        return this.f654j.right;
    }

    public int getContentPaddingTop() {
        return this.f654j.top;
    }

    public float getMaxCardElevation() {
        return f649n.m6350g(this.f656l);
    }

    public boolean getPreventCornerOverlap() {
        return this.f651g;
    }

    public float getRadius() {
        return f649n.m6353d(this.f656l);
    }

    public boolean getUseCompatPadding() {
        return this.f650f;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC0146e abstractC0146e = f649n;
        if (abstractC0146e instanceof b) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0146e.m6346k(this.f656l)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0146e.m6347j(this.f656l)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f649n.m6344m(this.f656l, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f649n.m6344m(this.f656l, colorStateList);
    }

    public void setCardElevation(float f) {
        f649n.m6351f(this.f656l, f);
    }

    public void setMaxCardElevation(float f) {
        f649n.m6343n(this.f656l, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f653i = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f652h = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f651g) {
            this.f651g = z;
            f649n.m6345l(this.f656l);
        }
    }

    public void setRadius(float f) {
        f649n.m6355b(this.f656l, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f650f != z) {
            this.f650f = z;
            f649n.m6352e(this.f656l);
        }
    }
}
