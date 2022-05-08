package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzry;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzff.class */
public final class zzff implements zzfg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzff(zzfb zzfbVar) {
    }

    @Override // com.google.android.gms.tagmanager.zzfg
    public final void zza(zzry zzryVar, Set<zzru> set, Set<zzru> set2, zzeq zzeqVar) {
        set.addAll(zzryVar.zzsc());
        set2.addAll(zzryVar.zzsd());
        zzeqVar.zzou();
        zzeqVar.zzov();
    }
}
