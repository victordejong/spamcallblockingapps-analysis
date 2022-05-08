package p081h.p093b.p113e;

import java.io.IOException;
import java.util.Set;
import p081h.p093b.p113e.p114n.C5710b;
/* renamed from: h.b.e.g */
/* loaded from: classes-dex2jar.jar:h/b/e/g.class */
public class C5698g extends C5696f {

    /* renamed from: h */
    public String f14287h;

    /* renamed from: i */
    public boolean f14288i = false;

    public C5698g(int i) {
        super(i);
    }

    /* renamed from: b */
    public static String m24709b(char c) {
        return (c == 'n' || c == 'N') ? "\n" : String.valueOf(c);
    }

    /* renamed from: i */
    public static String m24697i(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '\\' || i >= length - 1) {
                sb.append(charAt);
            } else {
                i++;
                char charAt2 = str.charAt(i);
                if (charAt2 == 'n' || charAt2 == 'N') {
                    sb.append("\n");
                } else {
                    sb.append(charAt2);
                }
            }
            i++;
        }
        return sb.toString();
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: a */
    public void mo24713a(C5702k kVar) {
        if (!this.f14288i) {
            this.f14288i = true;
        }
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: a */
    public void mo24712a(C5702k kVar, String str, String str2) {
        m24708b(kVar, str, str2);
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: a */
    public boolean mo24711a(boolean z) throws IOException, C5710b {
        return super.mo24711a(z);
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: b */
    public String mo24707b(String str) throws IOException, C5710b {
        return str;
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: b */
    public Set<String> mo24710b() {
        return C5701j.f14294b;
    }

    /* renamed from: b */
    public final void m24708b(C5702k kVar, String str, String str2) {
        int length = str2.length();
        StringBuilder sb = null;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = str2.charAt(i);
            if (charAt == '\"') {
                if (z) {
                    kVar.m24689a(str, m24698h(sb.toString()));
                    sb = null;
                    z = false;
                } else {
                    if (sb != null && sb.length() <= 0) {
                        kVar.m24689a(str, m24698h(sb.toString()));
                    }
                    z = true;
                }
            } else if (charAt != ',' || z) {
                StringBuilder sb2 = sb;
                if (sb == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(charAt);
                sb = sb2;
            } else if (sb == null) {
                String str3 = "Comma is used before actual string comes. (" + str2 + ")";
            } else {
                kVar.m24689a(str, m24698h(sb.toString()));
                sb = null;
            }
        }
        if (!(sb == null || sb.length() == 0)) {
            kVar.m24689a(str, m24698h(sb.toString()));
        }
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: d */
    public void mo24706d(C5702k kVar, String str) {
        mo24701g(kVar, str);
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: e */
    public String mo24705e() throws IOException {
        String str = this.f14287h;
        if (str == null) {
            return this.f14281e.readLine();
        }
        this.f14287h = null;
        return str;
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: e */
    public void mo24704e(C5702k kVar, String str) throws C5710b {
        try {
            super.mo24704e(kVar, str);
        } catch (C5710b e) {
            String[] split = str.split("=", 2);
            if (split.length == 2) {
                mo24712a(kVar, split[0], split[1]);
                return;
            }
            throw new C5710b("Unknown params value: " + str);
        }
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: f */
    public String mo24703f() throws IOException, C5710b {
        String readLine;
        String str = null;
        StringBuilder sb = null;
        while (true) {
            readLine = this.f14281e.readLine();
            if (readLine == null) {
                break;
            } else if (readLine.length() != 0) {
                if (readLine.charAt(0) != ' ' && readLine.charAt(0) != '\t') {
                    if (sb != null || this.f14287h != null) {
                        break;
                    }
                    this.f14287h = readLine;
                } else {
                    StringBuilder sb2 = sb;
                    if (sb == null) {
                        sb2 = new StringBuilder();
                    }
                    String str2 = this.f14287h;
                    if (str2 != null) {
                        sb2.append(str2);
                        this.f14287h = null;
                    }
                    sb2.append(readLine.substring(1));
                    sb = sb2;
                }
            }
        }
        if (sb != null) {
            str = sb.toString();
        } else {
            String str3 = this.f14287h;
            if (str3 != null) {
                str = str3;
            }
        }
        this.f14287h = readLine;
        if (str != null) {
            return str;
        }
        throw new C5710b("Reached end of buffer.");
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: g */
    public int mo24702g() {
        return 1;
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: g */
    public String mo24700g(String str) {
        return m24697i(str);
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: g */
    public void mo24701g(C5702k kVar, String str) {
        m24708b(kVar, "TYPE", str);
    }

    @Override // p081h.p093b.p113e.C5696f
    /* renamed from: h */
    public String mo24699h() {
        return "3.0";
    }

    /* renamed from: h */
    public String m24698h(String str) {
        return C5704m.m24672a(str, "ISO-8859-1", "UTF-8");
    }
}
