package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeh.class */
final class zzeh<T> implements zzec<T> {

    /* renamed from: f */
    private volatile zzec<T> f8375f;

    /* renamed from: g */
    private volatile boolean f8376g;
    @NullableDecl

    /* renamed from: h */
    private T f8377h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeh(zzec<T> zzecVar) {
        zzeb.m12741b(zzecVar);
        this.f8375f = zzecVar;
    }

    public final String toString() {
        zzec<T> zzecVar = this.f8375f;
        String str = zzecVar;
        if (zzecVar == null) {
            String valueOf = String.valueOf(this.f8377h);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzec
    public final T zza() {
        if (!this.f8376g) {
            synchronized (this) {
                if (!this.f8376g) {
                    T zza = this.f8375f.zza();
                    this.f8377h = zza;
                    this.f8376g = true;
                    this.f8375f = null;
                    return zza;
                }
            }
        }
        return this.f8377h;
    }
}
