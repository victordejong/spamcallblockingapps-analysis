package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* renamed from: com.google.android.gms.internal.measurement.bu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bu.class */
final class C2512bu implements Comparator<zzdu> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdu zzduVar, zzdu zzduVar2) {
        zzdu zzduVar3 = zzduVar;
        zzdu zzduVar4 = zzduVar2;
        zzed zzedVar = (zzed) zzduVar3.iterator();
        zzed zzedVar2 = (zzed) zzduVar4.iterator();
        while (zzedVar.hasNext() && zzedVar2.hasNext()) {
            int compare = Integer.compare(zzdu.m2310a(zzedVar.zza()), zzdu.m2310a(zzedVar2.zza()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzduVar3.zza(), zzduVar4.zza());
    }
}
