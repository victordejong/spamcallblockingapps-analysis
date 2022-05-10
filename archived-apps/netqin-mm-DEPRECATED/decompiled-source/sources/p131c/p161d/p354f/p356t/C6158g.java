package p131c.p161d.p354f.p356t;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* renamed from: c.d.f.t.g */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/g.class */
public class C6158g {
    /* renamed from: a */
    public static String m21916a(int i) {
        if (i == 0) {
            return "EEEE, MMMM d, yyyy";
        }
        if (i == 1) {
            return "MMMM d, yyyy";
        }
        if (i == 2) {
            return "MMM d, yyyy";
        }
        if (i == 3) {
            return "M/d/yy";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i);
    }

    /* renamed from: a */
    public static DateFormat m21915a(int i, int i2) {
        return new SimpleDateFormat(m21916a(i) + " " + m21914b(i2), Locale.US);
    }

    /* renamed from: b */
    public static String m21914b(int i) {
        if (i == 0 || i == 1) {
            return "h:mm:ss a z";
        }
        if (i == 2) {
            return "h:mm:ss a";
        }
        if (i == 3) {
            return "h:mm a";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i);
    }
}
