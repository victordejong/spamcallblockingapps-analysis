package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import f.a.j;
import f.h.l.t;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.appcompat.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z.class */
public class C0142z {

    /* renamed from: l */
    private static final RectF f625l = new RectF();

    /* renamed from: m */
    private static ConcurrentHashMap<String, Method> f626m = new ConcurrentHashMap<>();

    /* renamed from: n */
    private static ConcurrentHashMap<String, Field> f627n = new ConcurrentHashMap<>();

    /* renamed from: a */
    private int f628a = 0;

    /* renamed from: b */
    private boolean f629b = false;

    /* renamed from: c */
    private float f630c = -1.0f;

    /* renamed from: d */
    private float f631d = -1.0f;

    /* renamed from: e */
    private float f632e = -1.0f;

    /* renamed from: f */
    private int[] f633f = new int[0];

    /* renamed from: g */
    private boolean f634g = false;

    /* renamed from: h */
    private TextPaint f635h;

    /* renamed from: i */
    private final TextView f636i;

    /* renamed from: j */
    private final Context f637j;

    /* renamed from: k */
    private final C0143c f638k;

    /* renamed from: androidx.appcompat.widget.z$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z$c.class */
    public static class C0143c {
        C0143c() {
        }

        /* renamed from: a */
        void m6373a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: b */
        boolean m6372b(TextView textView) {
            return ((Boolean) C0142z.m6382r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public C0142z(TextView textView) {
        this.f636i = textView;
        this.f637j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f638k = new b();
        } else if (i >= 23) {
            this.f638k = new a();
        } else {
            this.f638k = new C0143c();
        }
    }

    /* renamed from: A */
    private void m6404A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f633f = m6397c(iArr);
            m6403B();
        }
    }

    /* renamed from: B */
    private boolean m6403B() {
        int[] iArr = this.f633f;
        int length = iArr.length;
        boolean z = length > 0;
        this.f634g = z;
        if (z) {
            this.f628a = 1;
            this.f631d = iArr[0];
            this.f632e = iArr[length - 1];
            this.f630c = -1.0f;
        }
        return z;
    }

    /* renamed from: C */
    private boolean m6402C(int i, RectF rectF) {
        CharSequence text = this.f636i.getText();
        TransformationMethod transformationMethod = this.f636i.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f636i);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f636i.getMaxLines() : -1;
        m6383q(i);
        StaticLayout m6395e = m6395e(charSequence, (Layout.Alignment) m6382r(this.f636i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (m6395e.getLineCount() <= maxLines && m6395e.getLineEnd(m6395e.getLineCount() - 1) == charSequence.length())) && ((float) m6395e.getHeight()) <= rectF.bottom;
    }

    /* renamed from: D */
    private boolean m6401D() {
        return !(this.f636i instanceof j);
    }

    /* renamed from: E */
    private void m6400E(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f628a = 1;
            this.f631d = f;
            this.f632e = f2;
            this.f630c = f3;
            this.f634g = false;
        }
    }

    /* renamed from: a */
    private static <T> T m6399a(Object obj, String str, T t) {
        try {
            Field m6385o = m6385o(str);
            return m6385o == null ? t : (T) m6385o.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: c */
    private int[] m6397c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* renamed from: d */
    private void m6396d() {
        this.f628a = 0;
        this.f631d = -1.0f;
        this.f632e = -1.0f;
        this.f630c = -1.0f;
        this.f633f = new int[0];
        this.f629b = false;
    }

    /* renamed from: f */
    private StaticLayout m6394f(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f635h, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f636i.getLineSpacingExtra(), this.f636i.getLineSpacingMultiplier()).setIncludePad(this.f636i.getIncludeFontPadding()).setBreakStrategy(this.f636i.getBreakStrategy()).setHyphenationFrequency(this.f636i.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f638k.m6373a(obtain, this.f636i);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: g */
    private StaticLayout m6393g(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f635h, i, alignment, ((Float) m6399a(this.f636i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m6399a(this.f636i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m6399a(this.f636i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    /* renamed from: h */
    private StaticLayout m6392h(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f635h, i, alignment, this.f636i.getLineSpacingMultiplier(), this.f636i.getLineSpacingExtra(), this.f636i.getIncludeFontPadding());
    }

    /* renamed from: i */
    private int m6391i(RectF rectF) {
        int length = this.f633f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m6402C(this.f633f[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f633f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: o */
    private static Field m6385o(String str) {
        try {
            Field field = f627n.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f627n.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    /* renamed from: p */
    private static Method m6384p(String str) {
        try {
            Method method = f626m.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f626m.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: r */
    static <T> T m6382r(Object obj, String str, T t) {
        try {
            t = m6384p(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: x */
    private void m6376x(float f) {
        if (f != this.f636i.getPaint().getTextSize()) {
            this.f636i.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f636i.isInLayout() : false;
            if (this.f636i.getLayout() == null) {
                return;
            }
            this.f629b = false;
            try {
                Method m6384p = m6384p("nullLayouts");
                if (m6384p != null) {
                    m6384p.invoke(this.f636i, new Object[0]);
                }
            } catch (Exception e) {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
            }
            if (!isInLayout) {
                this.f636i.requestLayout();
            } else {
                this.f636i.forceLayout();
            }
            this.f636i.invalidate();
        }
    }

    /* renamed from: z */
    private boolean m6374z() {
        if (!m6401D() || this.f628a != 1) {
            this.f629b = false;
        } else {
            if (!this.f634g || this.f633f.length == 0) {
                int floor = ((int) Math.floor((this.f632e - this.f631d) / this.f630c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f631d + (i * this.f630c));
                }
                this.f633f = m6397c(iArr);
            }
            this.f629b = true;
        }
        return this.f629b;
    }

    /* renamed from: b */
    public void m6398b() {
        if (!m6381s()) {
            return;
        }
        if (this.f629b) {
            if (this.f636i.getMeasuredHeight() <= 0 || this.f636i.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = this.f638k.m6372b(this.f636i) ? 1048576 : (this.f636i.getMeasuredWidth() - this.f636i.getTotalPaddingLeft()) - this.f636i.getTotalPaddingRight();
            int height = (this.f636i.getHeight() - this.f636i.getCompoundPaddingBottom()) - this.f636i.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            RectF rectF = f625l;
            synchronized (rectF) {
                rectF.setEmpty();
                rectF.right = measuredWidth;
                rectF.bottom = height;
                float m6391i = m6391i(rectF);
                if (m6391i != this.f636i.getTextSize()) {
                    m6375y(0, m6391i);
                }
            }
        }
        this.f629b = true;
    }

    /* renamed from: e */
    StaticLayout m6395e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 23 ? m6394f(charSequence, alignment, i, i2) : i3 >= 16 ? m6392h(charSequence, alignment, i) : m6393g(charSequence, alignment, i);
    }

    /* renamed from: j */
    public int m6390j() {
        return Math.round(this.f632e);
    }

    /* renamed from: k */
    public int m6389k() {
        return Math.round(this.f631d);
    }

    /* renamed from: l */
    public int m6388l() {
        return Math.round(this.f630c);
    }

    /* renamed from: m */
    public int[] m6387m() {
        return this.f633f;
    }

    /* renamed from: n */
    public int m6386n() {
        return this.f628a;
    }

    /* renamed from: q */
    void m6383q(int i) {
        TextPaint textPaint = this.f635h;
        if (textPaint == null) {
            this.f635h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f635h.set(this.f636i.getPaint());
        this.f635h.setTextSize(i);
    }

    /* renamed from: s */
    public boolean m6381s() {
        return m6401D() && this.f628a != 0;
    }

    /* renamed from: t */
    public void m6380t(AttributeSet attributeSet, int i) {
        int resourceId;
        Context context = this.f637j;
        int[] iArr = j.d0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView = this.f636i;
        t.i0(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = j.i0;
        if (obtainStyledAttributes.hasValue(i2)) {
            this.f628a = obtainStyledAttributes.getInt(i2, 0);
        }
        int i3 = j.h0;
        float dimension = obtainStyledAttributes.hasValue(i3) ? obtainStyledAttributes.getDimension(i3, -1.0f) : -1.0f;
        int i4 = j.f0;
        float dimension2 = obtainStyledAttributes.hasValue(i4) ? obtainStyledAttributes.getDimension(i4, -1.0f) : -1.0f;
        int i5 = j.e0;
        float dimension3 = obtainStyledAttributes.hasValue(i5) ? obtainStyledAttributes.getDimension(i5, -1.0f) : -1.0f;
        int i6 = j.g0;
        if (obtainStyledAttributes.hasValue(i6) && (resourceId = obtainStyledAttributes.getResourceId(i6, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m6404A(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m6401D()) {
            this.f628a = 0;
        } else if (this.f628a != 1) {
        } else {
            if (!this.f634g) {
                DisplayMetrics displayMetrics = this.f637j.getResources().getDisplayMetrics();
                float f = dimension2;
                if (dimension2 == -1.0f) {
                    f = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                float f2 = dimension3;
                if (dimension3 == -1.0f) {
                    f2 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                float f3 = dimension;
                if (dimension == -1.0f) {
                    f3 = 1.0f;
                }
                m6400E(f, f2, f3);
            }
            m6374z();
        }
    }

    /* renamed from: u */
    public void m6379u(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (m6401D()) {
            DisplayMetrics displayMetrics = this.f637j.getResources().getDisplayMetrics();
            m6400E(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!m6374z()) {
                return;
            }
            m6398b();
        }
    }

    /* renamed from: v */
    public void m6378v(int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        if (m6401D()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f637j.getResources().getDisplayMetrics();
                    while (true) {
                        iArr2 = iArr3;
                        if (i2 >= length) {
                            break;
                        }
                        iArr3[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                        i2++;
                    }
                } else {
                    iArr2 = Arrays.copyOf(iArr, length);
                }
                this.f633f = m6397c(iArr2);
                if (!m6403B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f634g = false;
            }
            if (!m6374z()) {
                return;
            }
            m6398b();
        }
    }

    /* renamed from: w */
    public void m6377w(int i) {
        if (m6401D()) {
            if (i == 0) {
                m6396d();
            } else if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            } else {
                DisplayMetrics displayMetrics = this.f637j.getResources().getDisplayMetrics();
                m6400E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (!m6374z()) {
                    return;
                }
                m6398b();
            }
        }
    }

    /* renamed from: y */
    public void m6375y(int i, float f) {
        Context context = this.f637j;
        m6376x(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
