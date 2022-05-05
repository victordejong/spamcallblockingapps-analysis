package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.bh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bh.class */
final class C2499bh<T> implements zzcz<T>, Serializable {

    /* renamed from: a */
    private final zzcz<T> f15879a;

    /* renamed from: b */
    private volatile transient boolean f15880b;
    @NullableDecl

    /* renamed from: c */
    private transient T f15881c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2499bh(zzcz<T> zzczVar) {
        this.f15879a = (zzcz) zzcx.zza(zzczVar);
    }

    public final String toString() {
        Object obj;
        if (this.f15880b) {
            String valueOf = String.valueOf(this.f15881c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.f15879a;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final T zza() {
        if (!this.f15880b) {
            synchronized (this) {
                if (!this.f15880b) {
                    T zza = this.f15879a.zza();
                    this.f15881c = zza;
                    this.f15880b = true;
                    return zza;
                }
            }
        }
        return this.f15881c;
    }
}
