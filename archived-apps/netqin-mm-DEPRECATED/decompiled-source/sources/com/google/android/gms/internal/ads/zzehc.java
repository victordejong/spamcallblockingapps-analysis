package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehc.class */
public final class zzehc implements zzdzv {

    /* renamed from: a */
    public final zzehl f28031a;

    /* renamed from: b */
    public final zzeam f28032b;

    public zzehc(zzehl zzehlVar, zzeam zzeamVar, int i) {
        this.f28031a = zzehlVar;
        this.f28032b = zzeamVar;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: a */
    public final byte[] mo12560a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] a = this.f28031a.mo12558a(bArr);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = new byte[0];
        }
        return zzegl.m12575a(new byte[]{a, this.f28032b.mo12552a(zzegl.m12575a(new byte[]{bArr3, a, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr3.length * 8).array(), 8)}))});
    }
}
