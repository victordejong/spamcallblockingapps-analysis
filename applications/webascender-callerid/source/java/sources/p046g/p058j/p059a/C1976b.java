package p046g.p058j.p059a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: g.j.a.b */
/* loaded from: classes2-dex2jar.jar:g/j/a/b.class */
public final class C1976b {

    /* renamed from: a */
    private final String[] f5305a;

    /* renamed from: g.j.a.b$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/b$b.class */
    public static final class C1978b {

        /* renamed from: a */
        private final List<String> f5306a = new ArrayList(20);

        /* renamed from: d */
        private void m463d(String str, String str2) {
            if (str != null) {
                if (str.isEmpty()) {
                    throw new IllegalArgumentException("name is empty");
                }
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= 31 || charAt >= 127) {
                        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 == null) {
                    throw new IllegalArgumentException("value == null");
                }
                int length2 = str2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    char charAt2 = str2.charAt(i2);
                    if (charAt2 <= 31 || charAt2 >= 127) {
                        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str2));
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name == null");
        }

        /* renamed from: b */
        C1978b m465b(String str, String str2) {
            this.f5306a.add(str);
            this.f5306a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public C1976b m464c() {
            return new C1976b(this);
        }

        /* renamed from: e */
        public C1978b m462e(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f5306a.size()) {
                    int i3 = i2;
                    if (str.equalsIgnoreCase(this.f5306a.get(i2))) {
                        this.f5306a.remove(i2);
                        this.f5306a.remove(i2);
                        i3 = i2 - 2;
                    }
                    i = i3 + 2;
                } else {
                    return this;
                }
            }
        }

        /* renamed from: f */
        public C1978b m461f(String str, String str2) {
            m463d(str, str2);
            m462e(str);
            m465b(str, str2);
            return this;
        }
    }

    private C1976b(C1978b c1978b) {
        this.f5305a = (String[]) c1978b.f5306a.toArray(new String[c1978b.f5306a.size()]);
    }

    /* renamed from: a */
    public String m469a(int i) {
        int i2 = i * 2;
        if (i2 >= 0) {
            String[] strArr = this.f5305a;
            if (i2 < strArr.length) {
                return strArr[i2];
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    public int m468b() {
        return this.f5305a.length / 2;
    }

    /* renamed from: c */
    public String m467c(int i) {
        int i2 = (i * 2) + 1;
        if (i2 >= 0) {
            String[] strArr = this.f5305a;
            if (i2 < strArr.length) {
                return strArr[i2];
            }
            return null;
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int m468b = m468b();
        for (int i = 0; i < m468b; i++) {
            sb.append(m469a(i));
            sb.append(": ");
            sb.append(m467c(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
