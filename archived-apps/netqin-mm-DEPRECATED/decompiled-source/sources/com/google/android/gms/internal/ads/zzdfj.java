package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfj.class */
public final class zzdfj implements zzeoy<zzdfh> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27237a;

    /* renamed from: b */
    public final zzeph<Context> f27238b;

    /* renamed from: c */
    public final zzeph<Set<String>> f27239c;

    public zzdfj(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2, zzeph<Set<String>> zzephVar3) {
        this.f27237a = zzephVar;
        this.f27238b = zzephVar2;
        this.f27239c = zzephVar3;
    }

    /* renamed from: a */
    public static zzdfj m13624a(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2, zzeph<Set<String>> zzephVar3) {
        return new zzdfj(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdfh(this.f27237a.get(), this.f27238b.get(), this.f27239c.get());
    }
}
