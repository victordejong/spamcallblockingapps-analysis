package p081h.p203i.p204a.p224e.p259j.p269j;

import androidx.core.app.Person;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.List;
import java.util.Map;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.j.w2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/w2.class */
public final class C7946w2 {
    /* renamed from: a */
    public static String m18845a(AbstractC7925t2 t2Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m18844a(t2Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m18843a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0323, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x0326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0326, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0342, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x0326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x035a, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x0326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0372, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x0326;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m18844a(p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2 r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7946w2.m18844a(h.i.a.e.j.j.t2, java.lang.StringBuilder, int):void");
    }

    /* renamed from: a */
    public static final void m18842a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m18842a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m18842a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C7961y3.m18790a(AbstractC7791e0.m19476a((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC7791e0) {
                sb.append(": \"");
                sb.append(C7961y3.m18790a((AbstractC7791e0) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC7869n1) {
                sb.append(" {");
                m18844a((AbstractC7869n1) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append(CssParser.BLOCK_END);
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m18842a(sb, i4, Person.KEY_KEY, entry2.getKey());
                m18842a(sb, i4, C13032a.f29462d, entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append(CssParser.BLOCK_END);
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }
}
