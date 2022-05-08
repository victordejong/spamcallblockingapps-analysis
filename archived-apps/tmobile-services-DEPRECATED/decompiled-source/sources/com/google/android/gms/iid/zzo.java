package com.google.android.gms.iid;

import com.google.android.gms.common.internal.Objects;
import java.security.KeyPair;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzo.class */
final class zzo {

    /* renamed from: a */
    private final KeyPair f7794a;

    /* renamed from: b */
    private final long f7795b;

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return this.f7795b == zzoVar.f7795b && this.f7794a.getPublic().equals(zzoVar.f7794a.getPublic()) && this.f7794a.getPrivate().equals(zzoVar.f7794a.getPrivate());
    }

    public final int hashCode() {
        return Objects.m14536b(this.f7794a.getPublic(), this.f7794a.getPrivate(), Long.valueOf(this.f7795b));
    }
}
