package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.preference.x */
/* loaded from: classes-dex2jar.jar:androidx/preference/x.class */
public final class C1041x {

    /* renamed from: a */
    private static final Class<?>[] f4384a = {Context.class, AttributeSet.class};

    /* renamed from: b */
    private static final HashMap<String, Constructor> f4385b = new HashMap<>();

    /* renamed from: c */
    private final Context f4386c;

    /* renamed from: e */
    private C1042y f4388e;

    /* renamed from: d */
    private final Object[] f4387d = new Object[2];

    /* renamed from: f */
    private String[] f4389f = {Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."};

    public C1041x(Context context, C1042y yVar) {
        this.f4386c = context;
        this.f4388e = yVar;
    }

    /* renamed from: a */
    private Preference m7369a(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? m7368a(str, this.f4389f, attributeSet) : m7368a(str, (String[]) null, attributeSet);
        } catch (InflateException e) {
            throw e;
        } catch (ClassNotFoundException e2) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e2);
            throw inflateException;
        } catch (Exception e3) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e3);
            throw inflateException2;
        }
    }

    /* renamed from: a */
    private Preference m7368a(String str, String[] strArr, AttributeSet attributeSet) {
        Class<?> cls;
        Constructor<?> constructor = f4385b.get(str);
        Constructor<?> constructor2 = constructor;
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f4386c.getClassLoader();
                    if (!(strArr == null || strArr.length == 0)) {
                        Class<?> cls2 = null;
                        ClassNotFoundException e = null;
                        for (String str2 : strArr) {
                            try {
                                cls2 = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e2) {
                                e = e2;
                            }
                        }
                        cls = cls2;
                        if (cls2 == null) {
                            if (e == null) {
                                throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                            }
                            throw e;
                        }
                        constructor2 = cls.getConstructor(f4384a);
                        constructor2.setAccessible(true);
                        f4385b.put(str, constructor2);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor2 = cls.getConstructor(f4384a);
                    constructor2.setAccessible(true);
                    f4385b.put(str, constructor2);
                } catch (Exception e3) {
                    InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                    inflateException.initCause(e3);
                    throw inflateException;
                }
            } catch (ClassNotFoundException e4) {
                throw e4;
            }
        }
        Object[] objArr = this.f4387d;
        objArr[1] = attributeSet;
        return (Preference) constructor2.newInstance(objArr);
    }

    /* renamed from: a */
    private Preference m7365a(XmlPullParser xmlPullParser, PreferenceGroup preferenceGroup) {
        int next;
        PreferenceGroup preferenceGroup2;
        synchronized (this.f4387d) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f4387d[0] = this.f4386c;
            do {
                try {
                    try {
                        next = xmlPullParser.next();
                        if (next == 2) {
                            break;
                        }
                    } catch (InflateException e) {
                        throw e;
                    }
                } catch (IOException e2) {
                    InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e2.getMessage());
                    inflateException.initCause(e2);
                    throw inflateException;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException2 = new InflateException(e3.getMessage());
                    inflateException2.initCause(e3);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next == 2) {
                PreferenceGroup preferenceGroup3 = (PreferenceGroup) m7369a(xmlPullParser.getName(), asAttributeSet);
                preferenceGroup2 = preferenceGroup;
                if (preferenceGroup == null) {
                    preferenceGroup3.m7475a(this.f4388e);
                    preferenceGroup2 = preferenceGroup3;
                }
                m7366a(xmlPullParser, preferenceGroup2, asAttributeSet);
            } else {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
        }
        return preferenceGroup2;
    }

    /* renamed from: a */
    private static void m7367a(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m7366a(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("intent".equals(name)) {
                    try {
                        preference.m7484a(Intent.parseIntent(this.f4386c.getResources(), xmlPullParser, attributeSet));
                    } catch (IOException e) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    this.f4386c.getResources().parseBundleExtra("extra", attributeSet, preference.m7452r());
                    try {
                        m7367a(xmlPullParser);
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e2);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference a = m7369a(name, attributeSet);
                    ((PreferenceGroup) preference).m7438a(a);
                    m7366a(xmlPullParser, a, attributeSet);
                }
            }
        }
    }

    /* renamed from: a */
    public final Preference m7370a(int i, PreferenceGroup preferenceGroup) {
        XmlResourceParser xml = this.f4386c.getResources().getXml(i);
        try {
            return m7365a(xml, preferenceGroup);
        } finally {
            xml.close();
        }
    }
}
