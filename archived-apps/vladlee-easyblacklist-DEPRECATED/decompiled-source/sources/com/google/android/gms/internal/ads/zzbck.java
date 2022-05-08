package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbck.class */
public final class zzbck implements Iterable<zzbci> {

    /* renamed from: a */
    private final List<zzbci> f11711a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzbci m4131a(zzbaz zzbazVar) {
        Iterator<zzbci> it = zzq.zzlm().iterator();
        while (it.hasNext()) {
            zzbci next = it.next();
            if (next.f11707a == zzbazVar) {
                return next;
            }
        }
        return null;
    }

    public static boolean zzc(zzbaz zzbazVar) {
        zzbci a = m4131a(zzbazVar);
        if (a == null) {
            return false;
        }
        a.f11708b.abort();
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzbci> iterator() {
        return this.f11711a.iterator();
    }

    public final void zza(zzbci zzbciVar) {
        this.f11711a.add(zzbciVar);
    }

    public final void zzb(zzbci zzbciVar) {
        this.f11711a.remove(zzbciVar);
    }
}
