package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.acb;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ace.class */
public abstract class ace<V, C> extends acb<V, C> {

    /* renamed from: a */
    private List<zzdej<V>> f7212a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ace(zzdet<? extends zzdhe<? extends V>> zzdetVar) {
        super(zzdetVar, true, true);
        this.f7212a = zzdetVar.isEmpty() ? zzdeu.zzard() : zzdfc.zzdz(zzdetVar.size());
        for (int i = 0; i < zzdetVar.size(); i++) {
            this.f7212a.add(null);
        }
    }

    /* renamed from: a */
    abstract C mo5464a(List<zzdej<V>> list);

    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: a */
    final void mo5468a(int i, @NullableDecl V v) {
        List<zzdej<V>> list = this.f7212a;
        if (list != null) {
            list.set(i, zzdej.zzab(v));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: a */
    public final void mo5467a(acb.EnumC1718a aVar) {
        super.mo5467a(aVar);
        this.f7212a = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: i */
    final void mo5465i() {
        List<zzdej<V>> list = this.f7212a;
        if (list != null) {
            set(mo5464a((List) list));
        }
    }
}
