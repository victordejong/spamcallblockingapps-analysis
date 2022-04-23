package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxd.class */
public final class zzaxd extends zzak {

    /* renamed from: a */
    private final Context f11493a;

    private zzaxd(Context context, zzah zzahVar) {
        super(zzahVar);
        this.f11493a = context;
    }

    public static zzu zzbg(Context context) {
        zzu zzuVar = new zzu(new zzal(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzaxd(context, new zzat()));
        zzuVar.start();
        return zzuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzak, com.google.android.gms.internal.ads.zzn
    public final zzo zzc(zzq<?> zzqVar) {
        if (zzqVar.zzg() && zzqVar.getMethod() == 0) {
            if (Pattern.matches((String) zzve.zzoy().zzd(zzzn.zzcnh), zzqVar.getUrl())) {
                zzve.zzou();
                if (zzayk.zzc(this.f11493a, 13400000)) {
                    zzo zzc = new zzagh(this.f11493a).zzc(zzqVar);
                    if (zzc != null) {
                        String valueOf = String.valueOf(zzqVar.getUrl());
                        zzavs.zzed(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zzc;
                    }
                    String valueOf2 = String.valueOf(zzqVar.getUrl());
                    zzavs.zzed(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zzc(zzqVar);
    }
}
