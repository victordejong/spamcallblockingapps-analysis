package com.google.android.gms.internal.firebase_auth_api;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.z2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/z2.class */
final class C1274z2 implements Comparable<C1274z2> {

    /* renamed from: f */
    private final byte[] f3857f;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C1274z2 c1274z2) {
        int i;
        C1274z2 c1274z22 = c1274z2;
        int length = this.f3857f.length;
        int length2 = c1274z22.f3857f.length;
        if (length != length2) {
            i = length - length2;
        } else {
            int i2 = 0;
            while (true) {
                byte[] bArr = this.f3857f;
                i = 0;
                if (i2 >= bArr.length) {
                    break;
                }
                byte b = bArr[i2];
                byte b2 = c1274z22.f3857f[i2];
                if (b != b2) {
                    i = b - b2;
                    break;
                }
                i2++;
            }
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1274z2)) {
            return false;
        }
        return Arrays.equals(this.f3857f, ((C1274z2) obj).f3857f);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f3857f);
    }

    public final String toString() {
        return C1278zc.m2274a(this.f3857f);
    }
}
