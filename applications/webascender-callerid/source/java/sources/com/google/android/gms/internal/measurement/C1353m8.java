package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.m8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/m8.class */
final class C1353m8 {
    /* renamed from: a */
    public static String m2032a(AbstractC1351m5 abstractC1351m5) {
        StringBuilder sb = new StringBuilder(abstractC1351m5.m2045g());
        for (int i = 0; i < abstractC1351m5.m2045g(); i++) {
            byte m2047c = abstractC1351m5.m2047c(i);
            if (m2047c == 34) {
                sb.append("\\\"");
            } else if (m2047c == 39) {
                sb.append("\\'");
            } else if (m2047c != 92) {
                switch (m2047c) {
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
                        if (m2047c < 32 || m2047c > 126) {
                            sb.append('\\');
                            sb.append((char) (((m2047c >>> 6) & 3) + 48));
                            sb.append((char) (((m2047c >>> 3) & 7) + 48));
                            sb.append((char) ((m2047c & 7) + 48));
                            break;
                        } else {
                            sb.append((char) m2047c);
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
