package p012b.p016b.p026q;

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
import androidx.appcompat.widget.AppCompatEditText;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
import p012b.p016b.C0583j;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.q.m */
/* loaded from: classes-dex2jar.jar:b/b/q/m.class */
public class C0709m {

    /* renamed from: l */
    public static final RectF f3491l = new RectF();

    /* renamed from: m */
    public static ConcurrentHashMap<String, Method> f3492m = new ConcurrentHashMap<>();

    /* renamed from: n */
    public static ConcurrentHashMap<String, Field> f3493n = new ConcurrentHashMap<>();

    /* renamed from: a */
    public int f3494a = 0;

    /* renamed from: b */
    public boolean f3495b = false;

    /* renamed from: c */
    public float f3496c = -1.0f;

    /* renamed from: d */
    public float f3497d = -1.0f;

    /* renamed from: e */
    public float f3498e = -1.0f;

    /* renamed from: f */
    public int[] f3499f = new int[0];

    /* renamed from: g */
    public boolean f3500g = false;

    /* renamed from: h */
    public TextPaint f3501h;

    /* renamed from: i */
    public final TextView f3502i;

    /* renamed from: j */
    public final Context f3503j;

    /* renamed from: k */
    public final C0712c f3504k;

    /* renamed from: b.b.q.m$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/m$a.class */
    public static class C0710a extends C0712c {
        @Override // p012b.p016b.p026q.C0709m.C0712c
        /* renamed from: a */
        public void mo36285a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C0709m.m36296b(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* renamed from: b.b.q.m$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/m$b.class */
    public static class C0711b extends C0710a {
        @Override // p012b.p016b.p026q.C0709m.C0710a, p012b.p016b.p026q.C0709m.C0712c
        /* renamed from: a */
        public void mo36285a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // p012b.p016b.p026q.C0709m.C0712c
        /* renamed from: a */
        public boolean mo36284a(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* renamed from: b.b.q.m$c */
    /* loaded from: classes-dex2jar.jar:b/b/q/m$c.class */
    public static class C0712c {
        /* renamed from: a */
        public void mo36285a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: a */
        public boolean mo36284a(TextView textView) {
            return ((Boolean) C0709m.m36296b(textView, "getHorizontallyScrolling", false)).booleanValue();
        }
    }

    public C0709m(TextView textView) {
        this.f3502i = textView;
        this.f3503j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f3504k = new C0711b();
        } else if (i >= 23) {
            this.f3504k = new C0710a();
        } else {
            this.f3504k = new C0712c();
        }
    }

    /* renamed from: a */
    public static <T> T m36304a(Object obj, String str, T t) {
        try {
            Field a = m36303a(str);
            return a == null ? t : (T) a.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: a */
    public static Field m36303a(String str) {
        try {
            Field field = f3493n.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f3493n.put(str, declaredField);
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
    public static <T> T m36296b(Object obj, String str, T t) {
        try {
            t = (T) m36295b(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: b */
    public static Method m36295b(String str) {
        try {
            Method method = f3492m.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f3492m.put(str, declaredMethod);
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
    public final int m36308a(RectF rectF) {
        int length = this.f3499f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m36310a(this.f3499f[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f3499f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: a */
    public final StaticLayout m36306a(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f3501h, i, alignment, ((Float) m36304a(this.f3502i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m36304a(this.f3502i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m36304a(this.f3502i, "mIncludePad", true)).booleanValue());
    }

    /* renamed from: a */
    public StaticLayout m36305a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 23 ? m36297b(charSequence, alignment, i, i2) : i3 >= 16 ? m36298b(charSequence, alignment, i) : m36306a(charSequence, alignment, i);
    }

    /* renamed from: a */
    public void m36316a() {
        if (m36289h()) {
            if (this.f3495b) {
                if (this.f3502i.getMeasuredHeight() > 0 && this.f3502i.getMeasuredWidth() > 0) {
                    int measuredWidth = this.f3504k.mo36284a(this.f3502i) ? 1048576 : (this.f3502i.getMeasuredWidth() - this.f3502i.getTotalPaddingLeft()) - this.f3502i.getTotalPaddingRight();
                    int height = (this.f3502i.getHeight() - this.f3502i.getCompoundPaddingBottom()) - this.f3502i.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        synchronized (f3491l) {
                            f3491l.setEmpty();
                            f3491l.right = measuredWidth;
                            f3491l.bottom = height;
                            float a = m36308a(f3491l);
                            if (a != this.f3502i.getTextSize()) {
                                m36312a(0, a);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f3495b = true;
        }
    }

    /* renamed from: a */
    public final void m36315a(float f) {
        if (f != this.f3502i.getPaint().getTextSize()) {
            this.f3502i.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f3502i.isInLayout() : false;
            if (this.f3502i.getLayout() != null) {
                this.f3495b = false;
                try {
                    Method b = m36295b("nullLayouts");
                    if (b != null) {
                        b.invoke(this.f3502i, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    this.f3502i.requestLayout();
                } else {
                    this.f3502i.forceLayout();
                }
                this.f3502i.invalidate();
            }
        }
    }

    /* renamed from: a */
    public final void m36314a(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 > 0.0f) {
            this.f3494a = 1;
            this.f3497d = f;
            this.f3498e = f2;
            this.f3496c = f3;
            this.f3500g = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
    }

    /* renamed from: a */
    public void m36313a(int i) {
        TextPaint textPaint = this.f3501h;
        if (textPaint == null) {
            this.f3501h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f3501h.set(this.f3502i.getPaint());
        this.f3501h.setTextSize(i);
    }

    /* renamed from: a */
    public void m36312a(int i, float f) {
        Context context = this.f3503j;
        m36315a(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* renamed from: a */
    public void m36311a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (m36286k()) {
            DisplayMetrics displayMetrics = this.f3503j.getResources().getDisplayMetrics();
            m36314a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m36288i()) {
                m36316a();
            }
        }
    }

    /* renamed from: a */
    public final void m36309a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f3499f = m36302a(iArr);
            m36287j();
        }
    }

    /* renamed from: a */
    public void m36307a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f3503j.obtainStyledAttributes(attributeSet, C0583j.AppCompatTextView, i, 0);
        TextView textView = this.f3502i;
        C1002u.m35244a(textView, textView.getContext(), C0583j.AppCompatTextView, attributeSet, obtainStyledAttributes, i, 0);
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTextView_autoSizeTextType)) {
            this.f3494a = obtainStyledAttributes.getInt(C0583j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0583j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0583j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0583j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0583j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0583j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0583j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0583j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m36309a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m36286k()) {
            this.f3494a = 0;
        } else if (this.f3494a == 1) {
            if (!this.f3500g) {
                DisplayMetrics displayMetrics = this.f3503j.getResources().getDisplayMetrics();
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
                m36314a(f, f2, f3);
            }
            m36288i();
        }
    }

    /* renamed from: a */
    public void m36301a(int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        if (m36286k()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f3503j.getResources().getDisplayMetrics();
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
                this.f3499f = m36302a(iArr2);
                if (!m36287j()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f3500g = false;
            }
            if (m36288i()) {
                m36316a();
            }
        }
    }

    /* renamed from: a */
    public final boolean m36310a(int i, RectF rectF) {
        CharSequence text = this.f3502i.getText();
        TransformationMethod transformationMethod = this.f3502i.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f3502i);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f3502i.getMaxLines() : -1;
        m36313a(i);
        StaticLayout a = m36305a(charSequence, (Layout.Alignment) m36296b(this.f3502i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (a.getLineCount() <= maxLines && a.getLineEnd(a.getLineCount() - 1) == charSequence.length())) && ((float) a.getHeight()) <= rectF.bottom;
    }

    /* renamed from: a */
    public final int[] m36302a(int[] iArr) {
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
    public final StaticLayout m36298b(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f3501h, i, alignment, this.f3502i.getLineSpacingMultiplier(), this.f3502i.getLineSpacingExtra(), this.f3502i.getIncludeFontPadding());
    }

    /* renamed from: b */
    public final StaticLayout m36297b(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f3501h, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f3502i.getLineSpacingExtra(), this.f3502i.getLineSpacingMultiplier()).setIncludePad(this.f3502i.getIncludeFontPadding()).setBreakStrategy(this.f3502i.getBreakStrategy()).setHyphenationFrequency(this.f3502i.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f3504k.mo36285a(obtain, this.f3502i);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: b */
    public final void m36300b() {
        this.f3494a = 0;
        this.f3497d = -1.0f;
        this.f3498e = -1.0f;
        this.f3496c = -1.0f;
        this.f3499f = new int[0];
        this.f3495b = false;
    }

    /* renamed from: b */
    public void m36299b(int i) {
        if (!m36286k()) {
            return;
        }
        if (i == 0) {
            m36300b();
        } else if (i == 1) {
            DisplayMetrics displayMetrics = this.f3503j.getResources().getDisplayMetrics();
            m36314a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (m36288i()) {
                m36316a();
            }
        } else {
            throw new IllegalArgumentException("Unknown auto-size text type: " + i);
        }
    }

    /* renamed from: c */
    public int m36294c() {
        return Math.round(this.f3498e);
    }

    /* renamed from: d */
    public int m36293d() {
        return Math.round(this.f3497d);
    }

    /* renamed from: e */
    public int m36292e() {
        return Math.round(this.f3496c);
    }

    /* renamed from: f */
    public int[] m36291f() {
        return this.f3499f;
    }

    /* renamed from: g */
    public int m36290g() {
        return this.f3494a;
    }

    /* renamed from: h */
    public boolean m36289h() {
        return m36286k() && this.f3494a != 0;
    }

    /* renamed from: i */
    public final boolean m36288i() {
        if (!m36286k() || this.f3494a != 1) {
            this.f3495b = false;
        } else {
            if (!this.f3500g || this.f3499f.length == 0) {
                int floor = ((int) Math.floor((this.f3498e - this.f3497d) / this.f3496c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f3497d + (i * this.f3496c));
                }
                this.f3499f = m36302a(iArr);
            }
            this.f3495b = true;
        }
        return this.f3495b;
    }

    /* renamed from: j */
    public final boolean m36287j() {
        int length = this.f3499f.length;
        boolean z = length > 0;
        this.f3500g = z;
        if (z) {
            this.f3494a = 1;
            int[] iArr = this.f3499f;
            this.f3497d = iArr[0];
            this.f3498e = iArr[length - 1];
            this.f3496c = -1.0f;
        }
        return this.f3500g;
    }

    /* renamed from: k */
    public final boolean m36286k() {
        return !(this.f3502i instanceof AppCompatEditText);
    }
}
