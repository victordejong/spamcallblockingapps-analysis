package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuf.class */
final class zzuf implements Comparator<zzud> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzud zzudVar, zzud zzudVar2) {
        int zza;
        int zza2;
        zzud zzudVar3 = zzudVar;
        zzud zzudVar4 = zzudVar2;
        zzuj zzujVar = (zzuj) zzudVar3.iterator();
        zzuj zzujVar2 = (zzuj) zzudVar4.iterator();
        while (zzujVar.hasNext() && zzujVar2.hasNext()) {
            zza = zzud.zza(zzujVar.nextByte());
            zza2 = zzud.zza(zzujVar2.nextByte());
            int compare = Integer.compare(zza, zza2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzudVar3.size(), zzudVar4.size());
    }
}
