package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzanc;
import com.google.android.gms.internal.ads.zzaqp;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwm;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdService.class */
public class AdService extends IntentService {

    /* renamed from: a */
    public final zzaqp f22647a = zzwm.m11169b().m11184a(this, new zzanc());

    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        try {
            this.f22647a.mo13869b(intent);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
            sb.append("RemoteException calling handleNotificationIntent: ");
            sb.append(valueOf);
            zzbbq.m15856b(sb.toString());
        }
    }
}
