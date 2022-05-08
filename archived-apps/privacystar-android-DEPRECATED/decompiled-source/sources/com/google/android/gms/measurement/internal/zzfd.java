package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfd.class */
public final class zzfd implements zzav {
    private final /* synthetic */ zzfa zzaty;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfd(zzfa zzfaVar) {
        this.zzaty = zzfaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzav
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzaty.zzb(str, i, th, bArr, map);
    }
}
