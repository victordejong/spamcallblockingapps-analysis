package com.netqin.p525cm.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: com.netqin.cm.service.InterstitialLoadService */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/service/InterstitialLoadService.class */
public class InterstitialLoadService extends Service {

    /* renamed from: a */
    public Messenger f35673a;

    /* renamed from: com.netqin.cm.service.InterstitialLoadService$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/service/InterstitialLoadService$a.class */
    public static class HandlerC9161a extends Handler {
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (C6793d.m19782d()) {
                super.handleMessage(message);
                return;
            }
            int i = message.what;
            if (i != 0 && i != 1) {
                super.handleMessage(message);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f35673a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C6850i.m19579a("InterstitialLoadService", "InterstitialLoadService onCreate");
        this.f35673a = new Messenger(new HandlerC9161a());
    }
}
