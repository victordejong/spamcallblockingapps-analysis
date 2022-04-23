package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.dj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dj.class */
public final class CallableC1818dj implements Callable<zzaqt> {

    /* renamed from: a */
    private final /* synthetic */ Context f8386a;

    /* renamed from: b */
    private final /* synthetic */ zzaqv f8387b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC1818dj(zzaqv zzaqvVar, Context context) {
        this.f8387b = zzaqvVar;
        this.f8386a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzaqt call() {
        WeakHashMap weakHashMap;
        zzaqt zzaqtVar;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f8387b.f11319a;
        C1819dk dkVar = (C1819dk) weakHashMap.get(this.f8386a);
        if (dkVar != null) {
            if (!(dkVar.f8388a + zzaau.zzcsu.get().longValue() < zzq.zzkx().currentTimeMillis())) {
                zzaqtVar = new zzaqs(this.f8386a, dkVar.f8389b).zzug();
                weakHashMap2 = this.f8387b.f11319a;
                weakHashMap2.put(this.f8386a, new C1819dk(zzaqtVar));
                return zzaqtVar;
            }
        }
        zzaqtVar = new zzaqs(this.f8386a).zzug();
        weakHashMap2 = this.f8387b.f11319a;
        weakHashMap2.put(this.f8386a, new C1819dk(zzaqtVar));
        return zzaqtVar;
    }
}
