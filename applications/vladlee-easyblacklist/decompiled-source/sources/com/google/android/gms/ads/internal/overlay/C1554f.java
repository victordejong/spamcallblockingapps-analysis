package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzavo;
import com.google.android.gms.internal.ads.zzawb;
/* renamed from: com.google.android.gms.ads.internal.overlay.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/f.class */
final class C1554f extends zzavo {

    /* renamed from: a */
    final /* synthetic */ zzc f5916a;

    private C1554f(zzc zzcVar) {
        this.f5916a = zzcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1554f(zzc zzcVar, byte b) {
        this(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzavo
    public final void zztu() {
        Bitmap zza = zzq.zzlj().zza(Integer.valueOf(this.f5916a.f5919b.zzdhx.zzblc));
        if (zza != null) {
            final Drawable zza2 = zzq.zzks().zza(this.f5916a.f5918a, zza, this.f5916a.f5919b.zzdhx.zzbla, this.f5916a.f5919b.zzdhx.zzblb);
            zzawb.zzdsr.post(new Runnable(this, zza2) { // from class: com.google.android.gms.ads.internal.overlay.e

                /* renamed from: a */
                private final C1554f f5914a;

                /* renamed from: b */
                private final Drawable f5915b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5914a = this;
                    this.f5915b = zza2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C1554f fVar = this.f5914a;
                    fVar.f5916a.f5918a.getWindow().setBackgroundDrawable(this.f5915b);
                }
            });
        }
    }
}
