package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.dm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dm.class */
final /* synthetic */ class C1821dm implements zzayw {

    /* renamed from: a */
    static final zzayw f8391a = new C1821dm();

    private C1821dm() {
    }

    @Override // com.google.android.gms.internal.ads.zzayw
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return queryLocalInterface instanceof zzasm ? (zzasm) queryLocalInterface : new zzasp(iBinder);
    }
}
