package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebs.class */
public final class zzebs implements zzdzv {

    /* renamed from: c */
    public static final byte[] f27987c = new byte[0];

    /* renamed from: a */
    public final zzefe f27988a;

    /* renamed from: b */
    public final zzdzv f27989b;

    public zzebs(zzefe zzefeVar, zzdzv zzdzvVar) {
        this.f27988a = zzefeVar;
        this.f27989b = zzdzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: a */
    public final byte[] mo12560a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] c = zzear.m12915b(this.f27988a).mo12349c();
        byte[] a = this.f27989b.mo12560a(c, f27987c);
        byte[] a2 = ((zzdzv) zzear.m12917a(this.f27988a.m12681m(), c, zzdzv.class)).mo12560a(bArr, bArr2);
        return ByteBuffer.allocate(a.length + 4 + a2.length).putInt(a.length).put(a).put(a2).array();
    }
}
