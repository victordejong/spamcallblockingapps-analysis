package com.library.p518ad;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p131c.p396i.p397a.C6490b;
/* renamed from: com.library.ad.AdCheckExitService */
/* loaded from: classes2-dex2jar.jar:com/library/ad/AdCheckExitService.class */
public class AdCheckExitService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str = this + " 开启监听退出Service";
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        String str = this + " 退出程序";
        C6490b.m20685n();
    }
}
