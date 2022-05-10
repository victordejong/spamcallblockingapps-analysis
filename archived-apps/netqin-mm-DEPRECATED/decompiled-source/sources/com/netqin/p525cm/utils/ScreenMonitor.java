package com.netqin.p525cm.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import com.netqin.p525cm.main.p529ui.NqApplication;
/* renamed from: com.netqin.cm.utils.ScreenMonitor */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/ScreenMonitor.class */
public class ScreenMonitor extends BroadcastReceiver {

    /* renamed from: a */
    public AbstractC9191a f35745a;

    /* renamed from: com.netqin.cm.utils.ScreenMonitor$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/ScreenMonitor$a.class */
    public interface AbstractC9191a {
        /* renamed from: a */
        void mo3180a();

        /* renamed from: a */
        void mo3179a(boolean z);

        /* renamed from: b */
        void mo3178b();
    }

    /* renamed from: a */
    public final void m3183a() {
        if (m3181b()) {
            AbstractC9191a aVar = this.f35745a;
            if (aVar != null) {
                aVar.mo3179a(true);
                return;
            }
            return;
        }
        AbstractC9191a aVar2 = this.f35745a;
        if (aVar2 != null) {
            aVar2.mo3180a();
        }
    }

    /* renamed from: a */
    public void m3182a(Context context, AbstractC9191a aVar) {
        this.f35745a = aVar;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        context.registerReceiver(this, intentFilter);
        m3183a();
    }

    /* renamed from: b */
    public final boolean m3181b() {
        PowerManager powerManager = (PowerManager) NqApplication.m3303b().getSystemService("power");
        return Build.VERSION.SDK_INT >= 20 ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SCREEN_ON".equals(action)) {
            this.f35745a.mo3179a(false);
        } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
            this.f35745a.mo3180a();
        } else if ("android.intent.action.USER_PRESENT".equals(action)) {
            this.f35745a.mo3178b();
        }
    }
}
