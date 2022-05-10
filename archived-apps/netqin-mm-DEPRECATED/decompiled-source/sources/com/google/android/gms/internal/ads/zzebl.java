package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.i30;
import p131c.p161d.p170b.p224d.p252g.p253a.j30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebl.class */
public final class zzebl extends zzeag<zzedu> {
    public zzebl() {
        super(zzedu.class, new i30(zzdzv.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzedu mo12895a(zzeip zzeipVar) throws zzekj {
        return zzedu.m12796a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzedu zzeduVar) throws GeneralSecurityException {
        zzedu zzeduVar2 = zzeduVar;
        zzeht.m12547a(zzeduVar2.m12794m(), 0);
        zzeht.m12548a(zzeduVar2.m12793n().size());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzedu> mo12891f() {
        return new j30(this, zzedx.class);
    }
}
