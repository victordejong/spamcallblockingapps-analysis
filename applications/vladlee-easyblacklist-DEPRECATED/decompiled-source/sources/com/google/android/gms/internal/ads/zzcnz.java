package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnz.class */
public final class zzcnz {

    /* renamed from: a */
    private final ConcurrentHashMap<String, zzani> f13427a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private final zzcka f13428b;

    public zzcnz(zzcka zzckaVar) {
        this.f13428b = zzckaVar;
    }

    public final void zzgg(String str) {
        try {
            this.f13427a.put(str, this.f13428b.zzdi(str));
        } catch (RemoteException e) {
            zzavs.zzc("Couldn't create RTB adapter : ", e);
        }
    }

    @CheckForNull
    public final zzani zzgh(String str) {
        if (this.f13427a.containsKey(str)) {
            return this.f13427a.get(str);
        }
        return null;
    }
}
