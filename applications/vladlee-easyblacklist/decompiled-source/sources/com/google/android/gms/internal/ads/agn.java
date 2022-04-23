package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agn.class */
abstract class agn implements zzdpi {

    /* renamed from: b */
    private static final int[] f7332b = m5439a(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a */
    int[] f7333a;

    /* renamed from: c */
    private final int f7334c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public agn(byte[] bArr, int i) {
        if (bArr.length == 32) {
            this.f7333a = m5439a(bArr);
            this.f7334c = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    /* renamed from: a */
    private static int m5441a(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5437a(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m5436a(iArr, 0, 4, 8, 12);
            m5436a(iArr, 1, 5, 9, 13);
            m5436a(iArr, 2, 6, 10, 14);
            m5436a(iArr, 3, 7, 11, 15);
            m5436a(iArr, 0, 5, 10, 15);
            m5436a(iArr, 1, 6, 11, 12);
            m5436a(iArr, 2, 7, 8, 13);
            m5436a(iArr, 3, 4, 9, 14);
        }
    }

    /* renamed from: a */
    private static void m5436a(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m5441a(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m5441a(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m5441a(iArr[i] ^ iArr[i4], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m5441a(iArr[i2] ^ iArr[i3], 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5435a(int[] iArr, int[] iArr2) {
        int[] iArr3 = f7332b;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, f7332b.length, 8);
    }

    /* renamed from: a */
    private static int[] m5439a(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract int mo5430a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final ByteBuffer m5438a(byte[] bArr, int i) {
        int[] a = mo5429a(m5439a(bArr), i);
        int[] iArr = (int[]) a.clone();
        m5437a(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            a[i2] = a[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(a, 0, 16);
        return order;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5440a(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() - mo5430a() >= bArr.length) {
            byte[] zzey = zzdpn.zzey(mo5430a());
            byteBuffer.put(zzey);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer a = m5438a(zzey, this.f7334c + i2);
                if (i2 == i - 1) {
                    zzdoi.zza(byteBuffer, wrap, a, remaining % 64);
                } else {
                    zzdoi.zza(byteBuffer, wrap, a, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    /* renamed from: a */
    abstract int[] mo5429a(int[] iArr, int i);

    @Override // com.google.android.gms.internal.ads.zzdpi
    public final byte[] zzp(byte[] bArr) {
        if (bArr.length <= Api.BaseClientBuilder.API_PRIORITY_OTHER - mo5430a()) {
            ByteBuffer allocate = ByteBuffer.allocate(mo5430a() + bArr.length);
            m5440a(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
