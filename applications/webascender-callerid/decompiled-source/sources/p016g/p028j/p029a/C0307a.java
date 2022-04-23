package p016g.p028j.p029a;

import java.io.UnsupportedEncodingException;
import n.i;
/* renamed from: g.j.a.a */
/* loaded from: classes2-dex2jar.jar:g/j/a/a.class */
public final class C0307a {
    /* renamed from: a */
    public static String m470a(String str, String str2) {
        try {
            String c = i.w((str + ":" + str2).getBytes("ISO-8859-1")).c();
            return "Basic " + c;
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }
}
