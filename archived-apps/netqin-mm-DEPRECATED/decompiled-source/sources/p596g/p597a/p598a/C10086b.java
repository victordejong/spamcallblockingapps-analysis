package p596g.p597a.p598a;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
/* renamed from: g.a.a.b */
/* loaded from: classes2-dex2jar.jar:g/a/a/b.class */
public class C10086b {

    /* renamed from: a */
    public Properties f37210a;

    /* renamed from: g.a.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/a/a/b$a.class */
    public static class C10087a {

        /* renamed from: a */
        public static final C10086b f37211a = new C10086b();
    }

    public C10086b() {
        this.f37210a = null;
        m1562b();
    }

    /* renamed from: c */
    public static C10086b m1560c() {
        return C10087a.f37211a;
    }

    /* renamed from: a */
    public final String m1565a(char c) {
        String property = m1566a().getProperty(Integer.toHexString(c).toUpperCase());
        if (!m1564a(property)) {
            property = null;
        }
        return property;
    }

    /* renamed from: a */
    public final Properties m1566a() {
        return this.f37210a;
    }

    /* renamed from: a */
    public final void m1563a(Properties properties) {
        this.f37210a = properties;
    }

    /* renamed from: a */
    public final boolean m1564a(String str) {
        return str != null && !str.equals("(none0)") && str.startsWith("(") && str.endsWith(")");
    }

    /* renamed from: b */
    public final void m1562b() {
        try {
            m1563a(new Properties());
            m1566a().load(C10089d.m1556b("/pinyindb/unicode_to_hanyu_pinyin.txt"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    public String[] m1561b(char c) {
        String a = m1565a(c);
        if (a != null) {
            return a.substring(a.indexOf("(") + 1, a.lastIndexOf(")")).split(",");
        }
        return null;
    }
}
