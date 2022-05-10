package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagi.class */
public final class zzagi extends RemoteCreator<zzaej> {
    @VisibleForTesting
    public zzagi() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* renamed from: a */
    public final zzaei m16780a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder a = m17019a(context).mo16830a(ObjectWrapper.m17020a(context), ObjectWrapper.m17020a(frameLayout), ObjectWrapper.m17020a(frameLayout2), 202510000);
            if (a == null) {
                return null;
            }
            IInterface queryLocalInterface = a.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof zzaei ? (zzaei) queryLocalInterface : new zzaek(a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzbbq.m15853c("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zzaej mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof zzaej ? (zzaej) queryLocalInterface : new zzaem(iBinder);
    }
}
