package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzea.class */
public final class zzea<T> extends zzdy<T> {
    public final T zza;

    public zzea(T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzea) {
            return this.zza.equals(((zzea) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    public final T zzb() {
        return this.zza;
    }
}
