package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p042i.p044i.p045c.C0882f;
/* renamed from: b.b.q.f0 */
/* loaded from: classes-dex2jar.jar:b/b/q/f0.class */
public class C0691f0 {

    /* renamed from: a */
    public final Context f3411a;

    /* renamed from: b */
    public final TypedArray f3412b;

    /* renamed from: c */
    public TypedValue f3413c;

    public C0691f0(Context context, TypedArray typedArray) {
        this.f3411a = context;
        this.f3412b = typedArray;
    }

    /* renamed from: a */
    public static C0691f0 m36416a(Context context, int i, int[] iArr) {
        return new C0691f0(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: a */
    public static C0691f0 m36415a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0691f0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public static C0691f0 m36414a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0691f0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: a */
    public float m36420a(int i, float f) {
        return this.f3412b.getFloat(i, f);
    }

    /* renamed from: a */
    public int m36419a(int i, int i2) {
        return this.f3412b.getColor(i, i2);
    }

    /* renamed from: a */
    public ColorStateList m36421a(int i) {
        int resourceId;
        ColorStateList b;
        return (!this.f3412b.hasValue(i) || (resourceId = this.f3412b.getResourceId(i, 0)) == 0 || (b = C0601a.m36778b(this.f3411a, resourceId)) == null) ? this.f3412b.getColorStateList(i) : b;
    }

    /* renamed from: a */
    public TypedArray m36422a() {
        return this.f3412b;
    }

    /* renamed from: a */
    public Typeface m36418a(int i, int i2, C0882f.AbstractC0883a aVar) {
        int resourceId = this.f3412b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f3413c == null) {
            this.f3413c = new TypedValue();
        }
        return C0882f.m35637a(this.f3411a, resourceId, this.f3413c, i2, aVar);
    }

    /* renamed from: a */
    public boolean m36417a(int i, boolean z) {
        return this.f3412b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m36411b(int i, int i2) {
        return this.f3412b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: b */
    public Drawable m36412b(int i) {
        int resourceId;
        return (!this.f3412b.hasValue(i) || (resourceId = this.f3412b.getResourceId(i, 0)) == 0) ? this.f3412b.getDrawable(i) : C0601a.m36777c(this.f3411a, resourceId);
    }

    /* renamed from: b */
    public void m36413b() {
        this.f3412b.recycle();
    }

    /* renamed from: c */
    public int m36409c(int i, int i2) {
        return this.f3412b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: c */
    public Drawable m36410c(int i) {
        int resourceId;
        if (!this.f3412b.hasValue(i) || (resourceId = this.f3412b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0689f.m36432b().m36434a(this.f3411a, resourceId, true);
    }

    /* renamed from: d */
    public int m36407d(int i, int i2) {
        return this.f3412b.getInt(i, i2);
    }

    /* renamed from: d */
    public String m36408d(int i) {
        return this.f3412b.getString(i);
    }

    /* renamed from: e */
    public int m36405e(int i, int i2) {
        return this.f3412b.getInteger(i, i2);
    }

    /* renamed from: e */
    public CharSequence m36406e(int i) {
        return this.f3412b.getText(i);
    }

    /* renamed from: f */
    public int m36403f(int i, int i2) {
        return this.f3412b.getLayoutDimension(i, i2);
    }

    /* renamed from: f */
    public CharSequence[] m36404f(int i) {
        return this.f3412b.getTextArray(i);
    }

    /* renamed from: g */
    public int m36401g(int i, int i2) {
        return this.f3412b.getResourceId(i, i2);
    }

    /* renamed from: g */
    public boolean m36402g(int i) {
        return this.f3412b.hasValue(i);
    }
}
