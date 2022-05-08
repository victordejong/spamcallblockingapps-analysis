package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzft.class */
public class zzft {

    /* renamed from: a */
    private static final zzeq f16295a = zzeq.zza();

    /* renamed from: b */
    private zzdu f16296b;

    /* renamed from: c */
    private volatile zzgo f16297c;

    /* renamed from: d */
    private volatile zzdu f16298d;

    /* renamed from: a */
    private final zzgo m2259a(zzgo zzgoVar) {
        if (this.f16297c == null) {
            synchronized (this) {
                if (this.f16297c == null) {
                    try {
                        this.f16297c = zzgoVar;
                        this.f16298d = zzdu.zza;
                    } catch (zzfo e) {
                        this.f16297c = zzgoVar;
                        this.f16298d = zzdu.zza;
                    }
                }
            }
        }
        return this.f16297c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzft)) {
            return false;
        }
        zzft zzftVar = (zzft) obj;
        zzgo zzgoVar = this.f16297c;
        zzgo zzgoVar2 = zzftVar.f16297c;
        return (zzgoVar == null && zzgoVar2 == null) ? zzc().equals(zzftVar.zzc()) : (zzgoVar == null || zzgoVar2 == null) ? zzgoVar != null ? zzgoVar.equals(zzftVar.m2259a(zzgoVar.zzbt())) : m2259a(zzgoVar2.zzbt()).equals(zzgoVar2) : zzgoVar.equals(zzgoVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzgo zza(zzgo zzgoVar) {
        zzgo zzgoVar2 = this.f16297c;
        this.f16296b = null;
        this.f16298d = null;
        this.f16297c = zzgoVar;
        return zzgoVar2;
    }

    public final int zzb() {
        if (this.f16298d != null) {
            return this.f16298d.zza();
        }
        if (this.f16297c != null) {
            return this.f16297c.zzbn();
        }
        return 0;
    }

    public final zzdu zzc() {
        if (this.f16298d != null) {
            return this.f16298d;
        }
        synchronized (this) {
            if (this.f16298d != null) {
                return this.f16298d;
            }
            this.f16298d = this.f16297c == null ? zzdu.zza : this.f16297c.zzbh();
            return this.f16298d;
        }
    }
}
