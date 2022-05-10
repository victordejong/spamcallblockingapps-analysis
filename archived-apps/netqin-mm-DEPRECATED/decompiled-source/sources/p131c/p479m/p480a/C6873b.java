package p131c.p479m.p480a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: c.m.a.b */
/* loaded from: classes2-dex2jar.jar:c/m/a/b.class */
public final class C6873b {

    /* renamed from: a */
    public final String[] f21063a;

    /* renamed from: c.m.a.b$b */
    /* loaded from: classes2-dex2jar.jar:c/m/a/b$b.class */
    public static final class C6875b {

        /* renamed from: a */
        public final List<String> f21064a = new ArrayList(20);

        /* renamed from: a */
        public C6875b m19498a(String str) {
            int i = 0;
            while (i < this.f21064a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f21064a.get(i))) {
                    this.f21064a.remove(i);
                    this.f21064a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        /* renamed from: a */
        public C6875b m19497a(String str, String str2) {
            this.f21064a.add(str);
            this.f21064a.add(str2.trim());
            return this;
        }

        /* renamed from: a */
        public C6873b m19500a() {
            return new C6873b(this);
        }

        /* renamed from: b */
        public final void m19496b(String str, String str2) {
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

        /* renamed from: c */
        public C6875b m19495c(String str, String str2) {
            m19496b(str, str2);
            m19498a(str);
            m19497a(str, str2);
            return this;
        }
    }

    public C6873b(C6875b bVar) {
        this.f21063a = (String[]) bVar.f21064a.toArray(new String[bVar.f21064a.size()]);
    }

    /* renamed from: a */
    public int m19503a() {
        return this.f21063a.length / 2;
    }

    /* renamed from: a */
    public String m19502a(int i) {
        int i2 = i * 2;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f21063a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    /* renamed from: b */
    public String m19501b(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f21063a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int a = m19503a();
        for (int i = 0; i < a; i++) {
            sb.append(m19502a(i));
            sb.append(": ");
            sb.append(m19501b(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
