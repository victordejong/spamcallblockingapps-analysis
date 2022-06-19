package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* renamed from: com.google.android.gms.internal.measurement.i3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i3.class */
public final /* synthetic */ class C1331i3 {
    /* renamed from: a */
    public static <V> V m2085a(AbstractC1338j3<V> abstractC1338j3) {
        V v;
        try {
            v = abstractC1338j3.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = abstractC1338j3.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
