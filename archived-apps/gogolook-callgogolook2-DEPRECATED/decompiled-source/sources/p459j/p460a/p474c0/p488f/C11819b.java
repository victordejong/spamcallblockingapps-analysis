package p459j.p460a.p474c0.p488f;

import android.content.ContentValues;
import java.io.IOException;
import java.util.Map;
import kotlinx.coroutines.CoroutineContextKt;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p081h.p203i.p316b.p318b.C9337o;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.f.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/b.class */
public class C11819b {

    /* renamed from: e */
    public static final Map<String, String> f26500e = C9337o.m15405a();

    /* renamed from: d */
    public final XmlPullParser f26504d;

    /* renamed from: c */
    public final StringBuilder f26503c = new StringBuilder();

    /* renamed from: a */
    public AbstractC11820a f26501a = null;

    /* renamed from: b */
    public AbstractC11821b f26502b = null;

    /* renamed from: j.a.c0.f.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/b$a.class */
    public interface AbstractC11820a {
        /* renamed from: a */
        void mo8227a(ContentValues contentValues);
    }

    /* renamed from: j.a.c0.f.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/b$b.class */
    public interface AbstractC11821b {
        /* renamed from: a */
        void mo8199a(String str, String str2, String str3, String str4);
    }

    static {
        f26500e.put("mcc", "mcc");
        f26500e.put("mnc", "mnc");
        f26500e.put("carrier", "name");
        f26500e.put("apn", "apn");
        f26500e.put("mmsc", "mmsc");
        f26500e.put("mmsproxy", "mmsproxy");
        f26500e.put("mmsport", "mmsport");
        f26500e.put("type", "type");
        f26500e.put("user", "user");
        f26500e.put("password", "password");
        f26500e.put("authtype", "authtype");
        f26500e.put("mvno_match_data", "mvno_match_data");
        f26500e.put("mvno_type", "mvno_type");
        f26500e.put("protocol", "protocol");
        f26500e.put("bearer", "bearer");
        f26500e.put("server", "server");
        f26500e.put("roaming_protocol", "roaming_protocol");
        f26500e.put("proxy", "proxy");
        f26500e.put("port", "port");
        f26500e.put("carrier_enabled", "carrier_enabled");
    }

    public C11819b(XmlPullParser xmlPullParser) {
        this.f26504d = xmlPullParser;
    }

    /* renamed from: a */
    public static C11819b m8231a(XmlPullParser xmlPullParser) {
        C12151d.m7000b(xmlPullParser);
        return new C11819b(xmlPullParser);
    }

    /* renamed from: b */
    public static String m8229b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? Integer.toString(i) : "TEXT" : "END_TAG" : "START_TAG" : "END_DOCUMENT" : "START_DOCUMENT";
    }

    /* renamed from: a */
    public final int m8238a(int i) throws XmlPullParserException, IOException {
        int next;
        do {
            next = this.f26504d.next();
            if (next == i) {
                break;
            }
        } while (next != 1);
        return next;
    }

    /* renamed from: a */
    public C11819b m8236a(AbstractC11820a aVar) {
        this.f26501a = aVar;
        return this;
    }

    /* renamed from: a */
    public C11819b m8235a(AbstractC11821b bVar) {
        this.f26502b = bVar;
        return this;
    }

    /* renamed from: a */
    public final Boolean m8233a(String str, Boolean bool, String str2) {
        try {
            bool = Boolean.valueOf(Boolean.parseBoolean(str));
        } catch (Exception e) {
            C12153d0.m6987b("MessagingApp", "Invalid value " + str + "for" + str2 + CoroutineContextKt.DEBUG_THREAD_NAME_SEPARATOR + m8228c());
        }
        return bool;
    }

    /* renamed from: a */
    public final Integer m8232a(String str, Integer num, String str2) {
        try {
            num = Integer.valueOf(Integer.parseInt(str));
        } catch (Exception e) {
            C12153d0.m6987b("MessagingApp", "Invalid value " + str + "for" + str2 + CoroutineContextKt.DEBUG_THREAD_NAME_SEPARATOR + m8228c());
        }
        return num;
    }

    /* renamed from: a */
    public void m8239a() {
        try {
            if (m8238a(2) == 2) {
                ContentValues contentValues = new ContentValues();
                String name = this.f26504d.getName();
                if ("apns".equals(name)) {
                    while (m8238a(2) == 2) {
                        String name2 = this.f26504d.getName();
                        if ("apn".equals(name2)) {
                            m8237a(contentValues);
                        } else if ("mms_config".equals(name2)) {
                            m8230b();
                        }
                    }
                } else if ("mms_config".equals(name)) {
                    m8230b();
                }
            } else {
                throw new XmlPullParserException("ApnsXmlProcessor: expecting start tag @" + m8228c());
            }
        } catch (IOException e) {
            C12153d0.m6986b("MessagingApp", "ApnsXmlProcessor: I/O failure " + e, e);
        } catch (XmlPullParserException e2) {
            C12153d0.m6986b("MessagingApp", "ApnsXmlProcessor: parsing failure " + e2, e2);
        }
    }

    /* renamed from: a */
    public final void m8237a(ContentValues contentValues) throws IOException, XmlPullParserException {
        C12151d.m7000b(contentValues);
        contentValues.clear();
        for (int i = 0; i < this.f26504d.getAttributeCount(); i++) {
            String str = f26500e.get(this.f26504d.getAttributeName(i));
            if (str != null) {
                contentValues.put(str, this.f26504d.getAttributeValue(i));
            }
        }
        contentValues.put("numeric", AbstractC12181l0.m6898a(contentValues.getAsString("mcc"), contentValues.getAsString("mnc")));
        String asString = contentValues.getAsString("authtype");
        if (asString != null) {
            contentValues.put("authtype", m8232a(asString, (Integer) (-1), "apn authtype"));
        }
        String asString2 = contentValues.getAsString("carrier_enabled");
        if (asString2 != null) {
            contentValues.put("carrier_enabled", m8233a(asString2, (Boolean) null, "apn carrierEnabled"));
        }
        String asString3 = contentValues.getAsString("bearer");
        if (asString3 != null) {
            contentValues.put("bearer", m8232a(asString3, (Integer) 0, "apn bearer"));
        }
        if (this.f26504d.next() == 3) {
            AbstractC11820a aVar = this.f26501a;
            if (aVar != null) {
                aVar.mo8227a(contentValues);
                return;
            }
            return;
        }
        throw new XmlPullParserException("Apn: expecting end tag @" + m8228c());
    }

    /* renamed from: a */
    public final void m8234a(String str) throws IOException, XmlPullParserException {
        String str2 = null;
        String attributeValue = this.f26504d.getAttributeValue(null, "name");
        String name = this.f26504d.getName();
        int next = this.f26504d.next();
        int i = next;
        if (next == 4) {
            str2 = this.f26504d.getText();
            i = this.f26504d.next();
        }
        if (i == 3) {
            AbstractC11821b bVar = this.f26502b;
            if (bVar != null) {
                bVar.mo8199a(str, attributeValue, str2, name);
                return;
            }
            return;
        }
        throw new XmlPullParserException("ApnsXmlProcessor: expecting end tag @" + m8228c());
    }

    /* renamed from: b */
    public final void m8230b() throws IOException, XmlPullParserException {
        int next;
        String a = AbstractC12181l0.m6898a(this.f26504d.getAttributeValue(null, "mcc"), this.f26504d.getAttributeValue(null, "mnc"));
        while (true) {
            next = this.f26504d.next();
            if (next != 4) {
                if (next != 2) {
                    break;
                }
                m8234a(a);
            }
        }
        if (next != 3) {
            throw new XmlPullParserException("MmsConfig: expecting start or end tag @" + m8228c());
        }
    }

    /* renamed from: c */
    public final String m8228c() {
        this.f26503c.setLength(0);
        XmlPullParser xmlPullParser = this.f26504d;
        if (xmlPullParser == null) {
            return "Unknown";
        }
        try {
            int eventType = xmlPullParser.getEventType();
            this.f26503c.append(m8229b(eventType));
            if (eventType == 2 || eventType == 3 || eventType == 4) {
                StringBuilder sb = this.f26503c;
                sb.append('<');
                sb.append(this.f26504d.getName());
                for (int i = 0; i < this.f26504d.getAttributeCount(); i++) {
                    StringBuilder sb2 = this.f26503c;
                    sb2.append(' ');
                    sb2.append(this.f26504d.getAttributeName(i));
                    sb2.append('=');
                    sb2.append(this.f26504d.getAttributeValue(i));
                }
                this.f26503c.append("/>");
            }
            return this.f26503c.toString();
        } catch (XmlPullParserException e) {
            C12153d0.m6986b("MessagingApp", "xmlParserDebugContext: " + e, e);
            return "Unknown";
        }
    }
}
