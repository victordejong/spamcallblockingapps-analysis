package com.netqin.p525cm.service;

import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.JobIntentService;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p131c.p431l.p432a.p442b.p445c.C6726a;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: com.netqin.cm.service.MainService */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/service/MainService.class */
public class MainService extends JobIntentService {

    /* renamed from: i */
    public C6726a f35674i;

    /* renamed from: a */
    public static void m3260a(String str) {
        m3259a(str, null);
    }

    /* renamed from: a */
    public static void m3259a(String str, Bundle bundle) {
        Intent intent = new Intent(str);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        m3258b(intent);
    }

    /* renamed from: b */
    public static void m3258b(Intent intent) {
        if (NqApplication.m3303b() != null) {
            JobIntentService.m38604a(NqApplication.m3303b(), MainService.class, 1000, intent);
        }
    }

    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public void mo3261a(Intent intent) {
        C6726a aVar;
        if (intent.getAction() != null) {
            String action = intent.getAction();
            C6850i.m19579a("MainService", "onStartCommand: " + action);
            char c = 65535;
            int hashCode = action.hashCode();
            if (hashCode != -1938675456) {
                if (hashCode != 30591513) {
                    if (hashCode == 30602830 && action.equals("COMMAND_ANTIHARASS_OFF")) {
                        c = 2;
                    }
                } else if (action.equals("COMMAND_ANTIHARASS_CMD")) {
                    c = 1;
                }
            } else if (action.equals("COMMAND_ANTIHARASS_ON")) {
                c = 0;
            }
            if (c != 0) {
                if (c == 1) {
                    if (this.f35674i == null) {
                        this.f35674i = new C6726a(this);
                    }
                    this.f35674i.m19979a(this, intent);
                } else if (c == 2 && (aVar = this.f35674i) != null) {
                    aVar.m19980a();
                    this.f35674i = null;
                }
            } else if (this.f35674i == null) {
                this.f35674i = new C6726a(this);
            }
        }
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f35674i = new C6726a(getApplicationContext());
        C6850i.m19579a("MainService", "onCreate()");
    }
}
