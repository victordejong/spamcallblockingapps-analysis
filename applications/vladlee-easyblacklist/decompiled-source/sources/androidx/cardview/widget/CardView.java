package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.cardview.C0559a;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: e */
    private static final int[] f2573e = {16842801};

    /* renamed from: f */
    private static final AbstractC0572h f2574f;

    /* renamed from: a */
    int f2575a;

    /* renamed from: b */
    int f2576b;

    /* renamed from: c */
    final Rect f2577c;

    /* renamed from: d */
    final Rect f2578d;

    /* renamed from: g */
    private boolean f2579g;

    /* renamed from: h */
    private boolean f2580h;

    /* renamed from: i */
    private final AbstractC0571g f2581i;

    static {
        f2574f = Build.VERSION.SDK_INT >= 21 ? new C0568d() : Build.VERSION.SDK_INT >= 17 ? new C0566b() : new C0569e();
        f2574f.mo8838a();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0559a.C0560a.f2552a);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        int i2;
        Resources resources;
        this.f2577c = new Rect();
        this.f2578d = new Rect();
        this.f2581i = new C0565a(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0559a.C0564e.f2559a, i, C0559a.C0563d.f2558a);
        if (obtainStyledAttributes.hasValue(C0559a.C0564e.f2562d)) {
            colorStateList = obtainStyledAttributes.getColorStateList(C0559a.C0564e.f2562d);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f2573e);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            if (fArr[2] > 0.5f) {
                resources = getResources();
                i2 = C0559a.C0561b.f2554b;
            } else {
                resources = getResources();
                i2 = C0559a.C0561b.f2553a;
            }
            colorStateList = ColorStateList.valueOf(resources.getColor(i2));
        }
        float dimension = obtainStyledAttributes.getDimension(C0559a.C0564e.f2563e, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(C0559a.C0564e.f2564f, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(C0559a.C0564e.f2565g, 0.0f);
        this.f2579g = obtainStyledAttributes.getBoolean(C0559a.C0564e.f2567i, false);
        this.f2580h = obtainStyledAttributes.getBoolean(C0559a.C0564e.f2566h, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2568j, 0);
        this.f2577c.left = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2570l, dimensionPixelSize);
        this.f2577c.top = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2572n, dimensionPixelSize);
        this.f2577c.right = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2571m, dimensionPixelSize);
        this.f2577c.bottom = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2569k, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f2575a = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2560b, 0);
        this.f2576b = obtainStyledAttributes.getDimensionPixelSize(C0559a.C0564e.f2561c, 0);
        obtainStyledAttributes.recycle();
        f2574f.mo8836a(this.f2581i, context, colorStateList, dimension, dimension2, dimension3);
    }

    /* renamed from: a */
    public final void m8858a(int i, int i2, int i3, int i4) {
        this.f2577c.set(i, i2, i3, i4);
        f2574f.mo8833d(this.f2581i);
    }

    /* renamed from: c */
    public final int m8854c() {
        return this.f2577c.right;
    }

    /* renamed from: f */
    public final float m8853f() {
        return f2574f.mo8834c(this.f2581i);
    }

    /* renamed from: g */
    public final boolean m8852g() {
        return this.f2580h;
    }

    /* renamed from: m_ */
    public final boolean m8851m_() {
        return this.f2579g;
    }

    /* renamed from: n_ */
    public final int m8850n_() {
        return this.f2577c.left;
    }

    /* renamed from: o_ */
    public final int m8849o_() {
        return this.f2577c.top;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!(f2574f instanceof C0568d)) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f2574f.mo8837a(this.f2581i)), View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f2574f.mo8835b(this.f2581i)), View.MeasureSpec.getSize(i2)), mode2);
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    /* renamed from: p_ */
    public final int m8848p_() {
        return this.f2577c.bottom;
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f2576b = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f2575a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }
}
