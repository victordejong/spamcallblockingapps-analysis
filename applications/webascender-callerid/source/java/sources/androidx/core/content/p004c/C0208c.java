package androidx.core.content.p004c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import com.revenuecat.purchases.common.BackendKt;
import f.h.d;
import f.h.i.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/c.class */
public class C0208c {

    /* renamed from: androidx.core.content.c.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/c$a.class */
    public interface AbstractC0209a {
    }

    /* renamed from: androidx.core.content.c.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/c$c.class */
    public static final class C0210c {

        /* renamed from: a */
        private final String f1316a;

        /* renamed from: b */
        private int f1317b;

        /* renamed from: c */
        private boolean f1318c;

        /* renamed from: d */
        private String f1319d;

        /* renamed from: e */
        private int f1320e;

        /* renamed from: f */
        private int f1321f;

        public C0210c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1316a = str;
            this.f1317b = i;
            this.f1318c = z;
            this.f1319d = str2;
            this.f1320e = i2;
            this.f1321f = i3;
        }

        /* renamed from: a */
        public String m6018a() {
            return this.f1316a;
        }

        /* renamed from: b */
        public int m6017b() {
            return this.f1321f;
        }

        /* renamed from: c */
        public int m6016c() {
            return this.f1320e;
        }

        /* renamed from: d */
        public String m6015d() {
            return this.f1319d;
        }

        /* renamed from: e */
        public int m6014e() {
            return this.f1317b;
        }

        /* renamed from: f */
        public boolean m6013f() {
            return this.f1318c;
        }
    }

    /* renamed from: a */
    private static int m6026a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* renamed from: b */
    public static AbstractC0209a m6025b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m6023d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: c */
    public static List<List<byte[]>> m6024c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m6026a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m6019h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m6019h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: d */
    private static AbstractC0209a m6023d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m6022e(xmlPullParser, resources);
        }
        m6020g(xmlPullParser);
        return null;
    }

    /* renamed from: e */
    private static AbstractC0209a m6022e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), d.e);
        String string = obtainAttributes.getString(d.f);
        String string2 = obtainAttributes.getString(d.j);
        String string3 = obtainAttributes.getString(d.k);
        int resourceId = obtainAttributes.getResourceId(d.g, 0);
        int integer = obtainAttributes.getInteger(d.h, 1);
        int integer2 = obtainAttributes.getInteger(d.i, BackendKt.HTTP_SERVER_ERROR_CODE);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m6020g(xmlPullParser);
            }
            return new d(new a(string, string2, string3, m6024c(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m6021f(xmlPullParser, resources));
                } else {
                    m6020g(xmlPullParser);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return new b((C0210c[]) arrayList.toArray(new C0210c[arrayList.size()]));
        }
        return null;
    }

    /* renamed from: f */
    private static C0210c m6021f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), d.l);
        int i = d.u;
        if (!obtainAttributes.hasValue(i)) {
            i = d.n;
        }
        int i2 = obtainAttributes.getInt(i, 400);
        int i3 = d.s;
        if (!obtainAttributes.hasValue(i3)) {
            i3 = d.o;
        }
        boolean z = 1 == obtainAttributes.getInt(i3, 0);
        int i4 = d.v;
        if (!obtainAttributes.hasValue(i4)) {
            i4 = d.p;
        }
        int i5 = d.t;
        if (!obtainAttributes.hasValue(i5)) {
            i5 = d.q;
        }
        String string = obtainAttributes.getString(i5);
        int i6 = obtainAttributes.getInt(i4, 0);
        int i7 = d.r;
        if (!obtainAttributes.hasValue(i7)) {
            i7 = d.m;
        }
        int resourceId = obtainAttributes.getResourceId(i7, 0);
        String string2 = obtainAttributes.getString(i7);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m6020g(xmlPullParser);
        }
        return new C0210c(string2, i2, z, string, i6, resourceId);
    }

    /* renamed from: g */
    private static void m6020g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    /* renamed from: h */
    private static List<byte[]> m6019h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
