package com.tmobile.tmoid.helperlib.sit;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary;
import com.tmobile.tmoid.helperlib.sit.internal.SitHelperLibraryImpl;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitHelperLibraryService.class */
public class SitHelperLibraryService extends Service {

    /* renamed from: f */
    private ISitHelperLibrary.Stub f14789f;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.m4648v("TMO-Agent.SitHelperlibService", "SIT_HELPER_LIBRARY_SERVICE onBind() called");
        return this.f14789f;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f14789f = new SitHelperLibraryImpl(this);
        Log.m4648v("TMO-Agent.SitHelperlibService", "SIT_HELPER_LIBRARY service created");
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.m4648v("TMO-Agent.SitHelperlibService", "SIT_HELPER_LIBRARY service destroyed");
        super.onDestroy();
    }
}
