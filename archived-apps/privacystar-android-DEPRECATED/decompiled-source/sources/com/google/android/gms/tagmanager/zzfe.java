package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzry;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfe.class */
public final class zzfe implements zzfg {
    private final /* synthetic */ Map zzbfb;
    private final /* synthetic */ Map zzbfc;
    private final /* synthetic */ Map zzbfd;
    private final /* synthetic */ Map zzbfe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfe(zzfb zzfbVar, Map map, Map map2, Map map3, Map map4) {
        this.zzbfb = map;
        this.zzbfc = map2;
        this.zzbfd = map3;
        this.zzbfe = map4;
    }

    @Override // com.google.android.gms.tagmanager.zzfg
    public final void zza(zzry zzryVar, Set<zzru> set, Set<zzru> set2, zzeq zzeqVar) {
        List list = (List) this.zzbfb.get(zzryVar);
        this.zzbfc.get(zzryVar);
        if (list != null) {
            set.addAll(list);
            zzeqVar.zzos();
        }
        List list2 = (List) this.zzbfd.get(zzryVar);
        this.zzbfe.get(zzryVar);
        if (list2 != null) {
            set2.addAll(list2);
            zzeqVar.zzot();
        }
    }
}
