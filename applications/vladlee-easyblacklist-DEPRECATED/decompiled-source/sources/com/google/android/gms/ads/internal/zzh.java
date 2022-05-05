package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzavs;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzdg;
import com.google.android.gms.internal.ads.zzdr;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzzn;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements zzdg, Runnable {

    /* renamed from: c */
    private Context f5957c;

    /* renamed from: d */
    private zzazb f5958d;

    /* renamed from: a */
    private final List<Object[]> f5955a = new Vector();

    /* renamed from: b */
    private final AtomicReference<zzdg> f5956b = new AtomicReference<>();

    /* renamed from: e */
    private CountDownLatch f5959e = new CountDownLatch(1);

    public zzh(Context context, zzazb zzazbVar) {
        this.f5957c = context;
        this.f5958d = zzazbVar;
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzclm)).booleanValue()) {
            zzve.zzou();
            if (!zzayk.zzxe()) {
                run();
                return;
            }
        }
        zzazd.zzdwe.execute(this);
    }

    /* renamed from: a */
    private static Context m6045a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    private final boolean m6046a() {
        try {
            this.f5959e.await();
            return true;
        } catch (InterruptedException e) {
            zzavs.zzd("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    /* renamed from: b */
    private final void m6044b() {
        if (!this.f5955a.isEmpty()) {
            for (Object[] objArr : this.f5955a) {
                if (objArr.length == 1) {
                    this.f5956b.get().zza((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    this.f5956b.get().zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.f5955a.clear();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.f5958d.zzdwb;
            boolean z2 = false;
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcjf)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            this.f5956b.set(zzdr.zza(this.f5958d.zzbma, m6045a(this.f5957c), z2));
        } finally {
            this.f5959e.countDown();
            this.f5957c = null;
            this.f5958d = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final String zza(Context context, View view, Activity activity) {
        zzdg zzdgVar = this.f5956b.get();
        return zzdgVar != null ? zzdgVar.zza(context, view, activity) : "";
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final String zza(Context context, String str, View view, Activity activity) {
        zzdg zzdgVar;
        if (!m6046a() || (zzdgVar = this.f5956b.get()) == null) {
            return "";
        }
        m6044b();
        return zzdgVar.zza(m6045a(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final void zza(int i, int i2, int i3) {
        zzdg zzdgVar = this.f5956b.get();
        if (zzdgVar != null) {
            m6044b();
            zzdgVar.zza(i, i2, i3);
            return;
        }
        this.f5955a.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final void zza(MotionEvent motionEvent) {
        zzdg zzdgVar = this.f5956b.get();
        if (zzdgVar != null) {
            m6044b();
            zzdgVar.zza(motionEvent);
            return;
        }
        this.f5955a.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final String zzb(Context context) {
        zzdg zzdgVar;
        if (!m6046a() || (zzdgVar = this.f5956b.get()) == null) {
            return "";
        }
        m6044b();
        return zzdgVar.zzb(m6045a(context));
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final void zzb(View view) {
        zzdg zzdgVar = this.f5956b.get();
        if (zzdgVar != null) {
            zzdgVar.zzb(view);
        }
    }
}
