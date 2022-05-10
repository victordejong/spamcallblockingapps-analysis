package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.dg0;
import p131c.p161d.p170b.p224d.p252g.p253a.nh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzt.class */
public final class zzt implements zzak {

    /* renamed from: a */
    public final Executor f28968a;

    public zzt(Handler handler) {
        this.f28968a = new dg0(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.zzak
    /* renamed from: a */
    public final void mo11443a(zzaa<?> zzaaVar, zzaj<?> zzajVar) {
        mo11442a(zzaaVar, zzajVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzak
    /* renamed from: a */
    public final void mo11442a(zzaa<?> zzaaVar, zzaj<?> zzajVar, Runnable runnable) {
        zzaaVar.m16952o();
        zzaaVar.m16964a("post-response");
        this.f28968a.execute(new nh0(zzaaVar, zzajVar, runnable));
    }

    @Override // com.google.android.gms.internal.ads.zzak
    /* renamed from: a */
    public final void mo11441a(zzaa<?> zzaaVar, zzao zzaoVar) {
        zzaaVar.m16964a("post-error");
        this.f28968a.execute(new nh0(zzaaVar, zzaj.m16731a(zzaoVar), null));
    }
}
