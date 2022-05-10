package p012b.p042i.p044i.p045c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: b.i.i.c.g */
/* loaded from: classes-dex2jar.jar:b/i/i/c/g.class */
public class C0889g {
    /* renamed from: a */
    public static float m35622a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m35618a(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: a */
    public static int m35621a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m35618a(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: a */
    public static ColorStateList m35625a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (!m35618a(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        int i2 = typedValue.type;
        if (i2 != 2) {
            return (i2 < 28 || i2 > 31) ? C0872a.m35679a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m35619a(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
    }

    /* renamed from: a */
    public static ColorStateList m35619a(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: a */
    public static TypedArray m35626a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    public static C0873b m35624a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m35618a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return C0873b.m35667b(typedValue.data);
            }
            C0873b b = C0873b.m35666b(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (b != null) {
                return b;
            }
        }
        return C0873b.m35667b(i2);
    }

    /* renamed from: a */
    public static String m35623a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m35618a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: a */
    public static boolean m35620a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m35618a(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: a */
    public static boolean m35618a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: b */
    public static int m35616b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m35618a(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: b */
    public static TypedValue m35617b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m35618a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }

    /* renamed from: c */
    public static int m35615c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m35618a(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }
}
