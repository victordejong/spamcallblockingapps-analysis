package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.e30;
import p131c.p161d.p170b.p224d.p252g.p253a.f30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebf.class */
public final class zzebf extends zzeag<zzedi> {
    public zzebf() {
        super(zzedi.class, new e30(zzehl.class));
    }

    /* renamed from: a */
    public static void m12905a(zzedm zzedmVar) throws GeneralSecurityException {
        if (zzedmVar.m12824m() < 12 || zzedmVar.m12824m() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzedi mo12895a(zzeip zzeipVar) throws zzekj {
        return zzedi.m12840a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzedi zzediVar) throws GeneralSecurityException {
        zzedi zzediVar2 = zzediVar;
        zzeht.m12547a(zzediVar2.m12838m(), 0);
        zzeht.m12548a(zzediVar2.m12837n().size());
        m12905a(zzediVar2.m12836o());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzedi> mo12891f() {
        return new f30(this, zzedl.class);
    }
}
