package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
/* renamed from: c.d.b.d.g.c.c2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/c2.class */
public final class C4328c2 {
    /* renamed from: a */
    public static String m25984a(zzbb zzbbVar) {
        String str;
        C4333d2 d2Var = new C4333d2(zzbbVar);
        StringBuilder sb = new StringBuilder(d2Var.size());
        for (int i = 0; i < d2Var.size(); i++) {
            int a = d2Var.mo25942a(i);
            if (a == 34) {
                str = "\\\"";
            } else if (a == 39) {
                str = "\\'";
            } else if (a != 92) {
                switch (a) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (a < 32 || a > 126) {
                            sb.append('\\');
                            sb.append((char) (((a >>> 6) & 3) + 48));
                            sb.append((char) (((a >>> 3) & 7) + 48));
                            a = (a & 7) + 48;
                        }
                        sb.append((char) a);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
