package p193e.p194a.p751f4.p764i;

import android.net.Uri;
import p193e.p194a.p1406z3.p1409i.AbstractC21873e;
import p193e.p194a.p1406z3.p1409i.C21869a;
import s1.z.c.l;
/* renamed from: e.a.f4.i.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/i/a.class */
public final class C14037a {
    /* renamed from: a */
    public static C21869a m20828a(String str, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        AbstractC21873e.C21875b c21875b = AbstractC21873e.C21875b.f60766c;
        l.e(c21875b, "size");
        Uri uri = null;
        if (str != null) {
            if (str.length() == 0) {
                str = null;
            }
            uri = null;
            if (str != null) {
                uri = Uri.parse(str);
            }
        }
        C21869a c21869a = new C21869a(uri, c21875b);
        c21869a.f60757a = true;
        c21869a.f60758b = i;
        return c21869a;
    }
}
