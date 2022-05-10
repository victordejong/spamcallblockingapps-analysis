package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.qg0;
import p131c.p161d.p170b.p224d.p252g.p253a.sg0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztx.class */
public final class zztx {
    @VisibleForTesting

    /* renamed from: a */
    public zzgx f28984a;
    @VisibleForTesting

    /* renamed from: b */
    public boolean f28985b;

    public zztx() {
    }

    public zztx(Context context) {
        zzabb.m16916a(context);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23865o2)).booleanValue()) {
            try {
                this.f28984a = (zzgx) zzbbt.m15847a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", sg0.f15305a);
                ObjectWrapper.m17020a(context);
                this.f28984a.mo12072b(ObjectWrapper.m17020a(context), "GMA_SDK");
                this.f28985b = true;
            } catch (RemoteException | zzbbv | NullPointerException e) {
                zzbbq.m15858a("Cannot dynamite load clearcut");
            }
        }
    }

    public zztx(Context context, String str, String str2) {
        zzabb.m16916a(context);
        try {
            this.f28984a = (zzgx) zzbbt.m15847a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", qg0.f14819a);
            ObjectWrapper.m17020a(context);
            this.f28984a.mo12075a(ObjectWrapper.m17020a(context), str, null);
            this.f28985b = true;
        } catch (RemoteException | zzbbv | NullPointerException e) {
            zzbbq.m15858a("Cannot dynamite load clearcut");
        }
    }

    /* renamed from: a */
    public final zzub m11418a(byte[] bArr) {
        return new zzub(this, bArr);
    }
}
