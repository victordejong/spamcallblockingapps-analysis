package androidx.core.content.p004c;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.content.c.g */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/g.class */
public class C0221g {
    /* renamed from: a */
    public static int m5991a(Context context, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != 0 ? i : i2;
    }

    /* renamed from: b */
    public static boolean m5990b(TypedArray typedArray, int i, int i2, boolean z) {
        return typedArray.getBoolean(i, typedArray.getBoolean(i2, z));
    }

    /* renamed from: c */
    public static Drawable m5989c(TypedArray typedArray, int i, int i2) {
        Drawable drawable = typedArray.getDrawable(i);
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = typedArray.getDrawable(i2);
        }
        return drawable2;
    }

    /* renamed from: d */
    public static int m5988d(TypedArray typedArray, int i, int i2, int i3) {
        return typedArray.getInt(i, typedArray.getInt(i2, i3));
    }

    /* renamed from: e */
    public static boolean m5987e(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m5974r(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: f */
    public static int m5986f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m5974r(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: g */
    public static ColorStateList m5985g(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m5974r(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 != 2) {
                return (i2 < 28 || i2 > 31) ? C0206a.m6042c(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m5984h(typedValue);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
        }
        return null;
    }

    /* renamed from: h */
    private static ColorStateList m5984h(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: i */
    public static C0207b m5983i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m5974r(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return C0207b.m6037b(typedValue.data);
            }
            C0207b m6032g = C0207b.m6032g(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (m6032g != null) {
                return m6032g;
            }
        }
        return C0207b.m6037b(i2);
    }

    /* renamed from: j */
    public static float m5982j(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m5974r(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: k */
    public static int m5981k(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m5974r(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: l */
    public static int m5980l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m5974r(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }

    /* renamed from: m */
    public static String m5979m(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m5974r(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: n */
    public static int m5978n(TypedArray typedArray, int i, int i2, int i3) {
        return typedArray.getResourceId(i, typedArray.getResourceId(i2, i3));
    }

    /* renamed from: o */
    public static String m5977o(TypedArray typedArray, int i, int i2) {
        String string = typedArray.getString(i);
        String str = string;
        if (string == null) {
            str = typedArray.getString(i2);
        }
        return str;
    }

    /* renamed from: p */
    public static CharSequence m5976p(TypedArray typedArray, int i, int i2) {
        CharSequence text = typedArray.getText(i);
        CharSequence charSequence = text;
        if (text == null) {
            charSequence = typedArray.getText(i2);
        }
        return charSequence;
    }

    /* renamed from: q */
    public static CharSequence[] m5975q(TypedArray typedArray, int i, int i2) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        CharSequence[] charSequenceArr = textArray;
        if (textArray == null) {
            charSequenceArr = typedArray.getTextArray(i2);
        }
        return charSequenceArr;
    }

    /* renamed from: r */
    public static boolean m5974r(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: s */
    public static TypedArray m5973s(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: t */
    public static TypedValue m5972t(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m5974r(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }
}
