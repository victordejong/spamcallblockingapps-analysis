package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzio.class */
public class zzio {

    /* renamed from: a */
    public volatile zzjj f29513a;

    /* renamed from: b */
    public volatile zzgp f29514b;

    static {
        zzhl.m9676a();
    }

    /* renamed from: a */
    public final int m9629a() {
        if (this.f29514b != null) {
            return this.f29514b.zza();
        }
        if (this.f29513a != null) {
            return this.f29513a.mo9615c();
        }
        return 0;
    }

    /* renamed from: a */
    public final zzjj m9628a(zzjj zzjjVar) {
        zzjj zzjjVar2 = this.f29513a;
        this.f29514b = null;
        this.f29513a = zzjjVar;
        return zzjjVar2;
    }

    /* renamed from: b */
    public final zzgp m9627b() {
        if (this.f29514b != null) {
            return this.f29514b;
        }
        synchronized (this) {
            if (this.f29514b != null) {
                return this.f29514b;
            }
            if (this.f29513a == null) {
                this.f29514b = zzgp.zza;
            } else {
                this.f29514b = this.f29513a.mo9614d();
            }
            return this.f29514b;
        }
    }

    /* renamed from: b */
    public final zzjj m9626b(zzjj zzjjVar) {
        if (this.f29513a == null) {
            synchronized (this) {
                if (this.f29513a == null) {
                    try {
                        this.f29513a = zzjjVar;
                        this.f29514b = zzgp.zza;
                    } catch (zzij e) {
                        this.f29513a = zzjjVar;
                        this.f29514b = zzgp.zza;
                    }
                }
            }
        }
        return this.f29513a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzio)) {
            return false;
        }
        zzio zzioVar = (zzio) obj;
        zzjj zzjjVar = this.f29513a;
        zzjj zzjjVar2 = zzioVar.f29513a;
        return (zzjjVar == null && zzjjVar2 == null) ? m9627b().equals(zzioVar.m9627b()) : (zzjjVar == null || zzjjVar2 == null) ? zzjjVar != null ? zzjjVar.equals(zzioVar.m9626b(zzjjVar.mo9610j())) : m9626b(zzjjVar2.mo9610j()).equals(zzjjVar2) : zzjjVar.equals(zzjjVar2);
    }

    public int hashCode() {
        return 1;
    }
}
