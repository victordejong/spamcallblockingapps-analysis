package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.ae */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae.class */
public final class C0434ae {

    /* renamed from: a */
    private static final RectF f2197a = new RectF();

    /* renamed from: b */
    private static ConcurrentHashMap<String, Method> f2198b = new ConcurrentHashMap<>();

    /* renamed from: c */
    private static ConcurrentHashMap<String, Field> f2199c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private int f2200d = 0;

    /* renamed from: e */
    private boolean f2201e = false;

    /* renamed from: f */
    private float f2202f = -1.0f;

    /* renamed from: g */
    private float f2203g = -1.0f;

    /* renamed from: h */
    private float f2204h = -1.0f;

    /* renamed from: i */
    private int[] f2205i = new int[0];

    /* renamed from: j */
    private boolean f2206j = false;

    /* renamed from: k */
    private TextPaint f2207k;

    /* renamed from: l */
    private final TextView f2208l;

    /* renamed from: m */
    private final Context f2209m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0434ae(TextView textView) {
        this.f2208l = textView;
        this.f2209m = this.f2208l.getContext();
    }

    /* renamed from: a */
    private int m9203a(RectF rectF) {
        int length = this.f2205i.length;
        if (length != 0) {
            int i = 0;
            int i2 = 1;
            int i3 = length - 1;
            while (i2 <= i3) {
                int i4 = (i2 + i3) / 2;
                if (m9204a(this.f2205i[i4], rectF)) {
                    i2 = i4 + 1;
                    i = i2;
                } else {
                    i = i4 - 1;
                    i3 = i;
                }
            }
            return this.f2205i[i];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: a */
    private StaticLayout m9201a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return m9194b(charSequence, alignment, i, i2);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new StaticLayout(charSequence, this.f2207k, i, alignment, this.f2208l.getLineSpacingMultiplier(), this.f2208l.getLineSpacingExtra(), this.f2208l.getIncludeFontPadding());
        }
        return new StaticLayout(charSequence, this.f2207k, i, alignment, ((Float) m9193b(this.f2208l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m9193b(this.f2208l, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m9193b(this.f2208l, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    /* renamed from: a */
    private static <T> T m9200a(Object obj, String str, T t) {
        try {
            t = (T) m9199a(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: a */
    private static Method m9199a(String str) {
        try {
            Method method = f2198b.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f2198b.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: a */
    private void m9209a(float f) {
        if (f != this.f2208l.getPaint().getTextSize()) {
            this.f2208l.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f2208l.isInLayout() : false;
            if (this.f2208l.getLayout() != null) {
                this.f2201e = false;
                try {
                    Method a = m9199a("nullLayouts");
                    if (a != null) {
                        a.invoke(this.f2208l, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    this.f2208l.requestLayout();
                } else {
                    this.f2208l.forceLayout();
                }
                this.f2208l.invalidate();
            }
        }
    }

    /* renamed from: a */
    private void m9208a(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 > 0.0f) {
            this.f2200d = 1;
            this.f2203g = f;
            this.f2204h = f2;
            this.f2202f = f3;
            this.f2206j = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
    }

    /* renamed from: a */
    private boolean m9204a(int i, RectF rectF) {
        CharSequence text = this.f2208l.getText();
        TransformationMethod transformationMethod = this.f2208l.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f2208l);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f2208l.getMaxLines() : -1;
        m9195b(i);
        StaticLayout a = m9201a(charSequence, (Layout.Alignment) m9200a(this.f2208l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (a.getLineCount() <= maxLines && a.getLineEnd(a.getLineCount() - 1) == charSequence.length())) && ((float) a.getHeight()) <= rectF.bottom;
    }

    /* renamed from: a */
    private static int[] m9198a(int[] iArr) {
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

    /* renamed from: b */
    private StaticLayout m9194b(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f2207k, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f2208l.getLineSpacingExtra(), this.f2208l.getLineSpacingMultiplier()).setIncludePad(this.f2208l.getIncludeFontPadding()).setBreakStrategy(this.f2208l.getBreakStrategy()).setHyphenationFrequency(this.f2208l.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            obtain.setTextDirection(Build.VERSION.SDK_INT >= 29 ? this.f2208l.getTextDirectionHeuristic() : (TextDirectionHeuristic) m9200a(this.f2208l, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: b */
    private static <T> T m9193b(Object obj, String str, T t) {
        try {
            Field b = m9192b(str);
            return b == null ? t : (T) b.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: b */
    private static Field m9192b(String str) {
        try {
            Field field = f2199c.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f2199c.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    /* renamed from: b */
    private void m9195b(int i) {
        TextPaint textPaint = this.f2207k;
        if (textPaint == null) {
            this.f2207k = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f2207k.set(this.f2208l.getPaint());
        this.f2207k.setTextSize(i);
    }

    /* renamed from: h */
    private boolean m9186h() {
        int length = this.f2205i.length;
        this.f2206j = length > 0;
        if (this.f2206j) {
            this.f2200d = 1;
            int[] iArr = this.f2205i;
            this.f2203g = iArr[0];
            this.f2204h = iArr[length - 1];
            this.f2202f = -1.0f;
        }
        return this.f2206j;
    }

    /* renamed from: i */
    private boolean m9185i() {
        if (!m9184j() || this.f2200d != 1) {
            this.f2201e = false;
        } else {
            if (!this.f2206j || this.f2205i.length == 0) {
                int floor = ((int) Math.floor((this.f2204h - this.f2203g) / this.f2202f)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f2203g + (i * this.f2202f));
                }
                this.f2205i = m9198a(iArr);
            }
            this.f2201e = true;
        }
        return this.f2201e;
    }

    /* renamed from: j */
    private boolean m9184j() {
        return !(this.f2208l instanceof AppCompatEditText);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m9210a() {
        return this.f2200d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9207a(int i) {
        if (!m9184j()) {
            return;
        }
        if (i == 0) {
            this.f2200d = 0;
            this.f2203g = -1.0f;
            this.f2204h = -1.0f;
            this.f2202f = -1.0f;
            this.f2205i = new int[0];
            this.f2201e = false;
        } else if (i == 1) {
            DisplayMetrics displayMetrics = this.f2209m.getResources().getDisplayMetrics();
            m9208a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (m9185i()) {
                m9188f();
            }
        } else {
            throw new IllegalArgumentException("Unknown auto-size text type: ".concat(String.valueOf(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9206a(int i, float f) {
        Context context = this.f2209m;
        m9209a(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9205a(int i, int i2, int i3, int i4) {
        if (m9184j()) {
            DisplayMetrics displayMetrics = this.f2209m.getResources().getDisplayMetrics();
            m9208a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m9185i()) {
                m9188f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9202a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f2209m.obtainStyledAttributes(attributeSet, C0247a.C0257j.f803ak, i, 0);
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f808ap)) {
            this.f2200d = obtainStyledAttributes.getInt(C0247a.C0257j.f808ap, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0247a.C0257j.f807ao) ? obtainStyledAttributes.getDimension(C0247a.C0257j.f807ao, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0247a.C0257j.f805am) ? obtainStyledAttributes.getDimension(C0247a.C0257j.f805am, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0247a.C0257j.f804al) ? obtainStyledAttributes.getDimension(C0247a.C0257j.f804al, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f806an) && (resourceId = obtainStyledAttributes.getResourceId(C0247a.C0257j.f806an, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr = new int[length];
            if (length > 0) {
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[i2] = obtainTypedArray.getDimensionPixelSize(i2, -1);
                }
                this.f2205i = m9198a(iArr);
                m9186h();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m9184j()) {
            this.f2200d = 0;
        } else if (this.f2200d == 1) {
            if (!this.f2206j) {
                DisplayMetrics displayMetrics = this.f2209m.getResources().getDisplayMetrics();
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
                m9208a(f, f2, f3);
            }
            m9185i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9197a(int[] iArr, int i) {
        int[] iArr2;
        if (m9184j()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f2209m.getResources().getDisplayMetrics();
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
                this.f2205i = m9198a(iArr2);
                if (!m9186h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f2206j = false;
            }
            if (m9185i()) {
                m9188f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m9196b() {
        return Math.round(this.f2202f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m9191c() {
        return Math.round(this.f2203g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final int m9190d() {
        return Math.round(this.f2204h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final int[] m9189e() {
        return this.f2205i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m9188f() {
        if (m9187g()) {
            if (this.f2201e) {
                if (this.f2208l.getMeasuredHeight() > 0 && this.f2208l.getMeasuredWidth() > 0) {
                    int measuredWidth = Build.VERSION.SDK_INT >= 29 ? this.f2208l.isHorizontallyScrollable() : ((Boolean) m9200a(this.f2208l, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue() ? 1048576 : (this.f2208l.getMeasuredWidth() - this.f2208l.getTotalPaddingLeft()) - this.f2208l.getTotalPaddingRight();
                    int height = (this.f2208l.getHeight() - this.f2208l.getCompoundPaddingBottom()) - this.f2208l.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        synchronized (f2197a) {
                            f2197a.setEmpty();
                            f2197a.right = measuredWidth;
                            f2197a.bottom = height;
                            float a = m9203a(f2197a);
                            if (a != this.f2208l.getTextSize()) {
                                m9206a(0, a);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f2201e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final boolean m9187g() {
        return m9184j() && this.f2200d != 0;
    }
}
