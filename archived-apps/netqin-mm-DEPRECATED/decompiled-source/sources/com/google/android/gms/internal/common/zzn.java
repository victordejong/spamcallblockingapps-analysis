package com.google.android.gms.internal.common;

import java.io.Serializable;
import p131c.p161d.p170b.p224d.p252g.p256d.C4445c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzn.class */
public final class zzn {
    /* renamed from: a */
    public static <T> zzo<T> m10510a(zzo<T> zzoVar) {
        return ((zzoVar instanceof C4445c) || (zzoVar instanceof zzq)) ? zzoVar : zzoVar instanceof Serializable ? new zzq(zzoVar) : new C4445c(zzoVar);
    }
}
