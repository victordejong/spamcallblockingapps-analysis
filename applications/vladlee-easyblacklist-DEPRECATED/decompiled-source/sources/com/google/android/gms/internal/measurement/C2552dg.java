package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.dg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dg.class */
final class C2552dg implements AbstractC2550de {
    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: a */
    public final Object mo2807a() {
        return zzgi.zza().zzb();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: a */
    public final Object mo2805a(Object obj, Object obj2) {
        zzgi zzgiVar = (zzgi) obj;
        zzgi zzgiVar2 = (zzgi) obj2;
        zzgi zzgiVar3 = zzgiVar;
        if (!zzgiVar2.isEmpty()) {
            zzgiVar3 = zzgiVar;
            if (!zzgiVar.zzd()) {
                zzgiVar3 = zzgiVar.zzb();
            }
            zzgiVar3.zza(zzgiVar2);
        }
        return zzgiVar3;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: a */
    public final Map<?, ?> mo2806a(Object obj) {
        return (zzgi) obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: b */
    public final C2549dd<?, ?> mo2804b() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: b */
    public final Map<?, ?> mo2803b(Object obj) {
        return (zzgi) obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: c */
    public final boolean mo2802c(Object obj) {
        return !((zzgi) obj).zzd();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: d */
    public final Object mo2801d(Object obj) {
        ((zzgi) obj).zzc();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2550de
    /* renamed from: e */
    public final int mo2800e(Object obj) {
        zzgi zzgiVar = (zzgi) obj;
        if (zzgiVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzgiVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
