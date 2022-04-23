package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbo;
import com.google.android.gms.internal.ads.zzbs;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdr.class */
public final class zzdr extends zzdi {
    private zzdr(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzdr zza(String str, Context context, boolean z) {
        m3541a(context, z);
        return new zzdr(context, str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdi
    /* renamed from: a */
    public final List<Callable<Void>> mo3392a(zzei zzeiVar, Context context, zzbs.zza.zzb zzbVar, zzbo.zza zzaVar) {
        if (zzeiVar.zzbx() == null || !this.f14305a) {
            return super.mo3392a(zzeiVar, context, zzbVar, zzaVar);
        }
        int zzbr = zzeiVar.zzbr();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.mo3392a(zzeiVar, context, zzbVar, zzaVar));
        arrayList.add(new zzfe(zzeiVar, "/Mc2CnEeRQtKVC/fPg/SyzEdyC3gZRl7Pq4ep+r3/uKWbAMRLI7OunrDNLnYZuDh", "6mFBYTN64dqZuFHXRYjKBuCFVskXKkuG5eXtMJOzijI=", zzbVar, zzbr, 24));
        return arrayList;
    }
}
