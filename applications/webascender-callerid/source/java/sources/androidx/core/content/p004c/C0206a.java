package androidx.core.content.p004c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import f.h.a;
import f.h.d;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/a.class */
public final class C0206a {
    /* renamed from: a */
    public static ColorStateList m6044a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m6043b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static ColorStateList m6043b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return m6041d(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* renamed from: c */
    public static ColorStateList m6042c(Resources resources, int i, Resources.Theme theme) {
        try {
            return m6044a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v47, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v49, types: [int[][]] */
    /* renamed from: d */
    private static ColorStateList m6041d(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int i;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i2 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray m6039f = m6039f(resources, theme, attributeSet, d.a);
                int color = m6039f.getColor(d.b, -65281);
                float f = 1.0f;
                int i3 = d.c;
                if (m6039f.hasValue(i3)) {
                    f = m6039f.getFloat(i3, 1.0f);
                } else {
                    int i4 = d.d;
                    if (m6039f.hasValue(i4)) {
                        f = m6039f.getFloat(i4, 1.0f);
                    }
                }
                m6039f.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = i6;
                    if (i5 >= attributeCount) {
                        break;
                    }
                    int attributeNameResource = attributeSet.getAttributeNameResource(i5);
                    int i7 = i;
                    if (attributeNameResource != 16843173) {
                        i7 = i;
                        if (attributeNameResource != 16843551) {
                            i7 = i;
                            if (attributeNameResource != a.a) {
                                iArr3[i] = attributeSet.getAttributeBooleanValue(i5, false) ? attributeNameResource : -attributeNameResource;
                                i7 = i + 1;
                            }
                        }
                    }
                    i5++;
                    i6 = i7;
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr3, i);
                iArr2 = C0213e.m6008a(iArr2, i2, m6040e(color, f));
                iArr = (int[][]) C0213e.m6007b(iArr, i2, trimStateSet);
                i2++;
            }
        }
        int[] iArr4 = new int[i2];
        ?? r0 = new int[i2];
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        System.arraycopy(iArr, 0, r0, 0, i2);
        return new ColorStateList(r0, iArr4);
    }

    /* renamed from: e */
    private static int m6040e(int i, float f) {
        return (i & 16777215) | (Math.round(Color.alpha(i) * f) << 24);
    }

    /* renamed from: f */
    private static TypedArray m6039f(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
