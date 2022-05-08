package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abb.class */
public final class abb<T> extends zzdej<T> {

    /* renamed from: a */
    private final T f7150a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abb(T t) {
        this.f7150a = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof abb) {
            return this.f7150a.equals(((abb) obj).f7150a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7150a.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f7150a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdej
    public final T zzaqt() {
        return this.f7150a;
    }
}
