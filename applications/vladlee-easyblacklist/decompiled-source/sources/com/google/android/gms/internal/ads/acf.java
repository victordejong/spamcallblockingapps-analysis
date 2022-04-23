package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.acb;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acf.class */
public final class acf<V> extends acb<Object, V> {

    /* renamed from: a */
    private ach<?> f7213a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acf(zzdet<? extends zzdhe<?>> zzdetVar, boolean z, Executor executor, Callable<V> callable) {
        super(zzdetVar, z, false);
        this.f7213a = new aci(this, callable, executor);
        m5478h();
    }

    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: a */
    final void mo5468a(int i, @NullableDecl Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: a */
    public final void mo5467a(acb.EnumC1718a aVar) {
        super.mo5467a(aVar);
        if (aVar == acb.EnumC1718a.OUTPUT_FUTURE_DONE) {
            this.f7213a = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: c */
    protected final void mo3561c() {
        ach<?> achVar = this.f7213a;
        if (achVar != null) {
            achVar.m5461e();
        }
    }

    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: i */
    final void mo5465i() {
        ach<?> achVar = this.f7213a;
        if (achVar != null) {
            achVar.m5463b();
        }
    }
}
