package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzjj;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.a4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/a4.class */
public final class C4458a4 {
    /* renamed from: a */
    public static String m25565a(zzjj zzjjVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m25564a(zzjjVar, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m25563a(String str) {
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

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0331, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0334, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0350, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0368, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0380, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x0334;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m25564a(com.google.android.gms.internal.measurement.zzjj r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1125
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4458a4.m25564a(com.google.android.gms.internal.measurement.zzjj, java.lang.StringBuilder, int):void");
    }

    /* renamed from: a */
    public static final void m25562a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m25562a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m25562a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C4473c5.m25520a(zzgp.zza((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgp) {
                sb.append(": \"");
                sb.append(C4473c5.m25520a((zzgp) obj));
                sb.append('\"');
            } else if (obj instanceof zzhy) {
                sb.append(" {");
                m25564a((zzhy) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m25562a(sb, i4, "key", entry2.getKey());
                m25562a(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }
}
