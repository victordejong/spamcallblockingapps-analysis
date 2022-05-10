package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.g30;
import p131c.p161d.p170b.p224d.p252g.p253a.h30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebg.class */
public final class zzebg extends zzeag<zzedp> {
    public zzebg() {
        super(zzedp.class, new h30(zzdzv.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzedp mo12895a(zzeip zzeipVar) throws zzekj {
        return zzedp.m12816a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzedp zzedpVar) throws GeneralSecurityException {
        zzedp zzedpVar2 = zzedpVar;
        zzeht.m12547a(zzedpVar2.m12814m(), 0);
        zzeht.m12548a(zzedpVar2.m12813n().size());
        if (zzedpVar2.m12812o().m12802m() != 12 && zzedpVar2.m12812o().m12802m() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzedp> mo12891f() {
        return new g30(this, zzedq.class);
    }
}
