package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzajk;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzczs;
import com.google.android.gms.internal.ads.zzva;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdac.class */
public final class zzdac {

    /* renamed from: a */
    public final zzcep f26838a;

    /* renamed from: b */
    public final zzczs f26839b;

    /* renamed from: c */
    public final zzbui f26840c;

    public zzdac(zzcep zzcepVar) {
        final zzczs zzczsVar = new zzczs();
        this.f26839b = zzczsVar;
        this.f26838a = zzcepVar;
        final zzajk e = zzcepVar.m14656e();
        this.f26840c = new zzbui(zzczsVar, e) { // from class: c.d.b.d.g.a.or

            /* renamed from: a */
            public final zzczs f14355a;

            /* renamed from: b */
            public final zzajk f14356b;

            {
                this.f14355a = zzczsVar;
                this.f14356b = e;
            }

            @Override // com.google.android.gms.internal.ads.zzbui
            /* renamed from: a */
            public final void mo13335a(zzva zzvaVar) {
                zzczs zzczsVar2 = this.f14355a;
                zzajk zzajkVar = this.f14356b;
                zzczsVar2.mo13335a(zzvaVar);
                if (zzajkVar != null) {
                    try {
                        zzajkVar.mo16722h(zzvaVar);
                    } catch (RemoteException e2) {
                        zzbbq.m15851d("#007 Could not call remote method.", e2);
                    }
                }
                if (zzajkVar != null) {
                    try {
                        zzajkVar.mo16721n(zzvaVar.f28995a);
                    } catch (RemoteException e3) {
                        zzbbq.m15851d("#007 Could not call remote method.", e3);
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public final zzccw m13711a() {
        return new zzccw(this.f26838a, this.f26839b.m13727a());
    }

    /* renamed from: a */
    public final void m13710a(zzwt zzwtVar) {
        this.f26839b.m13726a(zzwtVar);
    }

    /* renamed from: b */
    public final zzczs m13709b() {
        return this.f26839b;
    }

    /* renamed from: c */
    public final zzbuh m13708c() {
        return this.f26839b;
    }

    /* renamed from: d */
    public final zzbvs m13707d() {
        return this.f26839b;
    }

    /* renamed from: e */
    public final zzbui m13706e() {
        return this.f26840c;
    }

    /* renamed from: f */
    public final zzbuz m13705f() {
        return this.f26839b;
    }

    /* renamed from: g */
    public final zzux m13704g() {
        return this.f26839b;
    }
}
