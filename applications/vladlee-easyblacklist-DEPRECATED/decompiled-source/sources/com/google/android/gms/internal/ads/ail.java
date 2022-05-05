package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ail.class */
final class ail extends aij {

    /* renamed from: a */
    private static final Class<?> f7422a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private ail() {
        super((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ail(byte b) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <L> List<L> m5319a(Object obj, long j, int i) {
        zzdsm zzdsmVar;
        ArrayList zzfd;
        zzdsm zzdsmVar2;
        List<L> c = m5316c(obj, j);
        if (c.isEmpty()) {
            zzfd = c instanceof zzdsl ? new zzdsm(i) : (!(c instanceof aje) || !(c instanceof zzdsb)) ? new ArrayList(i) : ((zzdsb) c).zzfd(i);
        } else {
            if (f7422a.isAssignableFrom(c.getClass())) {
                ArrayList arrayList = new ArrayList(c.size() + i);
                arrayList.addAll(c);
                zzdsmVar2 = arrayList;
            } else if (c instanceof zzdut) {
                zzdsm zzdsmVar3 = new zzdsm(c.size() + i);
                zzdsmVar3.addAll((zzdut) c);
                zzdsmVar2 = zzdsmVar3;
            } else {
                zzdsmVar = c;
                if (c instanceof aje) {
                    zzdsmVar = c;
                    if (c instanceof zzdsb) {
                        zzdsb zzdsbVar = (zzdsb) c;
                        zzdsmVar = c;
                        if (!zzdsbVar.zzaxp()) {
                            zzfd = zzdsbVar.zzfd(c.size() + i);
                        }
                    }
                }
                return zzdsmVar;
            }
            akj.m5061a(obj, j, zzdsmVar2);
            zzdsmVar = zzdsmVar2;
            return zzdsmVar;
        }
        akj.m5061a(obj, j, zzfd);
        zzdsmVar = zzfd;
        return zzdsmVar;
    }

    /* renamed from: c */
    private static <E> List<E> m5316c(Object obj, long j) {
        return (List) akj.m5038f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.aij
    /* renamed from: a */
    final <L> List<L> mo5320a(Object obj, long j) {
        return m5319a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.aij
    /* renamed from: a */
    final <E> void mo5318a(Object obj, Object obj2, long j) {
        List c = m5316c(obj2, j);
        List a = m5319a(obj, j, c.size());
        int size = a.size();
        int size2 = c.size();
        if (size > 0 && size2 > 0) {
            a.addAll(c);
        }
        if (size > 0) {
            c = a;
        }
        akj.m5061a(obj, j, c);
    }

    @Override // com.google.android.gms.internal.ads.aij
    /* renamed from: b */
    final void mo5317b(Object obj, long j) {
        Object obj2;
        List list = (List) akj.m5038f(obj, j);
        if (list instanceof zzdsl) {
            obj2 = ((zzdsl) list).zzbaw();
        } else if (!f7422a.isAssignableFrom(list.getClass())) {
            if (!(list instanceof aje) || !(list instanceof zzdsb)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzdsb zzdsbVar = (zzdsb) list;
                if (zzdsbVar.zzaxp()) {
                    zzdsbVar.zzaxq();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        akj.m5061a(obj, j, obj2);
    }
}
