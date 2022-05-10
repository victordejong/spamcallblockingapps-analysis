package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegu.class */
public final class zzegu implements zzeac {

    /* renamed from: f */
    public static final byte[] f28012f = new byte[0];

    /* renamed from: a */
    public final zzegw f28013a;

    /* renamed from: b */
    public final String f28014b;

    /* renamed from: c */
    public final byte[] f28015c;

    /* renamed from: d */
    public final zzegz f28016d;

    /* renamed from: e */
    public final zzegs f28017e;

    public zzegu(ECPublicKey eCPublicKey, byte[] bArr, String str, zzegz zzegzVar, zzegs zzegsVar) throws GeneralSecurityException {
        zzegy.m12563a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f28013a = new zzegw(eCPublicKey);
        this.f28015c = bArr;
        this.f28014b = str;
        this.f28016d = zzegzVar;
        this.f28017e = zzegsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeac
    /* renamed from: a */
    public final byte[] mo12572a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzegv a = this.f28013a.m12569a(this.f28014b, this.f28015c, bArr2, this.f28017e.mo12574a(), this.f28016d);
        byte[] a2 = this.f28017e.mo12573a(a.m12570b()).mo12560a(bArr, f28012f);
        byte[] a3 = a.m12571a();
        return ByteBuffer.allocate(a3.length + a2.length).put(a3).put(a2).array();
    }
}
