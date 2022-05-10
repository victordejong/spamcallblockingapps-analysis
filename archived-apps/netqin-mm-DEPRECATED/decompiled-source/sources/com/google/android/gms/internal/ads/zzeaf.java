package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelj;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeaf.class */
public abstract class zzeaf<KeyFormatProtoT extends zzelj, KeyT> {

    /* renamed from: a */
    public final Class<KeyFormatProtoT> f27962a;

    public zzeaf(Class<KeyFormatProtoT> cls) {
        this.f27962a = cls;
    }

    /* renamed from: a */
    public abstract KeyFormatProtoT mo12955a(zzeip zzeipVar) throws zzekj;

    /* renamed from: a */
    public final Class<KeyFormatProtoT> m12956a() {
        return this.f27962a;
    }

    /* renamed from: a */
    public abstract void mo12954a(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    /* renamed from: b */
    public abstract KeyT mo12953b(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
}
