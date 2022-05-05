package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdor.class */
public final class zzdor implements zzdie {

    /* renamed from: a */
    private static final byte[] f14420a = new byte[0];

    /* renamed from: b */
    private final zzdot f14421b;

    /* renamed from: c */
    private final String f14422c;

    /* renamed from: d */
    private final byte[] f14423d;

    /* renamed from: e */
    private final zzdow f14424e;

    /* renamed from: f */
    private final zzdop f14425f;

    public zzdor(ECPublicKey eCPublicKey, byte[] bArr, String str, zzdow zzdowVar, zzdop zzdopVar) {
        zzdov.m3418a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f14421b = new zzdot(eCPublicKey);
        this.f14423d = bArr;
        this.f14422c = str;
        this.f14424e = zzdowVar;
        this.f14425f = zzdopVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        zzdos zza = this.f14421b.zza(this.f14422c, this.f14423d, bArr2, this.f14425f.zzasr(), this.f14424e);
        byte[] zzc = this.f14425f.zzm(zza.zzaxe()).zzc(bArr, f14420a);
        byte[] zzaxd = zza.zzaxd();
        return ByteBuffer.allocate(zzaxd.length + zzc.length).put(zzaxd).put(zzc).array();
    }
}
