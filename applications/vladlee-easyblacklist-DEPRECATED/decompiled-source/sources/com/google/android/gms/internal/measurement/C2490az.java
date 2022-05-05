package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.az */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/az.class */
public final class C2490az extends zzcl<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2490az(zzcr zzcrVar, String str, Long l) {
        super(zzcrVar, str, l, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final Long mo2321a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String zzb = super.zzb();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 25 + String.valueOf(valueOf).length());
        sb.append("Invalid long value for ");
        sb.append(zzb);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
