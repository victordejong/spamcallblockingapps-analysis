package com.google.android.gms.internal.ads;

import androidx.appcompat.C0247a;
import com.google.android.gms.ads.AdRequest;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhk.class */
public final class zzhk {

    /* renamed from: a */
    private static final int[] f14840a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f14841b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f14842c = {24000, 22050, 16000};

    /* renamed from: d */
    private static final int[] f14843d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f14844e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 576, 640};

    /* renamed from: f */
    private static final int[] f14845f = {69, 87, 104, C0247a.C0257j.f779aM, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzgw zza(zzoj zzojVar, String str, String str2, zziv zzivVar) {
        int i = f14841b[(zzojVar.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzojVar.readUnsignedByte();
        int i2 = f14843d[(readUnsignedByte & 56) >> 3];
        int i3 = i2;
        if ((readUnsignedByte & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzgw.zza(str, "audio/ac3", null, -1, -1, i3, i, null, null, 0, str2);
    }

    public static zzgw zzb(zzoj zzojVar, String str, String str2, zziv zzivVar) {
        zzojVar.zzbf(2);
        int i = f14841b[(zzojVar.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzojVar.readUnsignedByte();
        int i2 = f14843d[(readUnsignedByte & 14) >> 1];
        int i3 = i2;
        if ((readUnsignedByte & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzgw.zza(str, "audio/eac3", null, -1, -1, i3, i, null, null, 0, str2);
    }

    public static int zzey() {
        return 1536;
    }

    public static int zzh(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f14840a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
