package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakc.class */
public final class zzakc {

    /* renamed from: a */
    private static final zzaxh<zzaif> f10965a = new C1764bj();

    /* renamed from: b */
    private static final zzaxh<zzaif> f10966b = new C1765bk();

    /* renamed from: c */
    private final zzais f10967c;

    public zzakc(Context context, zzazb zzazbVar, String str) {
        this.f10967c = new zzais(context, zzazbVar, str, f10965a, f10966b);
    }

    public final <I, O> zzaju<I, O> zza(String str, zzajv<I> zzajvVar, zzajw<O> zzajwVar) {
        return new zzakd(this.f10967c, str, zzajvVar, zzajwVar);
    }

    public final zzakh zzsh() {
        return new zzakh(this.f10967c);
    }
}
