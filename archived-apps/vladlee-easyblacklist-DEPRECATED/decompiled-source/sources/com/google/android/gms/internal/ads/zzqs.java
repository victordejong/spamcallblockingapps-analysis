package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.MurmurHash3;
import java.io.UnsupportedEncodingException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqs.class */
public final class zzqs {
    public static int zzbx(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = str.getBytes();
        }
        return MurmurHash3.murmurhash3_x86_32(bArr, 0, bArr.length, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ea, code lost:
        if (((r0 >= 65382 && r0 <= 65437) || (r0 >= 65441 && r0 <= 65500)) != false) goto L_0x00ed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016b, code lost:
        if (r16 == false) goto L_0x0196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0193, code lost:
        if (r16 == false) goto L_0x0196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0196, code lost:
        r15 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x019a, code lost:
        r13 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] zzd(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqs.zzd(java.lang.String, boolean):java.lang.String[]");
    }
}
