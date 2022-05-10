package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.e40;
import p131c.p161d.p170b.p224d.p252g.p253a.f40;
import p131c.p161d.p170b.p224d.p252g.p253a.g40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecp.class */
public final class zzecp extends zzeag<zzeet> {
    public zzecp() {
        super(zzeet.class, new f40(zzeam.class));
    }

    /* renamed from: a */
    public static void m12896a(zzeey zzeeyVar) throws GeneralSecurityException {
        if (zzeeyVar.m12700m() >= 10) {
            int i = g40.f13017a[zzeeyVar.m12699n().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new GeneralSecurityException("unknown hash type");
                    } else if (zzeeyVar.m12700m() > 64) {
                        throw new GeneralSecurityException("tag size too big");
                    }
                } else if (zzeeyVar.m12700m() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (zzeeyVar.m12700m() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            throw new GeneralSecurityException("tag size too small");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzeet mo12895a(zzeip zzeipVar) throws zzekj {
        return zzeet.m12716a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzeet zzeetVar) throws GeneralSecurityException {
        zzeet zzeetVar2 = zzeetVar;
        zzeht.m12547a(zzeetVar2.m12714m(), 0);
        if (zzeetVar2.m12713n().size() >= 16) {
            m12896a(zzeetVar2.m12712o());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzeet> mo12891f() {
        return new e40(this, zzeex.class);
    }
}
