package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzvp;
import com.google.android.gms.internal.ads.zzyi;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczn.class */
public final class zzczn implements zzbwl {

    /* renamed from: a */
    public final AtomicReference<zzyi> f26818a = new AtomicReference<>();

    @Override // com.google.android.gms.internal.ads.zzbwl
    /* renamed from: a */
    public final void mo13500a(final zzvp zzvpVar) {
        zzdll.m13521a(this.f26818a, new zzdlk(zzvpVar) { // from class: c.d.b.d.g.a.fr

            /* renamed from: a */
            public final zzvp f12997a;

            {
                this.f12997a = zzvpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdlk
            /* renamed from: a */
            public final void mo13522a(Object obj) {
                ((zzyi) obj).mo11118a(this.f12997a);
            }
        });
    }

    /* renamed from: a */
    public final void m13733a(zzyi zzyiVar) {
        this.f26818a.set(zzyiVar);
    }
}
