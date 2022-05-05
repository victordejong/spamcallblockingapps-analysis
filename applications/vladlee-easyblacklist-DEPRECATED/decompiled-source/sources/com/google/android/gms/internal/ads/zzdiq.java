package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiq.class */
public final class zzdiq<P> {

    /* renamed from: a */
    private static final Charset f14320a = Charset.forName("UTF-8");

    /* renamed from: b */
    private ConcurrentMap<String, List<zzdip<P>>> f14321b = new ConcurrentHashMap();

    /* renamed from: c */
    private zzdip<P> f14322c;

    /* renamed from: d */
    private final Class<P> f14323d;

    private zzdiq(Class<P> cls) {
        this.f14323d = cls;
    }

    public static <P> zzdiq<P> zza(Class<P> cls) {
        return new zzdiq<>(cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzdip<P> zza(P r8, com.google.android.gms.internal.ads.zzdnk.zza r9) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdiq.zza(java.lang.Object, com.google.android.gms.internal.ads.zzdnk$zza):com.google.android.gms.internal.ads.zzdip");
    }

    public final void zza(zzdip<P> zzdipVar) {
        if (zzdipVar == null) {
            throw new IllegalArgumentException("the primary entry must be non-null");
        } else if (zzdipVar.zzasj() == zzdne.ENABLED) {
            List<zzdip<P>> list = this.f14321b.get(new String(zzdipVar.zzasl(), f14320a));
            if (list == null) {
                list = Collections.emptyList();
            }
            if (!list.isEmpty()) {
                this.f14322c = zzdipVar;
                return;
            }
            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
        } else {
            throw new IllegalArgumentException("the primary entry has to be ENABLED");
        }
    }

    public final Class<P> zzarz() {
        return this.f14323d;
    }

    public final zzdip<P> zzasm() {
        return this.f14322c;
    }
}
