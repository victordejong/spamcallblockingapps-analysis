package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.bi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bi.class */
final class C2500bi<T> implements zzcz<T>, Serializable {
    @NullableDecl

    /* renamed from: a */
    private final T f15882a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2500bi(@NullableDecl T t) {
        this.f15882a = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof C2500bi)) {
            return false;
        }
        T t = this.f15882a;
        T t2 = ((C2500bi) obj).f15882a;
        if (t != t2) {
            return t != null && t.equals(t2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15882a});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f15882a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final T zza() {
        return this.f15882a;
    }
}
