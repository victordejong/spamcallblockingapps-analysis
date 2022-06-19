package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.mp;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.e1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/e1.class */
final class C1040e1 {
    /* renamed from: a */
    public static String m2948a(mp mpVar) {
        StringBuilder sb = new StringBuilder(mpVar.m2731g());
        for (int i = 0; i < mpVar.m2731g(); i++) {
            byte m2733c = mpVar.m2733c(i);
            if (m2733c == 34) {
                sb.append("\\\"");
            } else if (m2733c == 39) {
                sb.append("\\'");
            } else if (m2733c != 92) {
                switch (m2733c) {
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
                        if (m2733c < 32 || m2733c > 126) {
                            sb.append('\\');
                            sb.append((char) (((m2733c >>> 6) & 3) + 48));
                            sb.append((char) (((m2733c >>> 3) & 7) + 48));
                            sb.append((char) ((m2733c & 7) + 48));
                            break;
                        } else {
                            sb.append((char) m2733c);
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
