package p065f.p066a.p068b.p069a.p070r;

import androidx.core.view.PointerIconCompat;
import com.aotter.net.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
/* renamed from: f.a.b.a.r.c */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/c.class */
public class C4269c {

    /* renamed from: a */
    public static final int[] f10332a = {0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 106, 2026, 1000, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW};

    /* renamed from: b */
    public static final String[] f10333b = {"*", "us-ascii", "iso-8859-1", "iso-8859-2", "iso-8859-3", "iso-8859-4", "iso-8859-5", "iso-8859-6", "iso-8859-7", "iso-8859-8", "iso-8859-9", "shift_JIS", JsonRequest.PROTOCOL_CHARSET, "big5", "iso-10646-ucs-2", "utf-16"};

    /* renamed from: c */
    public static final HashMap<Integer, String> f10334c = new HashMap<>();

    /* renamed from: d */
    public static final HashMap<String, Integer> f10335d = new HashMap<>();

    static {
        int length = f10332a.length;
        for (int i = 0; i <= length - 1; i++) {
            f10334c.put(Integer.valueOf(f10332a[i]), f10333b[i]);
            f10335d.put(f10333b[i], Integer.valueOf(f10332a[i]));
        }
    }

    /* renamed from: a */
    public static int m29158a(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return -1;
        }
        Integer num = f10335d.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new UnsupportedEncodingException();
    }

    /* renamed from: a */
    public static String m29159a(int i) throws UnsupportedEncodingException {
        String str = f10334c.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        throw new UnsupportedEncodingException();
    }
}
