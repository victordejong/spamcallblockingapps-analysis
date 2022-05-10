package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import com.google.android.gms.internal.ads.zzelj;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeag.class */
public abstract class zzeag<KeyProtoT extends zzelj> {

    /* renamed from: a */
    public final Class<KeyProtoT> f27963a;

    /* renamed from: b */
    public final Map<Class<?>, zzeai<?, KeyProtoT>> f27964b;

    /* renamed from: c */
    public final Class<?> f27965c;

    @SafeVarargs
    public zzeag(Class<KeyProtoT> cls, zzeai<?, KeyProtoT>... zzeaiVarArr) {
        this.f27963a = cls;
        HashMap hashMap = new HashMap();
        for (zzeai<?, KeyProtoT> zzeaiVar : zzeaiVarArr) {
            if (hashMap.containsKey(zzeaiVar.m12946a())) {
                String valueOf = String.valueOf(zzeaiVar.m12946a().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            } else {
                hashMap.put(zzeaiVar.m12946a(), zzeaiVar);
            }
        }
        if (zzeaiVarArr.length > 0) {
            this.f27965c = zzeaiVarArr[0].m12946a();
        } else {
            this.f27965c = Void.class;
        }
        this.f27964b = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public abstract KeyProtoT mo12895a(zzeip zzeipVar) throws zzekj;

    /* renamed from: a */
    public final <P> P m12952a(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        zzeai<?, KeyProtoT> zzeaiVar = this.f27964b.get(cls);
        if (zzeaiVar != null) {
            return (P) zzeaiVar.mo12945a(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public abstract String mo12897a();

    /* renamed from: a */
    public abstract void mo12894a(KeyProtoT keyprotot) throws GeneralSecurityException;

    /* renamed from: b */
    public final Class<KeyProtoT> m12951b() {
        return this.f27963a;
    }

    /* renamed from: c */
    public abstract zzefb.zza mo12892c();

    /* renamed from: d */
    public final Set<Class<?>> m12950d() {
        return this.f27964b.keySet();
    }

    /* renamed from: e */
    public final Class<?> m12949e() {
        return this.f27965c;
    }

    /* renamed from: f */
    public zzeaf<?, KeyProtoT> mo12891f() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }
}
