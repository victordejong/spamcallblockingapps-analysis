package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazb.class */
public final class zzazb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzazb> CREATOR = new zzaza();

    /* renamed from: a */
    private boolean f11556a;
    public String zzbma;
    public int zzdvz;
    public int zzdwa;
    public boolean zzdwb;

    public zzazb(int i, int i2, boolean z) {
        this(i, i2, z, (byte) 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzazb(int r8, int r9, boolean r10, byte r11) {
        /*
            r7 = this;
            r0 = r10
            if (r0 == 0) goto L_0x000b
            java.lang.String r0 = "0"
            r12 = r0
            goto L_0x000f
        L_0x000b:
            java.lang.String r0 = "1"
            r12 = r0
        L_0x000f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r12
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r13 = r0
            r0 = r13
            java.lang.String r1 = "afma-sdk-a-v"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r13
            java.lang.String r1 = r1.toString()
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazb.<init>(int, int, boolean, byte):void");
    }

    public zzazb(int i, int i2, boolean z, boolean z2) {
        this(i, i2, true, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzazb(String str, int i, int i2, boolean z, boolean z2) {
        this.zzbma = str;
        this.zzdvz = i;
        this.zzdwa = i2;
        this.zzdwb = z;
        this.f11556a = z2;
    }

    public static zzazb zzxm() {
        return new zzazb(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzbma, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdvz);
        SafeParcelWriter.writeInt(parcel, 4, this.zzdwa);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzdwb);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f11556a);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
