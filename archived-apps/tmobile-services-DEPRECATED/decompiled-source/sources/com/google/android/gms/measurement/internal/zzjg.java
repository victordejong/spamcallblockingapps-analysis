package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzw;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjg.class */
public final class zzjg implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9583f;

    /* renamed from: g */
    private final /* synthetic */ String f9584g;

    /* renamed from: h */
    private final /* synthetic */ zzn f9585h;

    /* renamed from: i */
    private final /* synthetic */ zzw f9586i;

    /* renamed from: j */
    private final /* synthetic */ zzio f9587j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjg(zzio zzioVar, String str, String str2, zzn zznVar, zzw zzwVar) {
        this.f9587j = zzioVar;
        this.f9583f = str;
        this.f9584g = str2;
        this.f9585h = zznVar;
        this.f9586i = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzejVar = this.f9587j.f9521d;
            if (zzejVar == null) {
                this.f9587j.mo11081c().m11560D().m11538c("Failed to get conditional properties; not connected to service", this.f9583f, this.f9584g);
                return;
            }
            arrayList = zzkw.m10946r0(zzejVar.mo11335V(this.f9583f, this.f9584g, this.f9585h));
            this.f9587j.m11179e0();
        } catch (RemoteException e) {
            this.f9587j.mo11081c().m11560D().m11537d("Failed to get conditional properties; remote exception", this.f9583f, this.f9584g, e);
        } finally {
            this.f9587j.m11313j().m10975Q(this.f9586i, arrayList);
        }
    }
}
