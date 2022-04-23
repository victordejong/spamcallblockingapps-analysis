package p016g.p028j.p029a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: g.j.a.b */
/* loaded from: classes2-dex2jar.jar:g/j/a/b.class */
public final class C0308b {

    /* renamed from: a */
    private final String[] f626a;

    /* renamed from: g.j.a.b$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/b$b.class */
    public static final class C0310b {

        /* renamed from: a */
        private final List<String> f627a = new ArrayList(20);

        /* renamed from: d */
        private void m463d(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            } else if (!str.isEmpty()) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= 31 || charAt >= 127) {
                        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 != null) {
                    int length2 = str2.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char charAt2 = str2.charAt(i2);
                        if (charAt2 <= 31 || charAt2 >= 127) {
                            throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str2));
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("value == null");
            } else {
                throw new IllegalArgumentException("name is empty");
            }
        }

        /* renamed from: b */
        C0310b m465b(String str, String str2) {
            this.f627a.add(str);
            this.f627a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public C0308b m464c() {
            return new C0308b(this);
        }

        /* renamed from: e */
        public C0310b m462e(String str) {
            int i = 0;
            while (i < this.f627a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f627a.get(i))) {
                    this.f627a.remove(i);
                    this.f627a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        /* renamed from: f */
        public C0310b m461f(String str, String str2) {
            m463d(str, str2);
            m462e(str);
            m465b(str, str2);
            return this;
        }
    }

    private C0308b(C0310b bVar) {
        this.f626a = (String[]) bVar.f627a.toArray(new String[bVar.f627a.size()]);
    }

    /* renamed from: a */
    public String m469a(int i) {
        int i2 = i * 2;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f626a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    /* renamed from: b */
    public int m468b() {
        return this.f626a.length / 2;
    }

    /* renamed from: c */
    public String m467c(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f626a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int b = m468b();
        for (int i = 0; i < b; i++) {
            sb.append(m469a(i));
            sb.append(": ");
            sb.append(m467c(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
