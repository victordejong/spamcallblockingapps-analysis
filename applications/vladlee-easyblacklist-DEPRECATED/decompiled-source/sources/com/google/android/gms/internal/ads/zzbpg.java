package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpg.class */
public final class zzbpg extends zzbrl<zzbph> {
    public zzbpg(Set<zzbsu<zzbph>> set) {
        super(set);
    }

    public final void zza(zzbtk zzbtkVar, Executor executor) {
        zza(zzbsu.zzb(new C2048lx(zzbtkVar), executor));
    }

    public final void zzbv(final Context context) {
        m3995a(new zzbrn(context) { // from class: com.google.android.gms.internal.ads.lw

            /* renamed from: a */
            private final Context f10195a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10195a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzbph) obj).zzbv(this.f10195a);
            }
        });
    }

    public final void zzbw(final Context context) {
        m3995a(new zzbrn(context) { // from class: com.google.android.gms.internal.ads.lv

            /* renamed from: a */
            private final Context f10194a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10194a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzbph) obj).zzbw(this.f10194a);
            }
        });
    }

    public final void zzbx(final Context context) {
        m3995a(new zzbrn(context) { // from class: com.google.android.gms.internal.ads.ly

            /* renamed from: a */
            private final Context f10197a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10197a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzbph) obj).zzbx(this.f10197a);
            }
        });
    }
}
