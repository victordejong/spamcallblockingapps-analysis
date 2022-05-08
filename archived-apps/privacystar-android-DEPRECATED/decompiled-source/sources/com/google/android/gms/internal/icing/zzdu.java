package com.google.android.gms.internal.icing;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.List;
import java.util.Map;
import org.apache.commons.p018io.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdu.class */
public final class zzdu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(zzdr zzdrVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zza(zzdrVar, sb, 0);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x031c, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x031f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x031f, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x033b, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x031f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0353, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x031f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x036b, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x031f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.icing.zzdr r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1099
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdu.zza(com.google.android.gms.internal.icing.zzdr, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zza(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zza(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzet.zzc(zzbi.zzg((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzbi) {
                sb.append(": \"");
                sb.append(zzet.zzc((zzbi) obj));
                sb.append('\"');
            } else if (obj instanceof zzck) {
                sb.append(" {");
                zza((zzck) obj, sb, i + 2);
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zza(sb, i4, "key", entry2.getKey());
                zza(sb, i4, FirebaseAnalytics.Param.VALUE, entry2.getValue());
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
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

    private static final String zzj(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
