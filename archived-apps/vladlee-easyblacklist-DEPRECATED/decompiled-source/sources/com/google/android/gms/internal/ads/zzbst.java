package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbst.class */
public final class zzbst extends zzbrl<zzps> implements zzps {

    /* renamed from: a */
    private Map<View, zzpo> f12367a = new WeakHashMap(1);

    /* renamed from: b */
    private final Context f12368b;

    /* renamed from: c */
    private final zzczl f12369c;

    public zzbst(Context context, Set<zzbsu<zzps>> set, zzczl zzczlVar) {
        super(set);
        this.f12368b = context;
        this.f12369c = zzczlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(final zzpt zzptVar) {
        synchronized (this) {
            m3995a(new zzbrn(zzptVar) { // from class: com.google.android.gms.internal.ads.na

                /* renamed from: a */
                private final zzpt f10229a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10229a = zzptVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbrn
                public final void zzp(Object obj) {
                    ((zzps) obj).zza(this.f10229a);
                }
            });
        }
    }

    public final void zzq(View view) {
        synchronized (this) {
            zzpo zzpoVar = this.f12367a.get(view);
            zzpo zzpoVar2 = zzpoVar;
            if (zzpoVar == null) {
                zzpoVar2 = new zzpo(this.f12368b, view);
                zzpoVar2.zza(this);
                this.f12367a.put(view, zzpoVar2);
            }
            if (this.f12369c != null && this.f12369c.zzdlm) {
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzckj)).booleanValue()) {
                    zzpoVar2.zzen(((Long) zzve.zzoy().zzd(zzzn.zzcki)).longValue());
                    return;
                }
            }
            zzpoVar2.zzlp();
        }
    }

    public final void zzr(View view) {
        synchronized (this) {
            if (this.f12367a.containsKey(view)) {
                this.f12367a.get(view).zzb(this);
                this.f12367a.remove(view);
            }
        }
    }
}
