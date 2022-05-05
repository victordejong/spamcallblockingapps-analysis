package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzn;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzij.class */
public final class zzij extends AbstractC2713cu {

    /* renamed from: b */
    private zzeo f17257b;

    /* renamed from: c */
    private volatile Boolean f17258c;

    /* renamed from: d */
    private final AbstractC2773f f17259d;

    /* renamed from: e */
    private final C2833hf f17260e;

    /* renamed from: g */
    private final AbstractC2773f f17262g;

    /* renamed from: f */
    private final List<Runnable> f17261f = new ArrayList();

    /* renamed from: a */
    private final zzjb f17256a = new zzjb(this);

    /* JADX INFO: Access modifiers changed from: protected */
    public zzij(zzga zzgaVar) {
        super(zzgaVar);
        this.f17260e = new C2833hf(zzgaVar.zzm());
        this.f17259d = new C2797fx(this, zzgaVar);
        this.f17262g = new C2805ge(this, zzgaVar);
    }

    /* renamed from: a */
    private final zzm m1756a(boolean z) {
        zzu();
        return zzg().m1884a(z ? zzr().zzy() : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1763a(zzij zzijVar, ComponentName componentName) {
        zzijVar.zzd();
        if (zzijVar.f17257b != null) {
            zzijVar.f17257b = null;
            zzijVar.zzr().zzx().zza("Disconnected from device MeasurementService", componentName);
            zzijVar.zzd();
            zzijVar.m1747h();
        }
    }

    /* renamed from: a */
    private final void m1760a(Runnable runnable) {
        zzd();
        if (zzab()) {
            runnable.run();
        } else if (this.f17261f.size() >= 1000) {
            zzr().zzf().zza("Discarding data. Max runnable queue size reached");
        } else {
            this.f17261f.add(runnable);
            this.f17262g.m2055a(60000L);
            m1747h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ void m1753d(zzij zzijVar) {
        zzijVar.zzd();
        if (zzijVar.zzab()) {
            zzijVar.zzr().zzx().zza("Inactivity, disconnecting from the service");
            zzijVar.zzah();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void m1745j() {
        zzd();
        this.f17260e.m2032a();
        this.f17259d.m2055a(zzap.zzag.zza(null).longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final void m1744k() {
        zzd();
        zzr().zzx().zza("Processing queued up service tasks", Integer.valueOf(this.f17261f.size()));
        for (Runnable runnable : this.f17261f) {
            try {
                runnable.run();
            } catch (Exception e) {
                zzr().zzf().zza("Task exception while flushing queue", e);
            }
        }
        this.f17261f.clear();
        this.f17262g.m2052c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1770a(zzn zznVar, String str, String str2) {
        zzd();
        m2146b();
        m1760a(new RunnableC2813gm(this, str, str2, m1756a(false), zznVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1769a(zzn zznVar, String str, String str2, boolean z) {
        zzd();
        m2146b();
        m1760a(new RunnableC2814gn(this, str, str2, z, m1756a(false), zznVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1768a(zzan zzanVar, String str) {
        Preconditions.checkNotNull(zzanVar);
        zzd();
        m2146b();
        zzu();
        m1760a(new RunnableC2807gg(this, zzj().zza(zzanVar), zzanVar, m1756a(true), str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1767a(zzeo zzeoVar) {
        zzd();
        Preconditions.checkNotNull(zzeoVar);
        this.f17257b = zzeoVar;
        m1745j();
        m1744k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1766a(zzeo zzeoVar, AbstractSafeParcelable abstractSafeParcelable, zzm zzmVar) {
        zzey zzf;
        String str;
        zzd();
        zzb();
        m2146b();
        zzu();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> zza = zzj().zza(100);
            if (zza != null) {
                arrayList.addAll(zza);
                i = zza.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzan) {
                    try {
                        zzeoVar.zza((zzan) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e) {
                        e = e;
                        zzf = zzr().zzf();
                        str = "Failed to send event to the service";
                        zzf.zza(str, e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkl) {
                    try {
                        zzeoVar.zza((zzkl) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e2) {
                        e = e2;
                        zzf = zzr().zzf();
                        str = "Failed to send attribute to the service";
                        zzf.zza(str, e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzv) {
                    try {
                        zzeoVar.zza((zzv) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e3) {
                        e = e3;
                        zzf = zzr().zzf();
                        str = "Failed to send conditional property to the service";
                        zzf.zza(str, e);
                    }
                } else {
                    zzr().zzf().zza("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1765a(zzif zzifVar) {
        zzd();
        m2146b();
        m1760a(new RunnableC2803gc(this, zzifVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1762a(zzkl zzklVar) {
        zzd();
        m2146b();
        zzu();
        m1760a(new RunnableC2796fw(this, zzj().zza(zzklVar), zzklVar, m1756a(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1761a(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        zzd();
        m2146b();
        zzu();
        m1760a(new RunnableC2810gj(this, zzj().zza(zzvVar), new zzv(zzvVar), m1756a(true), zzvVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1759a(AtomicReference<List<zzv>> atomicReference, String str, String str2, String str3) {
        zzd();
        m2146b();
        m1760a(new RunnableC2809gi(this, atomicReference, str, str2, str3, m1756a(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1758a(AtomicReference<List<zzkl>> atomicReference, String str, String str2, String str3, boolean z) {
        zzd();
        m2146b();
        m1760a(new RunnableC2811gk(this, atomicReference, str, str2, str3, z, m1756a(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1757a(AtomicReference<List<zzkl>> atomicReference, boolean z) {
        zzd();
        m2146b();
        m1760a(new RunnableC2799fz(this, atomicReference, m1756a(false), z));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: c */
    protected final boolean mo1734c() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public final void m1752e() {
        zzd();
        m2146b();
        m1760a(new RunnableC2808gh(this, m1756a(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final void m1750f() {
        zzd();
        zzb();
        m2146b();
        zzm a = m1756a(false);
        zzu();
        zzj().zzab();
        m1760a(new RunnableC2798fy(this, a));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public final void m1748g() {
        zzd();
        m2146b();
        zzm a = m1756a(true);
        boolean zza = zzt().zza(zzap.zzbv);
        if (zza) {
            zzj().zzac();
        }
        m1760a(new RunnableC2804gd(this, a, zza));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0179  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1747h() {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzij.m1747h():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final Boolean m1746i() {
        return this.f17258c;
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(zzn zznVar) {
        zzd();
        m2146b();
        m1760a(new RunnableC2801ga(this, m1756a(false), zznVar));
    }

    public final void zza(zzn zznVar, zzan zzanVar, String str) {
        zzd();
        m2146b();
        if (zzp().zza(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) != 0) {
            zzr().zzi().zza("Not bundling data. Service unavailable or out of date");
            zzp().zza(zznVar, new byte[0]);
            return;
        }
        m1760a(new RunnableC2806gf(this, zzanVar, str, zznVar));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzd();
        m2146b();
        m1760a(new RunnableC2802gb(this, atomicReference, m1756a(false)));
    }

    public final boolean zzab() {
        zzd();
        m2146b();
        return this.f17257b != null;
    }

    public final void zzah() {
        zzd();
        m2146b();
        this.f17256a.zza();
        try {
            ConnectionTracker.getInstance().unbindService(zzn(), this.f17256a);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f17257b = null;
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
