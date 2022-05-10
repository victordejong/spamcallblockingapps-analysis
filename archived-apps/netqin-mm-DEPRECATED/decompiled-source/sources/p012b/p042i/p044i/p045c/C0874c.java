package p012b.p042i.p044i.p045c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import com.google.logging.type.LogSeverity;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p012b.p042i.C0837g;
import p012b.p042i.p051m.C0923a;
/* renamed from: b.i.i.c.c */
/* loaded from: classes-dex2jar.jar:b/i/i/c/c.class */
public class C0874c {

    /* renamed from: b.i.i.c.c$a */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/c$a.class */
    public interface AbstractC0875a {
    }

    /* renamed from: b.i.i.c.c$b */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/c$b.class */
    public static final class C0876b implements AbstractC0875a {

        /* renamed from: a */
        public final C0877c[] f4064a;

        public C0876b(C0877c[] cVarArr) {
            this.f4064a = cVarArr;
        }

        /* renamed from: a */
        public C0877c[] m35654a() {
            return this.f4064a;
        }
    }

    /* renamed from: b.i.i.c.c$c */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/c$c.class */
    public static final class C0877c {

        /* renamed from: a */
        public final String f4065a;

        /* renamed from: b */
        public int f4066b;

        /* renamed from: c */
        public boolean f4067c;

        /* renamed from: d */
        public String f4068d;

        /* renamed from: e */
        public int f4069e;

        /* renamed from: f */
        public int f4070f;

        public C0877c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f4065a = str;
            this.f4066b = i;
            this.f4067c = z;
            this.f4068d = str2;
            this.f4069e = i2;
            this.f4070f = i3;
        }

        /* renamed from: a */
        public String m35653a() {
            return this.f4065a;
        }

        /* renamed from: b */
        public int m35652b() {
            return this.f4070f;
        }

        /* renamed from: c */
        public int m35651c() {
            return this.f4069e;
        }

        /* renamed from: d */
        public String m35650d() {
            return this.f4068d;
        }

        /* renamed from: e */
        public int m35649e() {
            return this.f4066b;
        }

        /* renamed from: f */
        public boolean m35648f() {
            return this.f4067c;
        }
    }

    /* renamed from: b.i.i.c.c$d */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/c$d.class */
    public static final class C0878d implements AbstractC0875a {

        /* renamed from: a */
        public final C0923a f4071a;

        /* renamed from: b */
        public final int f4072b;

        /* renamed from: c */
        public final int f4073c;

        public C0878d(C0923a aVar, int i, int i2) {
            this.f4071a = aVar;
            this.f4073c = i;
            this.f4072b = i2;
        }

        /* renamed from: a */
        public int m35647a() {
            return this.f4073c;
        }

        /* renamed from: b */
        public C0923a m35646b() {
            return this.f4071a;
        }

        /* renamed from: c */
        public int m35645c() {
            return this.f4072b;
        }
    }

    /* renamed from: a */
    public static int m35661a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* renamed from: a */
    public static AbstractC0875a m35659a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m35657b(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static List<List<byte[]>> m35662a(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                List<List<byte[]>> emptyList = Collections.emptyList();
                obtainTypedArray.recycle();
                return emptyList;
            }
            ArrayList arrayList = new ArrayList();
            if (m35661a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m35658a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m35658a(resources.getStringArray(i)));
            }
            obtainTypedArray.recycle();
            return arrayList;
        } catch (Throwable th) {
            obtainTypedArray.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public static List<byte[]> m35658a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m35660a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: b */
    public static AbstractC0875a m35657b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m35656c(xmlPullParser, resources);
        }
        m35660a(xmlPullParser);
        return null;
    }

    /* renamed from: c */
    public static AbstractC0875a m35656c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0837g.FontFamily);
        String string = obtainAttributes.getString(C0837g.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0837g.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0837g.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0837g.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0837g.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0837g.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(m35655d(xmlPullParser, resources));
                    } else {
                        m35660a(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new C0876b((C0877c[]) arrayList.toArray(new C0877c[arrayList.size()]));
        }
        while (xmlPullParser.next() != 3) {
            m35660a(xmlPullParser);
        }
        return new C0878d(new C0923a(string, string2, string3, m35662a(resources, resourceId)), integer, integer2);
    }

    /* renamed from: d */
    public static C0877c m35655d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0837g.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0837g.FontFamilyFont_fontWeight) ? C0837g.FontFamilyFont_fontWeight : C0837g.FontFamilyFont_android_fontWeight, LogSeverity.WARNING_VALUE);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(C0837g.FontFamilyFont_fontStyle) ? C0837g.FontFamilyFont_fontStyle : C0837g.FontFamilyFont_android_fontStyle, 0);
        int i2 = obtainAttributes.hasValue(C0837g.FontFamilyFont_ttcIndex) ? C0837g.FontFamilyFont_ttcIndex : C0837g.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0837g.FontFamilyFont_fontVariationSettings) ? C0837g.FontFamilyFont_fontVariationSettings : C0837g.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0837g.FontFamilyFont_font) ? C0837g.FontFamilyFont_font : C0837g.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m35660a(xmlPullParser);
        }
        return new C0877c(string2, i, z, string, i3, resourceId);
    }
}
