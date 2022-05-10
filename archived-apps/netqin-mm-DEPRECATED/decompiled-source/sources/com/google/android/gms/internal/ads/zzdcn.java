package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.inmobi.p497a.C7998l;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcn.class */
public final class zzdcn implements zzdgu<Bundle> {

    /* renamed from: a */
    public final zzvs f27125a;

    /* renamed from: b */
    public final zzbbx f27126b;

    public zzdcn(zzvs zzvsVar, zzbbx zzbbxVar) {
        this.f27125a = zzvsVar;
        this.f27126b = zzbbxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        int intValue = ((Integer) zzwm.m11166e().m16921a(zzabb.f23912x2)).intValue();
        zzbbx zzbbxVar = this.f27126b;
        if (zzbbxVar != null && zzbbxVar.f24761c >= intValue) {
            bundle2.putString("app_open_version", InternalAvidAdSessionContext.AVID_API_LEVEL);
        }
        zzvs zzvsVar = this.f27125a;
        if (zzvsVar != null) {
            int i = zzvsVar.f29057a;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i == 2) {
                bundle2.putString("avo", C7998l.f31218d);
            }
        }
    }
}
