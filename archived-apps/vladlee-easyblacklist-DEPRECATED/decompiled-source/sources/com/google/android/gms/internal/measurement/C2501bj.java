package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.bj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bj.class */
final class C2501bj<T> implements zzcz<T> {

    /* renamed from: a */
    private volatile zzcz<T> f15883a;

    /* renamed from: b */
    private volatile boolean f15884b;
    @NullableDecl

    /* renamed from: c */
    private T f15885c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2501bj(zzcz<T> zzczVar) {
        this.f15883a = (zzcz) zzcx.zza(zzczVar);
    }

    public final String toString() {
        zzcz<T> zzczVar = this.f15883a;
        String str = zzczVar;
        if (zzczVar == null) {
            String valueOf = String.valueOf(this.f15885c);
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

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final T zza() {
        if (!this.f15884b) {
            synchronized (this) {
                if (!this.f15884b) {
                    T zza = this.f15883a.zza();
                    this.f15885c = zza;
                    this.f15884b = true;
                    this.f15883a = null;
                    return zza;
                }
            }
        }
        return this.f15885c;
    }
}
