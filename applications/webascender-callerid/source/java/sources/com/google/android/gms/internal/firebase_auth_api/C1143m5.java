package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.a9;
import com.google.android.gms.internal.firebase-auth-api.m9;
import com.google.android.gms.internal.firebase-auth-api.r8;
import com.google.android.gms.internal.firebase-auth-api.r9;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.m5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/m5.class */
final class C1143m5 {
    /* renamed from: a */
    public static void m2740a(a9 a9Var) throws GeneralSecurityException {
        C1184qc.m2505e(m2738c(a9Var.y().y()));
        m2739b(a9Var.y().z());
        if (a9Var.A() != r8.zza) {
            C1099i3.m2815e(a9Var.z().y());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }

    /* renamed from: b */
    public static String m2739b(r9 r9Var) throws NoSuchAlgorithmException {
        r8 r8Var = r8.zza;
        m9 m9Var = m9.zza;
        r9 r9Var2 = r9.zza;
        int ordinal = r9Var.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                return "HmacSha256";
            }
            if (ordinal == 4) {
                return "HmacSha512";
            }
            String valueOf = String.valueOf(r9Var);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("hash unsupported for HMAC: ");
            sb.append(valueOf);
            throw new NoSuchAlgorithmException(sb.toString());
        }
        return "HmacSha1";
    }

    /* renamed from: c */
    public static int m2738c(m9 m9Var) throws GeneralSecurityException {
        r8 r8Var = r8.zza;
        m9 m9Var2 = m9.zza;
        r9 r9Var = r9.zza;
        int ordinal = m9Var.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return 3;
                }
                String valueOf = String.valueOf(m9Var);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("unknown curve type: ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return i;
    }

    /* renamed from: d */
    public static int m2737d(r8 r8Var) throws GeneralSecurityException {
        r8 r8Var2 = r8.zza;
        m9 m9Var = m9.zza;
        r9 r9Var = r9.zza;
        int ordinal = r8Var.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return 3;
                }
                String valueOf = String.valueOf(r8Var);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                sb.append("unknown point format: ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return i;
    }
}
