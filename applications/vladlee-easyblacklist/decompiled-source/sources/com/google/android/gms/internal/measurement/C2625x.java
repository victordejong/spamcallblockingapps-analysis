package com.google.android.gms.internal.measurement;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzgz;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x.class */
public final class C2625x extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzgz f16120c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16121d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2625x(zzx zzxVar, zzgz zzgzVar) {
        super(zzxVar);
        this.f16121d = zzxVar;
        this.f16120c = zzgzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        List list;
        Pair pair;
        zzm zzmVar;
        List list2;
        String str;
        List list3;
        List list4;
        int i = 0;
        while (true) {
            list = this.f16121d.f16523f;
            if (i >= list.size()) {
                pair = null;
                break;
            }
            zzgz zzgzVar = this.f16120c;
            list3 = this.f16121d.f16523f;
            if (zzgzVar.equals(((Pair) list3.get(i)).first)) {
                list4 = this.f16121d.f16523f;
                pair = (Pair) list4.get(i);
                break;
            }
            i++;
        }
        if (pair == null) {
            str = this.f16121d.f16520c;
            Log.w(str, "OnEventListener had not been registered.");
            return;
        }
        zzmVar = this.f16121d.f16527r;
        zzmVar.unregisterOnMeasurementEventListener((zzs) pair.second);
        list2 = this.f16121d.f16523f;
        list2.remove(pair);
    }
}
