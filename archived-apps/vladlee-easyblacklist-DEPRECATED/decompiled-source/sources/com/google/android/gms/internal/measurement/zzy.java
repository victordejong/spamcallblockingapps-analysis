package com.google.android.gms.internal.measurement;

import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzy.class */
public final class zzy implements Parcelable.Creator<zzv> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzv createFromParcel(android.os.Parcel r13) {
        /*
            r12 = this;
            r0 = r13
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.validateObjectHeader(r0)
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = r15
            r17 = r0
            r0 = 0
            r19 = r0
            r0 = r19
            r20 = r0
            r0 = r20
            r21 = r0
            r0 = r21
            r22 = r0
            r0 = 0
            r23 = r0
        L_0x001c:
            r0 = r13
            int r0 = r0.dataPosition()
            r1 = r14
            if (r0 >= r1) goto L_0x00ad
            r0 = r13
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readHeader(r0)
            r24 = r0
            r0 = r24
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.getFieldId(r0)
            switch(r0) {
                case 1: goto L_0x00a3;
                case 2: goto L_0x0098;
                case 3: goto L_0x008d;
                case 4: goto L_0x0082;
                case 5: goto L_0x0077;
                case 6: goto L_0x006c;
                case 7: goto L_0x0061;
                default: goto L_0x0058;
            }
        L_0x0058:
            r0 = r13
            r1 = r24
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.skipUnknownField(r0, r1)
            goto L_0x001c
        L_0x0061:
            r0 = r13
            r1 = r24
            android.os.Bundle r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createBundle(r0, r1)
            r22 = r0
            goto L_0x001c
        L_0x006c:
            r0 = r13
            r1 = r24
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r21 = r0
            goto L_0x001c
        L_0x0077:
            r0 = r13
            r1 = r24
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r20 = r0
            goto L_0x001c
        L_0x0082:
            r0 = r13
            r1 = r24
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r1)
            r19 = r0
            goto L_0x001c
        L_0x008d:
            r0 = r13
            r1 = r24
            boolean r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readBoolean(r0, r1)
            r23 = r0
            goto L_0x001c
        L_0x0098:
            r0 = r13
            r1 = r24
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readLong(r0, r1)
            r17 = r0
            goto L_0x001c
        L_0x00a3:
            r0 = r13
            r1 = r24
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readLong(r0, r1)
            r15 = r0
            goto L_0x001c
        L_0x00ad:
            r0 = r13
            r1 = r14
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ensureAtEnd(r0, r1)
            com.google.android.gms.internal.measurement.zzv r0 = new com.google.android.gms.internal.measurement.zzv
            r1 = r0
            r2 = r15
            r3 = r17
            r4 = r23
            r5 = r19
            r6 = r20
            r7 = r21
            r8 = r22
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzy.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv[] newArray(int i) {
        return new zzv[i];
    }
}
