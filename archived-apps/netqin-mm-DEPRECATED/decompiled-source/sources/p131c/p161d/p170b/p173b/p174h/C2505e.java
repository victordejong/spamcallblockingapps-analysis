package p131c.p161d.p170b.p173b.p174h;
/* renamed from: c.d.b.b.h.e */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/e.class */
public final class C2505e {
    /* renamed from: a */
    public static String m29637a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
