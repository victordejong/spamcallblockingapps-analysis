package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.k30;
import p131c.p161d.p170b.p224d.p252g.p253a.l30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebm.class */
public final class zzebm extends zzeag<zzedy> {
    public zzebm() {
        super(zzedy.class, new l30(zzdzv.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzedy mo12895a(zzeip zzeipVar) throws zzekj {
        return zzedy.m12782a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzedy zzedyVar) throws GeneralSecurityException {
        zzedy zzedyVar2 = zzedyVar;
        zzeht.m12547a(zzedyVar2.m12780m(), 0);
        if (zzedyVar2.m12779n().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzedy> mo12891f() {
        return new k30(this, zzeeb.class);
    }
}
