package p131c.p161d.p266c.p267a;
/* renamed from: c.d.c.a.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/a.class */
public final class C4908a {
    /* renamed from: a */
    public static String m24843a(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m24842b(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (m24842b(c)) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m24844a(char c) {
        return c >= 'a' && c <= 'z';
    }

    /* renamed from: b */
    public static String m24841b(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m24844a(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (m24844a(c)) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* renamed from: b */
    public static boolean m24842b(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: c */
    public static char m24840c(char c) {
        char c2 = c;
        if (m24844a(c)) {
            c2 = (char) (c ^ ' ');
        }
        return c2;
    }
}
