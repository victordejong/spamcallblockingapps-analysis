package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gg.class */
public final class RunnableC2807gg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f16928a = true;

    /* renamed from: b */
    private final /* synthetic */ boolean f16929b;

    /* renamed from: c */
    private final /* synthetic */ zzan f16930c;

    /* renamed from: d */
    private final /* synthetic */ zzm f16931d;

    /* renamed from: e */
    private final /* synthetic */ String f16932e;

    /* renamed from: f */
    private final /* synthetic */ zzij f16933f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2807gg(zzij zzijVar, boolean z, zzan zzanVar, zzm zzmVar, String str) {
        this.f16933f = zzijVar;
        this.f16929b = z;
        this.f16930c = zzanVar;
        this.f16931d = zzmVar;
        this.f16932e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.f16933f.f17257b;
        if (zzeoVar == null) {
            this.f16933f.zzr().zzf().zza("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f16928a) {
            this.f16933f.m1766a(zzeoVar, this.f16929b ? null : this.f16930c, this.f16931d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f16932e)) {
                    zzeoVar.zza(this.f16930c, this.f16931d);
                } else {
                    zzeoVar.zza(this.f16930c, this.f16932e, this.f16933f.zzr().zzy());
                }
            } catch (RemoteException e) {
                this.f16933f.zzr().zzf().zza("Failed to send event to the service", e);
            }
        }
        this.f16933f.m1745j();
    }
}
