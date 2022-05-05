package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.bb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bb.class */
public final class C2493bb extends zzcl<Double> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2493bb(zzcr zzcrVar, String str, Double d) {
        super(zzcrVar, str, d, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final Double mo2321a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String zzb = super.zzb();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 27 + String.valueOf(valueOf).length());
        sb.append("Invalid double value for ");
        sb.append(zzb);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
