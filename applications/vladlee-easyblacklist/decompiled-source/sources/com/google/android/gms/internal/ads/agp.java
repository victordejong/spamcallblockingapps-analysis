package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agp.class */
abstract class agp implements zzdhx {

    /* renamed from: a */
    private final agn f7335a;

    /* renamed from: b */
    private final agn f7336b;

    public agp(byte[] bArr) {
        this.f7335a = mo3416a(bArr, 1);
        this.f7336b = mo3416a(bArr, 0);
    }

    /* renamed from: a */
    abstract agn mo3416a(byte[] bArr, int i);

    @Override // com.google.android.gms.internal.ads.zzdhx
    public byte[] zzc(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - this.f7335a.mo5430a()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.f7335a.mo5430a() + 16);
            if (allocate.remaining() >= bArr.length + this.f7335a.mo5430a() + 16) {
                int position = allocate.position();
                this.f7335a.m5440a(allocate, bArr);
                allocate.position(position);
                byte[] bArr3 = new byte[this.f7335a.mo5430a()];
                allocate.get(bArr3);
                allocate.limit(allocate.limit() - 16);
                byte[] bArr4 = bArr2;
                if (bArr2 == null) {
                    bArr4 = new byte[0];
                }
                ByteBuffer a = this.f7336b.m5438a(bArr3, 0);
                byte[] bArr5 = new byte[32];
                a.get(bArr5);
                int length = bArr4.length % 16 == 0 ? bArr4.length : (bArr4.length + 16) - (bArr4.length % 16);
                int remaining = allocate.remaining();
                int i = remaining % 16;
                int i2 = (i == 0 ? remaining : (remaining + 16) - i) + length;
                ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr4);
                order.position(length);
                order.put(allocate);
                order.position(i2);
                order.putLong(bArr4.length);
                order.putLong(remaining);
                byte[] a2 = ags.m5431a(bArr5, order.array());
                allocate.limit(allocate.limit() + 16);
                allocate.put(a2);
                return allocate.array();
            }
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
