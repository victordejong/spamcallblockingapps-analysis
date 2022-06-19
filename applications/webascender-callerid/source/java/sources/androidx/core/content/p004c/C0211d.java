package androidx.core.content.p004c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import com.appsflyer.internal.referrer.Payload;
import f.h.d;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.d */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/d.class */
public final class C0211d {

    /* renamed from: androidx.core.content.c.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/d$a.class */
    public static final class C0212a {

        /* renamed from: a */
        final int[] f1322a;

        /* renamed from: b */
        final float[] f1323b;

        C0212a(int i, int i2) {
            this.f1322a = new int[]{i, i2};
            this.f1323b = new float[]{0.0f, 1.0f};
        }

        C0212a(int i, int i2, int i3) {
            this.f1322a = new int[]{i, i2, i3};
            this.f1323b = new float[]{0.0f, 0.5f, 1.0f};
        }

        C0212a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f1322a = new int[size];
            this.f1323b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1322a[i] = list.get(i).intValue();
                this.f1323b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    private static C0212a m6012a(C0212a c0212a, int i, int i2, boolean z, int i3) {
        return c0212a != null ? c0212a : z ? new C0212a(i, i3, i2) : new C0212a(i, i2);
    }

    /* renamed from: b */
    public static Shader m6011b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray m5973s = C0221g.m5973s(resources, theme, attributeSet, d.w);
        float m5982j = C0221g.m5982j(m5973s, xmlPullParser, "startX", d.F, 0.0f);
        float m5982j2 = C0221g.m5982j(m5973s, xmlPullParser, "startY", d.G, 0.0f);
        float m5982j3 = C0221g.m5982j(m5973s, xmlPullParser, "endX", d.H, 0.0f);
        float m5982j4 = C0221g.m5982j(m5973s, xmlPullParser, "endY", d.I, 0.0f);
        float m5982j5 = C0221g.m5982j(m5973s, xmlPullParser, "centerX", d.A, 0.0f);
        float m5982j6 = C0221g.m5982j(m5973s, xmlPullParser, "centerY", d.B, 0.0f);
        int m5981k = C0221g.m5981k(m5973s, xmlPullParser, Payload.TYPE, d.z, 0);
        int m5986f = C0221g.m5986f(m5973s, xmlPullParser, "startColor", d.x, 0);
        boolean m5974r = C0221g.m5974r(xmlPullParser, "centerColor");
        int m5986f2 = C0221g.m5986f(m5973s, xmlPullParser, "centerColor", d.E, 0);
        int m5986f3 = C0221g.m5986f(m5973s, xmlPullParser, "endColor", d.y, 0);
        int m5981k2 = C0221g.m5981k(m5973s, xmlPullParser, "tileMode", d.D, 0);
        float m5982j7 = C0221g.m5982j(m5973s, xmlPullParser, "gradientRadius", d.C, 0.0f);
        m5973s.recycle();
        C0212a m6012a = m6012a(m6010c(resources, xmlPullParser, attributeSet, theme), m5986f, m5986f3, m5974r, m5986f2);
        if (m5981k != 1) {
            return m5981k != 2 ? new LinearGradient(m5982j, m5982j2, m5982j3, m5982j4, m6012a.f1322a, m6012a.f1323b, m6009d(m5981k2)) : new SweepGradient(m5982j5, m5982j6, m6012a.f1322a, m6012a.f1323b);
        } else if (m5982j7 <= 0.0f) {
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        } else {
            return new RadialGradient(m5982j5, m5982j6, m5982j7, m6012a.f1322a, m6012a.f1323b, m6009d(m5981k2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00f0, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r6.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.p004c.C0211d.C0212a m6010c(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p004c.C0211d.m6010c(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.c.d$a");
    }

    /* renamed from: d */
    private static Shader.TileMode m6009d(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }
}
