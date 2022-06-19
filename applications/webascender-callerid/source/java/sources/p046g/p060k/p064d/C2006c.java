package p046g.p060k.p064d;

import java.util.Locale;
/* renamed from: g.k.d.c */
/* loaded from: classes2-dex2jar.jar:g/k/d/c.class */
public class C2006c {
    /* renamed from: a */
    public static String m399a(Long l) {
        return m398b(l, true);
    }

    /* renamed from: b */
    public static String m398b(Long l, boolean z) {
        if (l == null || l.longValue() < 0) {
            return "";
        }
        int i = z ? 1000 : 1024;
        if (l.longValue() < i) {
            return l + " B";
        }
        double d = i;
        int log = (int) (Math.log(l.longValue()) / Math.log(d));
        StringBuilder sb = new StringBuilder();
        sb.append((z ? "kMGTPE" : "KMGTPE").charAt(log - 1));
        sb.append(z ? "" : "i");
        return String.format(Locale.US, "%.1f %sB", Double.valueOf(l.longValue() / Math.pow(d, log)), sb.toString());
    }
}
