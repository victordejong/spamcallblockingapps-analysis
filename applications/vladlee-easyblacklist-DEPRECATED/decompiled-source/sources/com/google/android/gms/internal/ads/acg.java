package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acg.class */
public final class acg<V> extends ace<V, List<V>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public acg(zzdet<? extends zzdhe<? extends V>> zzdetVar) {
        super(zzdetVar);
        m5478h();
    }

    @Override // com.google.android.gms.internal.ads.ace
    /* renamed from: a */
    public final /* synthetic */ Object mo5464a(List list) {
        ArrayList zzdz = zzdfc.zzdz(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzdej zzdejVar = (zzdej) it.next();
            zzdz.add(zzdejVar != null ? zzdejVar.zzaqt() : null);
        }
        return Collections.unmodifiableList(zzdz);
    }
}
