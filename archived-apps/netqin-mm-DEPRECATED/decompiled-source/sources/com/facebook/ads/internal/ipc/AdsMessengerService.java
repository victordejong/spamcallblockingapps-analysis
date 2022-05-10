package com.facebook.ads.internal.ipc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.AdsMessengerServiceApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/ipc/AdsMessengerService.class */
public class AdsMessengerService extends Service {
    public AdsMessengerServiceApi mAdsMessengerServiceApi;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mAdsMessengerServiceApi.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        AdsMessengerServiceApi createAdsMessengerServiceApi = DynamicLoaderFactory.makeLoader(this, false).createAdsMessengerServiceApi(this);
        this.mAdsMessengerServiceApi = createAdsMessengerServiceApi;
        createAdsMessengerServiceApi.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mAdsMessengerServiceApi.onDestroy();
    }
}
