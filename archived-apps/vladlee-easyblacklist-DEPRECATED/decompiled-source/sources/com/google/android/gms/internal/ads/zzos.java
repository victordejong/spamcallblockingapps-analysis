package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzos.class */
public final class zzos {

    /* renamed from: a */
    private final int f15262a;

    /* renamed from: b */
    private final int f15263b;
    public final List<byte[]> zzafg;
    public final int zzaqu;
    public final float zzbgf;

    private zzos(List<byte[]> list, int i, int i2, int i3, float f) {
        this.zzafg = list;
        this.zzaqu = i;
        this.f15262a = i2;
        this.f15263b = i3;
        this.zzbgf = f;
    }

    /* renamed from: a */
    private static byte[] m3162a(zzoj zzojVar) {
        int readUnsignedShort = zzojVar.readUnsignedShort();
        int position = zzojVar.getPosition();
        zzojVar.zzbf(readUnsignedShort);
        return zzob.zzc(zzojVar.data, position, readUnsignedShort);
    }

    public static zzos zzf(zzoj zzojVar) {
        float f;
        int i;
        int i2;
        try {
            zzojVar.zzbf(4);
            int readUnsignedByte = (zzojVar.readUnsignedByte() & 3) + 1;
            if (readUnsignedByte != 3) {
                ArrayList arrayList = new ArrayList();
                int readUnsignedByte2 = zzojVar.readUnsignedByte() & 31;
                for (int i3 = 0; i3 < readUnsignedByte2; i3++) {
                    arrayList.add(m3162a(zzojVar));
                }
                int readUnsignedByte3 = zzojVar.readUnsignedByte();
                for (int i4 = 0; i4 < readUnsignedByte3; i4++) {
                    arrayList.add(m3162a(zzojVar));
                }
                if (readUnsignedByte2 > 0) {
                    zzoh zzd = zzoi.zzd((byte[]) arrayList.get(0), readUnsignedByte, ((byte[]) arrayList.get(0)).length);
                    i = zzd.width;
                    i2 = zzd.height;
                    f = zzd.zzbgf;
                } else {
                    f = 1.0f;
                    i2 = -1;
                    i = -1;
                }
                return new zzos(arrayList, readUnsignedByte, i, i2, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhd("Error parsing AVC config", e);
        }
    }
}
