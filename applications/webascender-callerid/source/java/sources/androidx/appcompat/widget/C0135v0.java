package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.p004c.C0214f;
import f.a.k.a.a;
/* renamed from: androidx.appcompat.widget.v0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v0.class */
public class C0135v0 {

    /* renamed from: a */
    private final Context f592a;

    /* renamed from: b */
    private final TypedArray f593b;

    /* renamed from: c */
    private TypedValue f594c;

    private C0135v0(Context context, TypedArray typedArray) {
        this.f592a = context;
        this.f593b = typedArray;
    }

    /* renamed from: t */
    public static C0135v0 m6447t(Context context, int i, int[] iArr) {
        return new C0135v0(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: u */
    public static C0135v0 m6446u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0135v0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: v */
    public static C0135v0 m6445v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0135v0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public boolean m6466a(int i, boolean z) {
        return this.f593b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m6465b(int i, int i2) {
        return this.f593b.getColor(i, i2);
    }

    /* renamed from: c */
    public ColorStateList m6464c(int i) {
        int resourceId;
        ColorStateList c;
        return (!this.f593b.hasValue(i) || (resourceId = this.f593b.getResourceId(i, 0)) == 0 || (c = a.c(this.f592a, resourceId)) == null) ? this.f593b.getColorStateList(i) : c;
    }

    /* renamed from: d */
    public float m6463d(int i, float f) {
        return this.f593b.getDimension(i, f);
    }

    /* renamed from: e */
    public int m6462e(int i, int i2) {
        return this.f593b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: f */
    public int m6461f(int i, int i2) {
        return this.f593b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: g */
    public Drawable m6460g(int i) {
        int resourceId;
        return (!this.f593b.hasValue(i) || (resourceId = this.f593b.getResourceId(i, 0)) == 0) ? this.f593b.getDrawable(i) : a.d(this.f592a, resourceId);
    }

    /* renamed from: h */
    public Drawable m6459h(int i) {
        int resourceId;
        if (!this.f593b.hasValue(i) || (resourceId = this.f593b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0112i.m6563b().m6561d(this.f592a, resourceId, true);
    }

    /* renamed from: i */
    public float m6458i(int i, float f) {
        return this.f593b.getFloat(i, f);
    }

    /* renamed from: j */
    public Typeface m6457j(int i, int i2, C0214f.AbstractC0215a abstractC0215a) {
        int resourceId = this.f593b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f594c == null) {
            this.f594c = new TypedValue();
        }
        return C0214f.m6002d(this.f592a, resourceId, this.f594c, i2, abstractC0215a);
    }

    /* renamed from: k */
    public int m6456k(int i, int i2) {
        return this.f593b.getInt(i, i2);
    }

    /* renamed from: l */
    public int m6455l(int i, int i2) {
        return this.f593b.getInteger(i, i2);
    }

    /* renamed from: m */
    public int m6454m(int i, int i2) {
        return this.f593b.getLayoutDimension(i, i2);
    }

    /* renamed from: n */
    public int m6453n(int i, int i2) {
        return this.f593b.getResourceId(i, i2);
    }

    /* renamed from: o */
    public String m6452o(int i) {
        return this.f593b.getString(i);
    }

    /* renamed from: p */
    public CharSequence m6451p(int i) {
        return this.f593b.getText(i);
    }

    /* renamed from: q */
    public CharSequence[] m6450q(int i) {
        return this.f593b.getTextArray(i);
    }

    /* renamed from: r */
    public TypedArray m6449r() {
        return this.f593b;
    }

    /* renamed from: s */
    public boolean m6448s(int i) {
        return this.f593b.hasValue(i);
    }

    /* renamed from: w */
    public void m6444w() {
        this.f593b.recycle();
    }
}
