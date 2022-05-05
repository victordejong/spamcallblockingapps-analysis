package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.cy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cy.class */
final class C2543cy extends AbstractC2541cw {

    /* renamed from: a */
    private static final Class<?> f15959a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private C2543cy() {
        super((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2543cy(byte b) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <L> List<L> m2819a(Object obj, long j, int i) {
        zzfw zzfwVar;
        ArrayList zza;
        zzfw zzfwVar2;
        List<L> c = m2816c(obj, j);
        if (c.isEmpty()) {
            zza = c instanceof zzfv ? new zzfw(i) : (!(c instanceof AbstractC2563dr) || !(c instanceof zzfl)) ? new ArrayList(i) : ((zzfl) c).zza(i);
        } else {
            if (f15959a.isAssignableFrom(c.getClass())) {
                ArrayList arrayList = new ArrayList(c.size() + i);
                arrayList.addAll(c);
                zzfwVar2 = arrayList;
            } else if (c instanceof zzia) {
                zzfw zzfwVar3 = new zzfw(c.size() + i);
                zzfwVar3.addAll((zzia) c);
                zzfwVar2 = zzfwVar3;
            } else {
                zzfwVar = c;
                if (c instanceof AbstractC2563dr) {
                    zzfwVar = c;
                    if (c instanceof zzfl) {
                        zzfl zzflVar = (zzfl) c;
                        zzfwVar = c;
                        if (!zzflVar.zza()) {
                            zza = zzflVar.zza(c.size() + i);
                        }
                    }
                }
                return zzfwVar;
            }
            C2588ep.m2576a(obj, j, zzfwVar2);
            zzfwVar = zzfwVar2;
            return zzfwVar;
        }
        C2588ep.m2576a(obj, j, zza);
        zzfwVar = zza;
        return zzfwVar;
    }

    /* renamed from: c */
    private static <E> List<E> m2816c(Object obj, long j) {
        return (List) C2588ep.m2555f(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2541cw
    /* renamed from: a */
    final <L> List<L> mo2820a(Object obj, long j) {
        return m2819a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2541cw
    /* renamed from: a */
    final <E> void mo2818a(Object obj, Object obj2, long j) {
        List c = m2816c(obj2, j);
        List a = m2819a(obj, j, c.size());
        int size = a.size();
        int size2 = c.size();
        if (size > 0 && size2 > 0) {
            a.addAll(c);
        }
        if (size > 0) {
            c = a;
        }
        C2588ep.m2576a(obj, j, c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2541cw
    /* renamed from: b */
    final void mo2817b(Object obj, long j) {
        Object obj2;
        List list = (List) C2588ep.m2555f(obj, j);
        if (list instanceof zzfv) {
            obj2 = ((zzfv) list).mo2242g_();
        } else if (!f15959a.isAssignableFrom(list.getClass())) {
            if (!(list instanceof AbstractC2563dr) || !(list instanceof zzfl)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzfl zzflVar = (zzfl) list;
                if (zzflVar.zza()) {
                    zzflVar.mo2268h_();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        C2588ep.m2576a(obj, j, obj2);
    }
}
