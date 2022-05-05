package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoy.class */
public final class zzoy {
    public final List<byte[]> zzafg;
    public final int zzaqu;

    private zzoy(List<byte[]> list, int i) {
        this.zzafg = list;
        this.zzaqu = i;
    }

    public static zzoy zzh(zzoj zzojVar) {
        try {
            zzojVar.zzbf(21);
            int readUnsignedByte = zzojVar.readUnsignedByte();
            int readUnsignedByte2 = zzojVar.readUnsignedByte();
            int position = zzojVar.getPosition();
            int i = 0;
            for (int i2 = 0; i2 < readUnsignedByte2; i2++) {
                zzojVar.zzbf(1);
                int readUnsignedShort = zzojVar.readUnsignedShort();
                for (int i3 = 0; i3 < readUnsignedShort; i3++) {
                    int readUnsignedShort2 = zzojVar.readUnsignedShort();
                    i += readUnsignedShort2 + 4;
                    zzojVar.zzbf(readUnsignedShort2);
                }
            }
            zzojVar.zzbe(position);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < readUnsignedByte2; i5++) {
                zzojVar.zzbf(1);
                int readUnsignedShort3 = zzojVar.readUnsignedShort();
                for (int i6 = 0; i6 < readUnsignedShort3; i6++) {
                    int readUnsignedShort4 = zzojVar.readUnsignedShort();
                    System.arraycopy(zzoi.zzbga, 0, bArr, i4, zzoi.zzbga.length);
                    int length = i4 + zzoi.zzbga.length;
                    System.arraycopy(zzojVar.data, zzojVar.getPosition(), bArr, length, readUnsignedShort4);
                    i4 = length + readUnsignedShort4;
                    zzojVar.zzbf(readUnsignedShort4);
                }
            }
            return new zzoy(i == 0 ? null : Collections.singletonList(bArr), (readUnsignedByte & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhd("Error parsing HEVC config", e);
        }
    }
}
