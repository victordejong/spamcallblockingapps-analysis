package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqv.class */
public final class zzqv extends zzqo {

    /* renamed from: b */
    private MessageDigest f15412b;

    @Override // com.google.android.gms.internal.ads.zzqo
    public final byte[] zzbv(String str) {
        byte[] bArr;
        String[] split = str.split(" ");
        int i = 4;
        if (split.length != 1) {
            if (split.length >= 5) {
                byte[] bArr2 = new byte[split.length];
                int i2 = 0;
                while (true) {
                    bArr = bArr2;
                    if (i2 >= split.length) {
                        break;
                    }
                    int zzbx = zzqs.zzbx(split[i2]);
                    bArr2[i2] = (byte) ((zzbx >> 24) ^ (((zzbx & 255) ^ ((zzbx >> 8) & 255)) ^ ((zzbx >> 16) & 255)));
                    i2++;
                }
            } else {
                byte[] bArr3 = new byte[split.length << 1];
                int i3 = 0;
                while (true) {
                    bArr = bArr3;
                    if (i3 >= split.length) {
                        break;
                    }
                    int zzbx2 = zzqs.zzbx(split[i3]);
                    int i4 = (zzbx2 >> 16) ^ (65535 & zzbx2);
                    byte[] bArr4 = {(byte) i4, (byte) (i4 >> 8)};
                    int i5 = i3 << 1;
                    bArr3[i5] = bArr4[0];
                    bArr3[i5 + 1] = bArr4[1];
                    i3++;
                }
            }
        } else {
            int zzbx3 = zzqs.zzbx(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zzbx3);
            bArr = allocate.array();
        }
        this.f15412b = m3100a();
        synchronized (this.f15402a) {
            if (this.f15412b == null) {
                return new byte[0];
            }
            this.f15412b.reset();
            this.f15412b.update(bArr);
            byte[] digest = this.f15412b.digest();
            if (digest.length <= 4) {
                i = digest.length;
            }
            byte[] bArr5 = new byte[i];
            System.arraycopy(digest, 0, bArr5, 0, bArr5.length);
            return bArr5;
        }
    }
}
