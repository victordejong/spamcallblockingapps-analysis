package com.google.android.gms.internal.firebase_auth_api;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.fk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/fk.class */
public final /* synthetic */ class C1060fk {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (r8 >= r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
        if (com.google.android.gms.internal.firebase_auth_api.C1056fc.m2919a(r0[r8]) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
        r0[r8] = (char) (r0 ^ ' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
        r5 = java.lang.String.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002f, code lost:
        r0 = r0.toCharArray();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2875a(com.google.android.gms.internal.firebase-auth-api.gk r5, java.lang.String r6) {
        /*
            java.lang.String r0 = "SHA-256"
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch: java.security.NoSuchAlgorithmException -> L66
            r1 = r6
            byte[] r1 = r1.getBytes()     // Catch: java.security.NoSuchAlgorithmException -> L66
            byte[] r0 = r0.digest(r1)     // Catch: java.security.NoSuchAlgorithmException -> L66
            r5 = r0
            java.lang.String r0 = new java.lang.String     // Catch: java.security.NoSuchAlgorithmException -> L66
            r6 = r0
            r0 = r6
            r1 = r5
            r0.<init>(r1)     // Catch: java.security.NoSuchAlgorithmException -> L66
            r0 = r6
            int r0 = r0.length()     // Catch: java.security.NoSuchAlgorithmException -> L66
            r7 = r0
            r0 = 0
            r8 = r0
        L1d:
            r0 = r6
            r5 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L64
            r0 = r6
            r1 = r8
            char r0 = r0.charAt(r1)     // Catch: java.security.NoSuchAlgorithmException -> L66
            boolean r0 = com.google.android.gms.internal.firebase_auth_api.C1056fc.m2919a(r0)     // Catch: java.security.NoSuchAlgorithmException -> L66
            if (r0 == 0) goto L5e
            r0 = r6
            char[] r0 = r0.toCharArray()     // Catch: java.security.NoSuchAlgorithmException -> L66
            r5 = r0
        L34:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L56
            r0 = r5
            r1 = r8
            char r0 = r0[r1]
            r9 = r0
            r0 = r9
            boolean r0 = com.google.android.gms.internal.firebase_auth_api.C1056fc.m2919a(r0)     // Catch: java.security.NoSuchAlgorithmException -> L66
            if (r0 == 0) goto L50
            r0 = r5
            r1 = r8
            r2 = r9
            r3 = 32
            r2 = r2 ^ r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
        L50:
            int r8 = r8 + 1
            goto L34
        L56:
            r0 = r5
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.security.NoSuchAlgorithmException -> L66
            r5 = r0
            goto L64
        L5e:
            int r8 = r8 + 1
            goto L1d
        L64:
            r0 = r5
            return r0
        L66:
            r5 = move-exception
            com.google.android.gms.common.l.a r0 = com.google.android.gms.internal.firebase_auth_api.AbstractC1077gk.f3716b
            java.lang.String r1 = "Failed to get SHA-256 MessageDigest"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r0.m3220c(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth_api.C1060fk.m2875a(com.google.android.gms.internal.firebase-auth-api.gk, java.lang.String):java.lang.String");
    }
}
