package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiy.class */
public final class zzbiy {

    /* renamed from: a */
    private final String f11944a;

    /* renamed from: b */
    private final zzakh f11945b;

    /* renamed from: c */
    private final Executor f11946c;

    /* renamed from: d */
    private zzbjd f11947d;

    /* renamed from: e */
    private final zzafn<Object> f11948e = new C2017kt(this);

    /* renamed from: f */
    private final zzafn<Object> f11949f = new C2018ku(this);

    public zzbiy(String str, zzakh zzakhVar, Executor executor) {
        this.f11944a = str;
        this.f11945b = zzakhVar;
        this.f11946c = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m4043a(zzbiy zzbiyVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(zzbiyVar.f11944a);
    }

    public final void zza(zzbjd zzbjdVar) {
        this.f11945b.zzc("/updateActiveView", this.f11948e);
        this.f11945b.zzc("/untrackActiveViewUnit", this.f11949f);
        this.f11947d = zzbjdVar;
    }

    public final void zzafm() {
        this.f11945b.zzd("/updateActiveView", this.f11948e);
        this.f11945b.zzd("/untrackActiveViewUnit", this.f11949f);
    }

    public final void zzd(zzbdi zzbdiVar) {
        zzbdiVar.zza("/updateActiveView", this.f11948e);
        zzbdiVar.zza("/untrackActiveViewUnit", this.f11949f);
    }

    public final void zze(zzbdi zzbdiVar) {
        zzbdiVar.zzb("/updateActiveView", this.f11948e);
        zzbdiVar.zzb("/untrackActiveViewUnit", this.f11949f);
    }
}
