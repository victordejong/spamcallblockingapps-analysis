package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzeg;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcop.class */
public final class zzcop implements zzeoy<zzdzc<String>> {

    /* renamed from: a */
    public final zzeph<zzeg> f26348a;

    /* renamed from: b */
    public final zzeph<Context> f26349b;

    /* renamed from: c */
    public final zzeph<zzdzb> f26350c;

    public zzcop(zzeph<zzeg> zzephVar, zzeph<Context> zzephVar2, zzeph<zzdzb> zzephVar3) {
        this.f26348a = zzephVar;
        this.f26349b = zzephVar2;
        this.f26350c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcop m13971a(zzeph<zzeg> zzephVar, zzeph<Context> zzephVar2, zzeph<zzdzb> zzephVar3) {
        return new zzcop(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        final zzeg zzegVar = this.f26348a.get();
        final Context context = this.f26349b.get();
        zzdzc a = this.f26350c.get().mo12977a(new Callable(zzegVar, context) { // from class: c.d.b.d.g.a.yl

            /* renamed from: a */
            public final zzeg f16227a;

            /* renamed from: b */
            public final Context f16228b;

            {
                this.f16227a = zzegVar;
                this.f16228b = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeg zzegVar2 = this.f16227a;
                return zzegVar2.m12604a().mo13024a(this.f16228b);
            }
        });
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
