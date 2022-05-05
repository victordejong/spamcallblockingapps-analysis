package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/DatabaseUpdateService.class */
public class DatabaseUpdateService extends IntentService {
    public DatabaseUpdateService() {
        super("DatabaseUpdateService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        C3318by.m161m(this);
        stopService(new Intent(this, BlockService.class));
        BlockService.m367a(this);
    }
}
