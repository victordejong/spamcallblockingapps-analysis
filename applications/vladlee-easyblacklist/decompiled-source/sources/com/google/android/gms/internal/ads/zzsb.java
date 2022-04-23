package com.google.android.gms.internal.ads;

import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsb.class */
public final class zzsb implements Parcelable.Creator<zzry> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzry createFromParcel(android.os.Parcel r14) {
        /*
            r13 = this;
            r0 = r14
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.validateObjectHeader(r0)
            r15 = r0
            r0 = 0
            r16 = r0
            r0 = r16
            r18 = r0
            r0 = 0
            r20 = r0
            r0 = r20
            r21 = r0
            r0 = r21
            r22 = r0
            r0 = r22
            r23 = r0
            r0 = r23
            r24 = r0
            r0 = 0
            r25 = r0
        L_0x0020:
            r0 = r14
            int r0 = r0.dataPosition()
            r1 = r15
            if (r0 >= r1) goto L_0x00c0
            r0 = r14
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readHeader(r0)
            r26 = r0
            r0 = r26
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.getFieldId(r0)
            switch(r0) {
                case 2: goto L_0x00b5;
                case 3: goto L_0x00ab;
                case 4: goto L_0x00a0;
                case 5: goto L_0x0095;
                case 6: goto L_0x008a;
                case 7: goto L_0x007f;
                case 8: goto L_0x0074;
                case 9: goto L_0x0069;
                default: goto L_0x0060;
            }
        L_0x0060:
            r0 = r14
            r1 = r26
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.skipUnknownField(r0, r1)
            goto L_0x0020
        L_0x0069:
            r0 = r14
            r1 = r26
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readLong(r0, r1)
            r18 = r0
            goto L_0x0020
        L_0x0074:
            r0 = r14
            r1 = r26
            boolean r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readBoolean(r0, r1)
            r25 = r0
            goto L_0x0020
        L_0x007f:
            r0 = r14
            r1 = r26
            android.os.Bundle r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createBundle(r0, r1)
            r24 = r0
            goto L_0x0020
        L_0x008a:
            r0 = r14
            r1 = r26
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r23 = r0
            goto L_0x0020
        L_0x0095:
            r0 = r14
            r1 = r26
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r22 = r0
            goto L_0x0020
        L_0x00a0:
            r0 = r14
            r1 = r26
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r21 = r0
            goto L_0x0020
        L_0x00ab:
            r0 = r14
            r1 = r26
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readLong(r0, r1)
            r16 = r0
            goto L_0x0020
        L_0x00b5:
            r0 = r14
            r1 = r26
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r20 = r0
            goto L_0x0020
        L_0x00c0:
            r0 = r14
            r1 = r15
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ensureAtEnd(r0, r1)
            com.google.android.gms.internal.ads.zzry r0 = new com.google.android.gms.internal.ads.zzry
            r1 = r0
            r2 = r20
            r3 = r16
            r4 = r21
            r5 = r22
            r6 = r23
            r7 = r24
            r8 = r25
            r9 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsb.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzry[] newArray(int i) {
        return new zzry[i];
    }
}
