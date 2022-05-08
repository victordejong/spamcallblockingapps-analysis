package com.google.android.gms.internal.measurement;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.dj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dj.class */
public final class C2555dj {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m2797a(zzgo zzgoVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m2796a(zzgoVar, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    private static final String m2795a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(AbstractC0079b.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0327, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x032a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x032a, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0346, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x032a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x035e, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x032a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0376, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x032a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m2796a(com.google.android.gms.internal.measurement.zzgo r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1114
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2555dj.m2796a(com.google.android.gms.internal.measurement.zzgo, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final void m2794a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m2794a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m2794a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C2581ei.m2610a(zzdu.zza((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzdu) {
                sb.append(": \"");
                sb.append(C2581ei.m2610a((zzdu) obj));
                sb.append('\"');
            } else if (obj instanceof zzfd) {
                sb.append(" {");
                m2796a((zzfd) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m2794a(sb, i4, "key", entry2.getKey());
                m2794a(sb, i4, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
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
