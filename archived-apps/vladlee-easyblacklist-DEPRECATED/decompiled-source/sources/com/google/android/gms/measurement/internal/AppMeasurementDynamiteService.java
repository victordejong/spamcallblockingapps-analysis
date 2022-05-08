package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.p026b.C0529a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends zzl {

    /* renamed from: a */
    zzga f16544a = null;

    /* renamed from: b */
    private Map<Integer, zzgz> f16545b = new C0529a();

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a.class */
    final class C2636a implements zzha {

        /* renamed from: a */
        private zzs f16546a;

        C2636a(zzs zzsVar) {
            this.f16546a = zzsVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzha
        public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.f16546a.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f16544a.zzr().zzi().zza("Event interceptor threw exception", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b.class */
    final class C2637b implements zzgz {

        /* renamed from: a */
        private zzs f16548a;

        C2637b(zzs zzsVar) {
            this.f16548a = zzsVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzgz
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.f16548a.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f16544a.zzr().zzi().zza("Event listener threw exception", e);
            }
        }
    }

    /* renamed from: a */
    private final void m2211a() {
        if (this.f16544a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    /* renamed from: a */
    private final void m2210a(zzn zznVar, String str) {
        this.f16544a.zzi().zza(zznVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void beginAdUnitExposure(String str, long j) {
        m2211a();
        this.f16544a.zzz().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        m2211a();
        this.f16544a.zzh().zzc(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void endAdUnitExposure(String str, long j) {
        m2211a();
        this.f16544a.zzz().zzb(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void generateEventId(zzn zznVar) {
        m2211a();
        this.f16544a.zzi().zza(zznVar, this.f16544a.zzi().zzg());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getAppInstanceId(zzn zznVar) {
        m2211a();
        this.f16544a.zzq().zza(new RunnableC2789fp(this, zznVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getCachedAppInstanceId(zzn zznVar) {
        m2211a();
        m2210a(zznVar, this.f16544a.zzh().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getConditionalUserProperties(String str, String str2, zzn zznVar) {
        m2211a();
        this.f16544a.zzq().zza(new RunnableC2812gl(this, zznVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getCurrentScreenClass(zzn zznVar) {
        m2211a();
        m2210a(zznVar, this.f16544a.zzh().zzak());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getCurrentScreenName(zzn zznVar) {
        m2211a();
        m2210a(zznVar, this.f16544a.zzh().zzaj());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getGmpAppId(zzn zznVar) {
        m2211a();
        m2210a(zznVar, this.f16544a.zzh().zzal());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getMaxUserProperties(String str, zzn zznVar) {
        m2211a();
        this.f16544a.zzh();
        Preconditions.checkNotEmpty(str);
        this.f16544a.zzi().zza(zznVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getTestFlag(zzn zznVar, int i) {
        m2211a();
        if (i == 0) {
            this.f16544a.zzi().zza(zznVar, this.f16544a.zzh().zzad());
        } else if (i == 1) {
            this.f16544a.zzi().zza(zznVar, this.f16544a.zzh().zzae().longValue());
        } else if (i == 2) {
            zzkm zzi = this.f16544a.zzi();
            double doubleValue = this.f16544a.zzh().zzag().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zznVar.zza(bundle);
            } catch (RemoteException e) {
                zzi.f16804x.zzr().zzi().zza("Error returning double value to wrapper", e);
            }
        } else if (i == 3) {
            this.f16544a.zzi().zza(zznVar, this.f16544a.zzh().zzaf().intValue());
        } else if (i == 4) {
            this.f16544a.zzi().zza(zznVar, this.f16544a.zzh().zzac().booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getUserProperties(String str, String str2, boolean z, zzn zznVar) {
        m2211a();
        this.f16544a.zzq().zza(new RunnableC2836hi(this, zznVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void initForTests(Map map) {
        m2211a();
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void initialize(IObjectWrapper iObjectWrapper, zzv zzvVar, long j) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzga zzgaVar = this.f16544a;
        if (zzgaVar == null) {
            this.f16544a = zzga.zza(context, zzvVar);
        } else {
            zzgaVar.zzr().zzi().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void isDataCollectionEnabled(zzn zznVar) {
        m2211a();
        this.f16544a.zzq().zza(new RunnableC2846hs(this, zznVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        m2211a();
        this.f16544a.zzh().zza(str, str2, bundle, z, z2, j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzft] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.measurement.zzm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void logEventAndBundle(java.lang.String r9, java.lang.String r10, android.os.Bundle r11, com.google.android.gms.internal.measurement.zzn r12, long r13) {
        /*
            r8 = this;
            r0 = r8
            r0.m2211a()
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            android.os.Bundle r0 = new android.os.Bundle
            r15 = r0
            r0 = r11
            if (r0 == 0) goto L_0x001b
            r0 = r15
            r1 = r11
            r0.<init>(r1)
            goto L_0x0020
        L_0x001b:
            r0 = r15
            r0.<init>()
        L_0x0020:
            r0 = r15
            java.lang.String r1 = "_o"
            java.lang.String r2 = "app"
            r0.putString(r1, r2)
            com.google.android.gms.measurement.internal.zzan r0 = new com.google.android.gms.measurement.internal.zzan
            r1 = r0
            r2 = r10
            com.google.android.gms.measurement.internal.zzam r3 = new com.google.android.gms.measurement.internal.zzam
            r4 = r3
            r5 = r11
            r4.<init>(r5)
            java.lang.String r4 = "app"
            r5 = r13
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzga r0 = r0.f16544a
            com.google.android.gms.measurement.internal.zzft r0 = r0.zzq()
            com.google.android.gms.measurement.internal.es r1 = new com.google.android.gms.measurement.internal.es
            r2 = r1
            r3 = r8
            r4 = r12
            r5 = r10
            r6 = r9
            r2.<init>(r3, r4, r5, r6)
            r0.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.logEventAndBundle(java.lang.String, java.lang.String, android.os.Bundle, com.google.android.gms.internal.measurement.zzn, long):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        m2211a();
        Object obj = null;
        Object unwrap = iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper);
        Object unwrap2 = iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2);
        if (iObjectWrapper3 != null) {
            obj = ObjectWrapper.unwrap(iObjectWrapper3);
        }
        this.f16544a.zzr().m1859a(i, true, false, str, unwrap, unwrap2, obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzn zznVar, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        Bundle bundle = new Bundle();
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.f16544a.zzr().zzi().zza("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        m2211a();
        C2788fo foVar = this.f16544a.zzh().f17234a;
        if (foVar != null) {
            this.f16544a.zzh().zzab();
            foVar.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void performAction(Bundle bundle, zzn zznVar, long j) {
        m2211a();
        zznVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void registerOnMeasurementEventListener(zzs zzsVar) {
        m2211a();
        zzgz zzgzVar = this.f16545b.get(Integer.valueOf(zzsVar.zza()));
        zzgz zzgzVar2 = zzgzVar;
        if (zzgzVar == null) {
            zzgzVar2 = new C2637b(zzsVar);
            this.f16545b.put(Integer.valueOf(zzsVar.zza()), zzgzVar2);
        }
        this.f16544a.zzh().zza(zzgzVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void resetAnalyticsData(long j) {
        m2211a();
        this.f16544a.zzh().zzd(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setConditionalUserProperty(Bundle bundle, long j) {
        m2211a();
        zzga zzgaVar = this.f16544a;
        if (bundle == null) {
            zzgaVar.zzr().zzf().zza("Conditional user property must not be null");
        } else {
            zzgaVar.zzh().zza(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        m2211a();
        this.f16544a.zzv().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setDataCollectionEnabled(boolean z) {
        m2211a();
        this.f16544a.zzh().zzb(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setEventInterceptor(zzs zzsVar) {
        m2211a();
        zzhb zzh = this.f16544a.zzh();
        C2636a aVar = new C2636a(zzsVar);
        zzh.zzb();
        zzh.m2146b();
        zzh.zzq().zza(new RunnableC2772ez(zzh, aVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setInstanceIdProvider(zzt zztVar) {
        m2211a();
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setMeasurementEnabled(boolean z, long j) {
        m2211a();
        this.f16544a.zzh().zza(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setMinimumSessionDuration(long j) {
        m2211a();
        this.f16544a.zzh().zza(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setSessionTimeoutDuration(long j) {
        m2211a();
        this.f16544a.zzh().zzb(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setUserId(String str, long j) {
        m2211a();
        this.f16544a.zzh().zza(null, "_id", str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        m2211a();
        this.f16544a.zzh().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void unregisterOnMeasurementEventListener(zzs zzsVar) {
        m2211a();
        zzgz remove = this.f16545b.remove(Integer.valueOf(zzsVar.zza()));
        zzgz zzgzVar = remove;
        if (remove == null) {
            zzgzVar = new C2637b(zzsVar);
        }
        this.f16544a.zzh().zzb(zzgzVar);
    }
}
