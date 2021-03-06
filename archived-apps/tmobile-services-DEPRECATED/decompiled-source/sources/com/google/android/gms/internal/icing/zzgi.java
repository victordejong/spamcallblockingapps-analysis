package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgi.class */
final class zzgi {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m13620a(zzct zzctVar) {
        zzgl zzglVar = new zzgl(zzctVar);
        StringBuilder sb = new StringBuilder(zzglVar.size());
        for (int i = 0; i < zzglVar.size(); i++) {
            byte a = zzglVar.mo13616a(i);
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
