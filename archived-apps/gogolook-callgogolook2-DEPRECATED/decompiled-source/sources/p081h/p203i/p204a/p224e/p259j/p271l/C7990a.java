package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a.class */
public final class C7990a {
    /* renamed from: a */
    public static String m18701a(AbstractC8209k8 k8Var) {
        C8053d dVar = new C8053d(k8Var);
        StringBuilder sb = new StringBuilder(dVar.size());
        for (int i = 0; i < dVar.size(); i++) {
            byte a = dVar.mo18639a(i);
            if (a == 34) {
                sb.append("\\\"");
            } else if (a == 39) {
                sb.append("\\'");
            } else if (a != 92) {
                switch (a) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (a < 32 || a > 126) {
                            sb.append('\\');
                            sb.append((char) (((a >>> 6) & 3) + 48));
                            sb.append((char) (((a >>> 3) & 7) + 48));
                            sb.append((char) ((a & 7) + 48));
                            break;
                        } else {
                            sb.append((char) a);
                            continue;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
