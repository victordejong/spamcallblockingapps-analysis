package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.bg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bg.class */
final class C2498bg<T> extends zzcy<T> {

    /* renamed from: a */
    private final T f15878a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2498bg(T t) {
        this.f15878a = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof C2498bg) {
            return this.f15878a.equals(((C2498bg) obj).f15878a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15878a.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f15878a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final T zzb() {
        return this.f15878a;
    }
}
