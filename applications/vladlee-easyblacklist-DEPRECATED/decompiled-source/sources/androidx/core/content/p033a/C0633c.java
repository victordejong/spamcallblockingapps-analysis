package androidx.core.content.p033a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.C0590a;
import androidx.core.p034d.C0648a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/c.class */
public final class C0633c {

    /* renamed from: androidx.core.content.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a/c$a.class */
    public interface AbstractC0634a {
    }

    /* renamed from: androidx.core.content.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a/c$b.class */
    public static final class C0635b implements AbstractC0634a {

        /* renamed from: a */
        private final C0636c[] f2892a;

        public C0635b(C0636c[] cVarArr) {
            this.f2892a = cVarArr;
        }

        /* renamed from: a */
        public final C0636c[] m8661a() {
            return this.f2892a;
        }
    }

    /* renamed from: androidx.core.content.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a/c$c.class */
    public static final class C0636c {

        /* renamed from: a */
        private final String f2893a;

        /* renamed from: b */
        private int f2894b;

        /* renamed from: c */
        private boolean f2895c;

        /* renamed from: d */
        private String f2896d;

        /* renamed from: e */
        private int f2897e;

        /* renamed from: f */
        private int f2898f;

        public C0636c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f2893a = str;
            this.f2894b = i;
            this.f2895c = z;
            this.f2896d = str2;
            this.f2897e = i2;
            this.f2898f = i3;
        }

        /* renamed from: a */
        public final String m8660a() {
            return this.f2893a;
        }

        /* renamed from: b */
        public final int m8659b() {
            return this.f2894b;
        }

        /* renamed from: c */
        public final boolean m8658c() {
            return this.f2895c;
        }

        /* renamed from: d */
        public final String m8657d() {
            return this.f2896d;
        }

        /* renamed from: e */
        public final int m8656e() {
            return this.f2897e;
        }

        /* renamed from: f */
        public final int m8655f() {
            return this.f2898f;
        }
    }

    /* renamed from: androidx.core.content.a.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a/c$d.class */
    public static final class C0637d implements AbstractC0634a {

        /* renamed from: a */
        private final C0648a f2899a;

        /* renamed from: b */
        private final int f2900b;

        /* renamed from: c */
        private final int f2901c;

        public C0637d(C0648a aVar, int i, int i2) {
            this.f2899a = aVar;
            this.f2901c = i;
            this.f2900b = i2;
        }

        /* renamed from: a */
        public final C0648a m8654a() {
            return this.f2899a;
        }

        /* renamed from: b */
        public final int m8653b() {
            return this.f2901c;
        }

        /* renamed from: c */
        public final int m8652c() {
            return this.f2900b;
        }
    }

    /* renamed from: a */
    public static AbstractC0634a m8665a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlPullParser.require(2, null, "font-family");
            if (xmlPullParser.getName().equals("font-family")) {
                return m8663b(xmlPullParser, resources);
            }
            m8666a(xmlPullParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static List<List<byte[]>> m8667a(Resources resources, int i) {
        int i2;
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 21) {
                i2 = obtainTypedArray.getType(0);
            } else {
                TypedValue typedValue = new TypedValue();
                obtainTypedArray.getValue(0, typedValue);
                i2 = typedValue.type;
            }
            if (i2 == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(m8664a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m8664a(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: a */
    private static List<byte[]> m8664a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m8666a(XmlPullParser xmlPullParser) {
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
    private static AbstractC0634a m8663b(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0590a.C0593c.f2743e);
        String string = obtainAttributes.getString(C0590a.C0593c.f2744f);
        String string2 = obtainAttributes.getString(C0590a.C0593c.f2748j);
        String string3 = obtainAttributes.getString(C0590a.C0593c.f2749k);
        int resourceId = obtainAttributes.getResourceId(C0590a.C0593c.f2745g, 0);
        int integer = obtainAttributes.getInteger(C0590a.C0593c.f2746h, 1);
        int integer2 = obtainAttributes.getInteger(C0590a.C0593c.f2747i, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(m8662c(xmlPullParser, resources));
                    } else {
                        m8666a(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new C0635b((C0636c[]) arrayList.toArray(new C0636c[arrayList.size()]));
        }
        while (xmlPullParser.next() != 3) {
            m8666a(xmlPullParser);
        }
        return new C0637d(new C0648a(string, string2, string3, m8667a(resources, resourceId)), integer, integer2);
    }

    /* renamed from: c */
    private static C0636c m8662c(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0590a.C0593c.f2750l);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0590a.C0593c.f2759u) ? C0590a.C0593c.f2759u : C0590a.C0593c.f2752n, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(C0590a.C0593c.f2757s) ? C0590a.C0593c.f2757s : C0590a.C0593c.f2753o, 0);
        int i2 = obtainAttributes.hasValue(C0590a.C0593c.f2760v) ? C0590a.C0593c.f2760v : C0590a.C0593c.f2754p;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0590a.C0593c.f2758t) ? C0590a.C0593c.f2758t : C0590a.C0593c.f2755q);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0590a.C0593c.f2756r) ? C0590a.C0593c.f2756r : C0590a.C0593c.f2751m;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m8666a(xmlPullParser);
        }
        return new C0636c(string2, i, z, string, i3, resourceId);
    }
}
