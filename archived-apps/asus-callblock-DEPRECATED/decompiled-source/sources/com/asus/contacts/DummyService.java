package com.asus.contacts;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/DummyService.class */
public class DummyService extends Service {

    /* renamed from: a  reason: collision with root package name */
    final Messenger f2574a = new Messenger(new a());

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/DummyService$a.class */
    final class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.i("DummyService", "onBind");
        return this.f2574a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.i("DummyService", "onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.i("DummyService", "onDestroy");
    }
}
