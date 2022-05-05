package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.content.p033a.C0641f;
/* renamed from: androidx.appcompat.widget.bm */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bm.class */
public final class C0484bm {

    /* renamed from: a */
    private final Context f2336a;

    /* renamed from: b */
    private final TypedArray f2337b;

    /* renamed from: c */
    private TypedValue f2338c;

    private C0484bm(Context context, TypedArray typedArray) {
        this.f2336a = context;
        this.f2337b = typedArray;
    }

    /* renamed from: a */
    public static C0484bm m9094a(Context context, int i, int[] iArr) {
        return new C0484bm(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: a */
    public static C0484bm m9093a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0484bm(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public static C0484bm m9092a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0484bm(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public final float m9098a(int i, float f) {
        return this.f2337b.getFloat(i, f);
    }

    /* renamed from: a */
    public final int m9097a(int i, int i2) {
        return this.f2337b.getInt(i, i2);
    }

    /* renamed from: a */
    public final Typeface m9096a(int i, int i2, C0641f.AbstractC0642a aVar) {
        int resourceId = this.f2337b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f2338c == null) {
            this.f2338c = new TypedValue();
        }
        return C0641f.m8644a(this.f2336a, resourceId, this.f2338c, i2, aVar);
    }

    /* renamed from: a */
    public final Drawable m9099a(int i) {
        int resourceId;
        return (!this.f2337b.hasValue(i) || (resourceId = this.f2337b.getResourceId(i, 0)) == 0) ? this.f2337b.getDrawable(i) : C0258a.m9951b(this.f2336a, resourceId);
    }

    /* renamed from: a */
    public final void m9100a() {
        this.f2337b.recycle();
    }

    /* renamed from: a */
    public final boolean m9095a(int i, boolean z) {
        return this.f2337b.getBoolean(i, z);
    }

    /* renamed from: b */
    public final int m9090b(int i, int i2) {
        return this.f2337b.getInteger(i, i2);
    }

    /* renamed from: b */
    public final Drawable m9091b(int i) {
        int resourceId;
        if (!this.f2337b.hasValue(i) || (resourceId = this.f2337b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0519q.m8987b().m8986b(this.f2336a, resourceId);
    }

    /* renamed from: c */
    public final int m9088c(int i, int i2) {
        return this.f2337b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: c */
    public final CharSequence m9089c(int i) {
        return this.f2337b.getText(i);
    }

    /* renamed from: d */
    public final int m9086d(int i, int i2) {
        return this.f2337b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: d */
    public final String m9087d(int i) {
        return this.f2337b.getString(i);
    }

    /* renamed from: e */
    public final int m9085e(int i) {
        return this.f2337b.getColor(i, 0);
    }

    /* renamed from: e */
    public final int m9084e(int i, int i2) {
        return this.f2337b.getLayoutDimension(i, i2);
    }

    /* renamed from: f */
    public final int m9082f(int i, int i2) {
        return this.f2337b.getResourceId(i, i2);
    }

    /* renamed from: f */
    public final ColorStateList m9083f(int i) {
        int resourceId;
        ColorStateList a;
        return (!this.f2337b.hasValue(i) || (resourceId = this.f2337b.getResourceId(i, 0)) == 0 || (a = C0258a.m9952a(this.f2336a, resourceId)) == null) ? this.f2337b.getColorStateList(i) : a;
    }

    /* renamed from: g */
    public final float m9081g(int i) {
        return this.f2337b.getDimension(i, 0.0f);
    }

    /* renamed from: h */
    public final CharSequence[] m9080h(int i) {
        return this.f2337b.getTextArray(i);
    }

    /* renamed from: i */
    public final boolean m9079i(int i) {
        return this.f2337b.hasValue(i);
    }
}
