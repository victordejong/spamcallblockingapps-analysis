package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tagmanager.zzgj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrx.class */
public final class zzrx {
    private String version;
    private final List<zzry> zzbol;
    private final Map<String, List<zzru>> zzbom;
    private int zzph;

    private zzrx() {
        this.zzbol = new ArrayList();
        this.zzbom = new HashMap();
        this.version = "";
        this.zzph = 0;
    }

    public final zzrx zzag(int i) {
        this.zzph = i;
        return this;
    }

    public final zzrx zzb(zzry zzryVar) {
        this.zzbol.add(zzryVar);
        return this;
    }

    public final zzrx zzc(zzru zzruVar) {
        String zzc = zzgj.zzc(zzruVar.zzry().get(zzb.INSTANCE_NAME.toString()));
        List<zzru> list = this.zzbom.get(zzc);
        List<zzru> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.zzbom.put(zzc, list2);
        }
        list2.add(zzruVar);
        return this;
    }

    public final zzrx zzfe(String str) {
        this.version = str;
        return this;
    }

    public final zzrw zzst() {
        return new zzrw(this.zzbol, this.zzbom, this.version, this.zzph);
    }
}
