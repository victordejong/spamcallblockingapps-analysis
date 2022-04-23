package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzbpu;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcna.class */
public final class zzcna<AdT, AdapterT, ListenerT extends zzbpu> implements zzcio<AdT> {

    /* renamed from: a */
    private final zzcis<AdapterT, ListenerT> f13382a;

    /* renamed from: b */
    private final zzcir<AdT, AdapterT, ListenerT> f13383b;

    /* renamed from: c */
    private final zzdcr f13384c;

    /* renamed from: d */
    private final zzdhd f13385d;

    public zzcna(zzdcr zzdcrVar, zzdhd zzdhdVar, zzcis<AdapterT, ListenerT> zzcisVar, zzcir<AdT, AdapterT, ListenerT> zzcirVar) {
        this.f13384c = zzdcrVar;
        this.f13385d = zzdhdVar;
        this.f13383b = zzcirVar;
        this.f13382a = zzcisVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Object m3731a(zzczt zzcztVar, zzczl zzczlVar, zzcip zzcipVar) {
        return this.f13383b.zzb(zzcztVar, zzczlVar, zzcipVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3730b(zzczt zzcztVar, zzczl zzczlVar, zzcip zzcipVar) {
        this.f13383b.zza(zzcztVar, zzczlVar, zzcipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return !zzczlVar.zzglp.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<AdT> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        final zzcip<AdapterT, ListenerT> zzcipVar;
        Iterator<String> it = zzczlVar.zzglp.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzcipVar = null;
                break;
            }
            try {
                zzcipVar = this.f13382a.zzd(it.next(), zzczlVar.zzglr);
                break;
            } catch (zzdab e) {
            }
        }
        if (zzcipVar == null) {
            return zzdgs.zzk(new zzclf("unable to instantiate mediation adapter class"));
        }
        zzazl zzazlVar = new zzazl();
        zzcipVar.zzfyf.zza(new C2283up(zzazlVar, zzcipVar));
        if (zzczlVar.zzdmf) {
            Bundle bundle = zzcztVar.zzgmh.zzfgl.zzgml.zzccf;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        return this.f13384c.zzu(zzdco.ADAPTER_LOAD_AD_SYN).zza(new zzdcb(this, zzcztVar, zzczlVar, zzcipVar) { // from class: com.google.android.gms.internal.ads.uo

            /* renamed from: a */
            private final zzcna f10584a;

            /* renamed from: b */
            private final zzczt f10585b;

            /* renamed from: c */
            private final zzczl f10586c;

            /* renamed from: d */
            private final zzcip f10587d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10584a = this;
                this.f10585b = zzcztVar;
                this.f10586c = zzczlVar;
                this.f10587d = zzcipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void run() {
                this.f10584a.m3730b(this.f10585b, this.f10586c, this.f10587d);
            }
        }, this.f13385d).zzw(zzdco.ADAPTER_LOAD_AD_ACK).zzc(zzazlVar).zzw(zzdco.ADAPTER_WRAP_ADAPTER).zzb(new zzdby(this, zzcztVar, zzczlVar, zzcipVar) { // from class: com.google.android.gms.internal.ads.uq

            /* renamed from: a */
            private final zzcna f10590a;

            /* renamed from: b */
            private final zzczt f10591b;

            /* renamed from: c */
            private final zzczl f10592c;

            /* renamed from: d */
            private final zzcip f10593d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10590a = this;
                this.f10591b = zzcztVar;
                this.f10592c = zzczlVar;
                this.f10593d = zzcipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdby
            public final Object apply(Object obj) {
                return this.f10590a.m3731a(this.f10591b, this.f10592c, this.f10593d);
            }
        }).zzaqg();
    }
}
