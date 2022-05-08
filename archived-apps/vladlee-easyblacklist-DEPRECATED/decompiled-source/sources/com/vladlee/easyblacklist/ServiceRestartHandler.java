package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ServiceRestartHandler.class */
public class ServiceRestartHandler extends IntentService {
    public ServiceRestartHandler() {
        super("ServiceRestartHandler");
    }

    /* renamed from: a */
    public static void m294a(Context context) {
        context.stopService(new Intent(context, BlockService.class));
        BlockService.m367a(context);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        m294a(this);
    }
}
