package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxl.class */
public final class zzdxl<T> implements zzdxg<Set<T>> {

    /* renamed from: a */
    private static final zzdxg<Set<Object>> f14717a = zzdxf.zzbe(Collections.emptySet());

    /* renamed from: b */
    private final List<zzdxp<T>> f14718b;

    /* renamed from: c */
    private final List<zzdxp<Collection<T>>> f14719c;

    private zzdxl(List<zzdxp<T>> list, List<zzdxp<Collection<T>>> list2) {
        this.f14718b = list;
        this.f14719c = list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdxl(List list, List list2, byte b) {
        this(list, list2);
    }

    public static <T> zzdxn<T> zzar(int i, int i2) {
        return new zzdxn<>(i, i2, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        int size = this.f14718b.size();
        ArrayList arrayList = new ArrayList(this.f14719c.size());
        int size2 = this.f14719c.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.f14719c.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet a = zzdxb.m3296a(size);
        int size3 = this.f14718b.size();
        for (int i2 = 0; i2 < size3; i2++) {
            a.add(zzdxm.checkNotNull(this.f14718b.get(i2).get()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                a.add(zzdxm.checkNotNull(obj));
            }
        }
        return Collections.unmodifiableSet(a);
    }
}
