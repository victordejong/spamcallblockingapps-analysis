package p081h.p203i.p401g;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.List;
/* renamed from: h.i.g.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/d1.class */
public class C10241d1 extends RuntimeException {
    public C10241d1(AbstractC10437l0 l0Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public C10241d1(List<String> list) {
        super(m13032a(list));
    }

    /* renamed from: a */
    public static String m13032a(List<String> list) {
        StringBuilder sb = new StringBuilder("Message missing required fields: ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public C10222a0 m13033a() {
        return new C10222a0(getMessage());
    }
}
