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
/* renamed from: androidx.preference.b */
/* loaded from: classes-dex2jar.jar:androidx/preference/b.class */
public class C0353b {

    /* renamed from: e */
    private static final Class<?>[] f1753e = {Context.class, AttributeSet.class};

    /* renamed from: f */
    private static final HashMap<String, Constructor> f1754f = new HashMap<>();

    /* renamed from: a */
    private final Context f1755a;

    /* renamed from: b */
    private final Object[] f1756b = new Object[2];

    /* renamed from: c */
    private C0354c f1757c;

    /* renamed from: d */
    private String[] f1758d;

    public C0353b(Context context, C0354c c0354c) {
        this.f1755a = context;
        m5341f(c0354c);
    }

    /* renamed from: a */
    private Preference m5346a(String str, String[] strArr, AttributeSet attributeSet) throws ClassNotFoundException, InflateException {
        Class<?> cls;
        Class<?> cls2;
        Constructor<?> constructor = f1754f.get(str);
        Constructor<?> constructor2 = constructor;
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f1755a.getClassLoader();
                    if (strArr != null && strArr.length != 0) {
                        int length = strArr.length;
                        ClassNotFoundException e = null;
                        int i = 0;
                        while (true) {
                            cls2 = null;
                            if (i >= length) {
                                break;
                            }
                            try {
                                cls2 = Class.forName(strArr[i] + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e2) {
                                e = e2;
                                i++;
                            }
                        }
                        cls = cls2;
                        if (cls2 == null) {
                            if (e != null) {
                                throw e;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                        constructor2 = cls.getConstructor(f1753e);
                        constructor2.setAccessible(true);
                        f1754f.put(str, constructor2);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor2 = cls.getConstructor(f1753e);
                    constructor2.setAccessible(true);
                    f1754f.put(str, constructor2);
                } catch (Exception e3) {
                    InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                    inflateException.initCause(e3);
                    throw inflateException;
                }
            } catch (ClassNotFoundException e4) {
                throw e4;
            }
        }
        Object[] objArr = this.f1756b;
        objArr[1] = attributeSet;
        return (Preference) constructor2.newInstance(objArr);
    }

    /* renamed from: b */
    private Preference m5345b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? m5340g(str, attributeSet) : m5346a(str, null, attributeSet);
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

    /* renamed from: f */
    private void m5341f(C0354c c0354c) {
        this.f1757c = c0354c;
        m5337j(new String[]{Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."});
    }

    /* renamed from: h */
    private PreferenceGroup m5339h(PreferenceGroup preferenceGroup, PreferenceGroup preferenceGroup2) {
        if (preferenceGroup == null) {
            preferenceGroup2.m5393Q(this.f1757c);
            return preferenceGroup2;
        }
        return preferenceGroup;
    }

    /* renamed from: i */
    private void m5338i(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if ("intent".equals(name)) {
                        try {
                            preference.m5378f0(Intent.parseIntent(m5344c().getResources(), xmlPullParser, attributeSet));
                        } catch (IOException e) {
                            XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                            xmlPullParserException.initCause(e);
                            throw xmlPullParserException;
                        }
                    } else if ("extra".equals(name)) {
                        m5344c().getResources().parseBundleExtra("extra", attributeSet, preference.m5368n());
                        try {
                            m5336k(xmlPullParser);
                        } catch (IOException e2) {
                            XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                            xmlPullParserException2.initCause(e2);
                            throw xmlPullParserException2;
                        }
                    } else {
                        Preference m5345b = m5345b(name, attributeSet);
                        ((PreferenceGroup) preference).l0(m5345b);
                        m5338i(xmlPullParser, m5345b, attributeSet);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: k */
    private static void m5336k(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                if (next == 3 && xmlPullParser.getDepth() <= depth) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public Context m5344c() {
        return this.f1755a;
    }

    /* renamed from: d */
    public Preference m5343d(int i, PreferenceGroup preferenceGroup) {
        XmlResourceParser xml = m5344c().getResources().getXml(i);
        try {
            return m5342e(xml, preferenceGroup);
        } finally {
            xml.close();
        }
    }

    /* renamed from: e */
    public Preference m5342e(XmlPullParser xmlPullParser, PreferenceGroup preferenceGroup) {
        int next;
        PreferenceGroup m5339h;
        synchronized (this.f1756b) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f1756b[0] = this.f1755a;
            do {
                try {
                    try {
                        next = xmlPullParser.next();
                        if (next == 2) {
                            break;
                        }
                    } catch (IOException e) {
                        InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e.getMessage());
                        inflateException.initCause(e);
                        throw inflateException;
                    }
                } catch (InflateException e2) {
                    throw e2;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException2 = new InflateException(e3.getMessage());
                    inflateException2.initCause(e3);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
            m5339h = m5339h(preferenceGroup, (PreferenceGroup) m5345b(xmlPullParser.getName(), asAttributeSet));
            m5338i(xmlPullParser, m5339h, asAttributeSet);
        }
        return m5339h;
    }

    /* renamed from: g */
    protected Preference m5340g(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return m5346a(str, this.f1758d, attributeSet);
    }

    /* renamed from: j */
    public void m5337j(String[] strArr) {
        this.f1758d = strArr;
    }
}
