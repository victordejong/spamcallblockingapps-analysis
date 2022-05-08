package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abn.class */
final class abn<K> extends zzdfb<K> {

    /* renamed from: a */
    private final transient zzdey<K, ?> f7174a;

    /* renamed from: b */
    private final transient zzdeu<K> f7175b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abn(zzdey<K, ?> zzdeyVar, zzdeu<K> zzdeuVar) {
        this.f7174a = zzdeyVar;
        this.f7175b = zzdeuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final int mo3592a(Object[] objArr, int i) {
        return zzarb().mo3592a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        return this.f7174a.get(obj) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f7174a.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final zzdfp<K> zzaqx() {
        return (zzdfp) zzarb().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, com.google.android.gms.internal.ads.zzdet
    public final zzdeu<K> zzarb() {
        return this.f7175b;
    }
}
