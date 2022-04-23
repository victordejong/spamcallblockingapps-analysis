package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.bc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bc.class */
public final class C2494bc extends zzcl<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2494bc(zzcr zzcrVar, String str, Boolean bool) {
        super(zzcrVar, str, bool, (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcl
    /* renamed from: a */
    final /* synthetic */ Boolean mo2321a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzbw.zzb.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (zzbw.zzc.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        String zzb = super.zzb();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 28 + String.valueOf(valueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(zzb);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
