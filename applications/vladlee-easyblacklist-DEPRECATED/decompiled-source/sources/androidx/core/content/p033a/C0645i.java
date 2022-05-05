package androidx.core.content.p033a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.gms.common.api.Api;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.core.content.a.i */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/i.class */
public final class C0645i {
    /* renamed from: a */
    public static float m8629a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m8626a(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: a */
    public static int m8637a(Context context, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != 0 ? i : i2;
    }

    /* renamed from: a */
    public static int m8635a(TypedArray typedArray, int i, int i2) {
        return typedArray.getInt(i, typedArray.getInt(i2, Api.BaseClientBuilder.API_PRIORITY_OTHER));
    }

    /* renamed from: a */
    public static int m8634a(TypedArray typedArray, int i, int i2, int i3) {
        return typedArray.getResourceId(i, typedArray.getResourceId(i2, i3));
    }

    /* renamed from: a */
    public static int m8630a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m8626a(xmlPullParser, str)) {
            return 0;
        }
        return typedArray.getColor(i, 0);
    }

    /* renamed from: a */
    public static int m8628a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m8626a(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: a */
    public static TypedArray m8636a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    public static TypedValue m8631a(TypedArray typedArray, XmlPullParser xmlPullParser, String str) {
        if (!m8626a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(0);
    }

    /* renamed from: a */
    public static C0632b m8632a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m8626a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            if (typedValue.type >= 28 && typedValue.type <= 31) {
                return C0632b.m8675a(typedValue.data);
            }
            C0632b a = C0632b.m8674a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (a != null) {
                return a;
            }
        }
        return C0632b.m8675a(0);
    }

    /* renamed from: a */
    public static boolean m8633a(TypedArray typedArray, int i, int i2, boolean z) {
        return typedArray.getBoolean(i, typedArray.getBoolean(i2, z));
    }

    /* renamed from: a */
    public static boolean m8627a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m8626a(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: a */
    public static boolean m8626a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: b */
    public static int m8624b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m8626a(xmlPullParser, str)) {
            return 0;
        }
        return typedArray.getResourceId(i, 0);
    }

    /* renamed from: b */
    public static String m8625b(TypedArray typedArray, int i, int i2) {
        String string = typedArray.getString(i);
        String str = string;
        if (string == null) {
            str = typedArray.getString(i2);
        }
        return str;
    }

    /* renamed from: c */
    public static CharSequence m8623c(TypedArray typedArray, int i, int i2) {
        CharSequence text = typedArray.getText(i);
        CharSequence charSequence = text;
        if (text == null) {
            charSequence = typedArray.getText(i2);
        }
        return charSequence;
    }

    /* renamed from: c */
    public static String m8622c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m8626a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: d */
    public static CharSequence[] m8621d(TypedArray typedArray, int i, int i2) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        CharSequence[] charSequenceArr = textArray;
        if (textArray == null) {
            charSequenceArr = typedArray.getTextArray(i2);
        }
        return charSequenceArr;
    }
}
