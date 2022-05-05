package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahh.class */
final class ahh implements Comparator<zzdqk> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdqk zzdqkVar, zzdqk zzdqkVar2) {
        zzdqk zzdqkVar3 = zzdqkVar;
        zzdqk zzdqkVar4 = zzdqkVar2;
        zzdqp zzdqpVar = (zzdqp) zzdqkVar3.iterator();
        zzdqp zzdqpVar2 = (zzdqp) zzdqkVar4.iterator();
        while (zzdqpVar.hasNext() && zzdqpVar2.hasNext()) {
            int compare = Integer.compare(zzdqk.m3408a(zzdqpVar.nextByte()), zzdqk.m3408a(zzdqpVar2.nextByte()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzdqkVar3.size(), zzdqkVar4.size());
    }
}
