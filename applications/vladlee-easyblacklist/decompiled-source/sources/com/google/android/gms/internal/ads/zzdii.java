package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import com.google.android.gms.internal.ads.zzdte;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdii.class */
public abstract class zzdii<KeyProtoT extends zzdte> {

    /* renamed from: a */
    private final Class<KeyProtoT> f14310a;

    /* renamed from: b */
    private final Map<Class<?>, zzdik<?, KeyProtoT>> f14311b;

    /* renamed from: c */
    private final Class<?> f14312c;

    /* JADX INFO: Access modifiers changed from: protected */
    @SafeVarargs
    public zzdii(Class<KeyProtoT> cls, zzdik<?, KeyProtoT>... zzdikVarArr) {
        this.f14310a = cls;
        HashMap hashMap = new HashMap();
        for (zzdik<?, KeyProtoT> zzdikVar : zzdikVarArr) {
            if (hashMap.containsKey(zzdikVar.m3531a())) {
                String valueOf = String.valueOf(zzdikVar.m3531a().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            } else {
                hashMap.put(zzdikVar.m3531a(), zzdikVar);
            }
        }
        this.f14312c = zzdikVarArr.length > 0 ? zzdikVarArr[0].m3531a() : Void.class;
        this.f14311b = Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Class<?> m3534a() {
        return this.f14312c;
    }

    public abstract String getKeyType();

    public final <P> P zza(KeyProtoT keyprotot, Class<P> cls) {
        zzdik<?, KeyProtoT> zzdikVar = this.f14311b.get(cls);
        if (zzdikVar != null) {
            return (P) zzdikVar.zzak(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    public final Class<KeyProtoT> zzasc() {
        return this.f14310a;
    }

    public abstract zzdna.zzb zzasd();

    public final Set<Class<?>> zzase() {
        return this.f14311b.keySet();
    }

    public zzdih<?, KeyProtoT> zzasg() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract void zze(KeyProtoT keyprotot);

    public abstract KeyProtoT zzr(zzdqk zzdqkVar);
}
