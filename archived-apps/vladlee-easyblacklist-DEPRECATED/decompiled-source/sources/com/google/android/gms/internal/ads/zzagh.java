package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagh.class */
public final class zzagh implements zzn {

    /* renamed from: a */
    private volatile zzaga f10910a;

    /* renamed from: b */
    private final Context f10911b;

    public zzagh(Context context) {
        this.f10911b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4407a(zzagh zzaghVar) {
        if (zzaghVar.f10910a != null) {
            zzaghVar.f10910a.disconnect();
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final zzo zzc(zzq<?> zzqVar) {
        zzafz zzh = zzafz.zzh(zzqVar);
        long elapsedRealtime = zzq.zzkx().elapsedRealtime();
        try {
            zzazl zzazlVar = new zzazl();
            this.f10910a = new zzaga(this.f10911b, zzq.zzle().zzxb(), new C2294v(this, zzazlVar), new C2348x(zzazlVar));
            this.f10910a.checkAvailabilityAndConnect();
            zzdhe zza = zzdgs.zza(zzdgs.zzb(zzazlVar, new C2267u(zzh), zzazd.zzdwe), ((Integer) zzve.zzoy().zzd(zzzn.zzcni)).intValue(), TimeUnit.MILLISECONDS, zzazd.zzdwh);
            zza.addListener(new RunnableC2321w(this), zzazd.zzdwe);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zza.get();
            long elapsedRealtime2 = zzq.zzkx().elapsedRealtime();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(elapsedRealtime2 - elapsedRealtime);
            sb.append("ms");
            zzavs.zzed(sb.toString());
            zzagb zzagbVar = (zzagb) new zzaqj(parcelFileDescriptor).zza(zzagb.CREATOR);
            if (zzagbVar == null) {
                return null;
            }
            if (zzagbVar.zzcxx) {
                throw new zzae(zzagbVar.zzcxy);
            } else if (zzagbVar.zzcxv.length != zzagbVar.zzcxw.length) {
                return null;
            } else {
                HashMap hashMap = new HashMap();
                for (int i = 0; i < zzagbVar.zzcxv.length; i++) {
                    hashMap.put(zzagbVar.zzcxv[i], zzagbVar.zzcxw[i]);
                }
                return new zzo(zzagbVar.statusCode, zzagbVar.data, hashMap, zzagbVar.zzac, zzagbVar.zzad);
            }
        } catch (InterruptedException | ExecutionException e) {
            long elapsedRealtime3 = zzq.zzkx().elapsedRealtime();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(elapsedRealtime3 - elapsedRealtime);
            sb2.append("ms");
            zzavs.zzed(sb2.toString());
            return null;
        } catch (Throwable th) {
            long elapsedRealtime4 = zzq.zzkx().elapsedRealtime();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(elapsedRealtime4 - elapsedRealtime);
            sb3.append("ms");
            zzavs.zzed(sb3.toString());
            throw th;
        }
    }
}
