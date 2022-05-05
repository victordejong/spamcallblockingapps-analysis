package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ei */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ei.class */
final class C2581ei {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m2610a(zzdu zzduVar) {
        String str;
        C2584el elVar = new C2584el(zzduVar);
        StringBuilder sb = new StringBuilder(elVar.mo2606a());
        for (int i = 0; i < elVar.mo2606a(); i++) {
            int a = elVar.mo2605a(i);
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
