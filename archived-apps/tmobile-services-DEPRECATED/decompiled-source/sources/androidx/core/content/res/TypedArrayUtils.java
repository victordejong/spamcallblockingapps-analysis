package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import org.xmlpull.v1.XmlPullParser;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/TypedArrayUtils.class */
public class TypedArrayUtils {
    private TypedArrayUtils() {
    }

    /* renamed from: a */
    public static boolean m19602a(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i, boolean z) {
        return !m19593j(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    @ColorInt
    /* renamed from: b */
    public static int m19601b(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i, @ColorInt int i2) {
        return !m19593j(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    @Nullable
    /* renamed from: c */
    public static ColorStateList m19600c(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i) {
        if (!m19593j(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        int i2 = typedValue.type;
        if (i2 != 2) {
            return (i2 < 28 || i2 > 31) ? ColorStateListInflaterCompat.m19654c(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m19599d(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
    }

    @NonNull
    /* renamed from: d */
    private static ColorStateList m19599d(@NonNull TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: e */
    public static ComplexColorCompat m19598e(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i, @ColorInt int i2) {
        if (m19593j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return ComplexColorCompat.m19649b(typedValue.data);
            }
            ComplexColorCompat g = ComplexColorCompat.m19644g(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (g != null) {
                return g;
            }
        }
        return ComplexColorCompat.m19649b(i2);
    }

    /* renamed from: f */
    public static float m19597f(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i, float f) {
        return !m19593j(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: g */
    public static int m19596g(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i, int i2) {
        return !m19593j(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    @AnyRes
    /* renamed from: h */
    public static int m19595h(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i, @AnyRes int i2) {
        return !m19593j(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }

    @Nullable
    /* renamed from: i */
    public static String m19594i(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i) {
        if (!m19593j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: j */
    public static boolean m19593j(@NonNull XmlPullParser xmlPullParser, @NonNull String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    @NonNull
    /* renamed from: k */
    public static TypedArray m19592k(@NonNull Resources resources, @Nullable Resources.Theme theme, @NonNull AttributeSet attributeSet, @NonNull int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Nullable
    /* renamed from: l */
    public static TypedValue m19591l(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, int i) {
        if (!m19593j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }
}
